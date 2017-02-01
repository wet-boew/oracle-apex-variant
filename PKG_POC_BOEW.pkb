CREATE OR REPLACE PACKAGE BODY PKG_POC_BOEW
IS

  	
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- 01 -- Corps des objets pour l'ensemble de l'application
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
	

-----------
-- 01.01 --	FUNCTION F_TABLE_MENU
-----------

FUNCTION F_TABLE_MENU
RETURN MENU_TAB PIPELINED
AS
	V_TABLE_MENU			MENU_TAB ;
BEGIN
	-- Sélectionner le menu demandé
	 SELECT nom_catgr,
		f_tradc(nom_menu_fra, nom_menu_eng) NOM_MENU,
		f_tradc(nom_lien_fra, nom_lien_eng) NOM_LIEN,
		ide_boew_menu,
		ide_boew_menu_parnt,
		nom_id,
		seq_affch			
	   BULK COLLECT INTO v_table_menu
	   FROM poc_boew_menu ;
		  
	-- Retourner sous forme de table
	FOR i IN 1 .. v_table_menu.COUNT
	LOOP
		PIPE ROW (v_table_menu(i)) ;
	END LOOP ;   

	RETURN ;
		
END F_TABLE_MENU ;
	
-----------
-- 01.02 --	FUNCTION F_OBTNR_SQL_MENU
-----------

FUNCTION F_OBTNR_SQL_MENU
(
    P_NOM_CATGR 			IN POC_BOEW_MENU.NOM_CATGR%TYPE
) 
RETURN VARCHAR2
IS
BEGIN
        RETURN ' SELECT LEVEL, 
			nom_menu LABEL, 
			nom_lien TARGET
			NULL IS_CURRENT_LIST_ENTRY,
			NULL IMAGE,
			NULL IMAGE_ATTRIBUTE,
			NULL IMAGE_ALT_ATTRIBUTE,
			nom_id ATTRIBUTE1,
			pkg_poc_boew.f_tradc(''en'', ''fr'') ATTRIBUTE2
		   FROM TABLE(pkg_poc_boew.f_table_menu)
		  WHERE nom_catgr = ''' || p_nom_catgr || '''
		  START WITH ide_boew_menu_parnt IS NULL
		CONNECT BY PRIOR ide_boew_menu = ide_boew_menu_parnt
		  ORDER SIBLINGS BY seq_affch,
				    label' ;
		
END F_OBTNR_SQL_MENU ;	

-----------
-- 01.03 --	PROCEDURE P_INIT_LANG
-----------

PROCEDURE P_INIT_LANG
IS
BEGIN
        IF (apex_util.get_session_lang IS NULL) THEN
		IF (SUBSTR(owa_util.get_cgi_env('HTTP_ACCEPT_LANGUAGE'), 1, 2) LIKE 'en%') THEN
			apex_util.set_session_lang('en') ;
		ELSE
			apex_util.set_session_lang('fr') ;
		END IF;
        END IF ;
	
END P_INIT_LANG ;
  
-----------
-- 01.04 --	PROCEDURE P_CHANG_LANG
-----------

PROCEDURE P_CHANG_LANG
IS
BEGIN
        IF (apex_util.get_session_lang LIKE 'fr%') THEN
            apex_util.set_session_lang('en') ;
        ELSE            
            apex_util.set_session_lang('fr') ;
        END IF ;
	
END P_CHANG_LANG ;

-----------
-- 01.05 --	Fonction F_TRADC
-----------

FUNCTION F_TRADC
(
	P_FRANC				IN  VARCHAR2,
	P_ANGLS				IN  VARCHAR2
)
RETURN VARCHAR2
IS
BEGIN
	IF (apex_util.get_session_lang LIKE 'en%') THEN
		RETURN p_angls ;
	ELSE
		RETURN p_franc ;
	END IF ;
	
END F_TRADC ;

END PKG_POC_BOEW ;
/