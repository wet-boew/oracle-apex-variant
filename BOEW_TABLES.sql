--------------------------------------------------------------------------------

-----------
-- SEQ  --	Création des SEQUENCE
-----------

CREATE SEQUENCE POC_S_IDE_BOEW_MENU NOCACHE MAXVALUE 99999 ;

--------------------------------------------------------------------------------

------------------------
-- TABLE -- Création des TABLE
------------------------


CREATE TABLE POC_BOEW_MENU
(	
	IDE_BOEW_MENU  						NUMBER(9), 
	NOM_CATGR 						VARCHAR2(255),
	NOM_MENU_FRA   						VARCHAR2(255), 
	NOM_MENU_ENG   						VARCHAR2(255), 
	NOM_LIEN_FRA       					VARCHAR2(4000),
	NOM_LIEN_ENG       					VARCHAR2(4000),	
	NOM_ID							VARCHAR2(4000),
	DAH_CRETN      						DATE, 
	COD_UTILS_CRETN						VARCHAR2(255), 
	DAH_MODFC      						DATE, 
	COD_UTILS_MODFC						VARCHAR2(255),
	IDE_BOEW_MENU_PARNT					NUMBER(9),
	NUM_SEQNC						NUMBER(9)
);

CREATE OR REPLACE TRIGGER POC_BOEW_MENU_BIU_TRG 
BEFORE INSERT OR UPDATE ON POC_BOEW_MENU
FOR EACH ROW
BEGIN
	IF (INSERTING) THEN
                :NEW.ide_boew_menu := poc_s_ide_boew_menu.nextval;
		:NEW.dah_cretn := SYSDATE ;
		:NEW.cod_utils_cretn := NVL(v('APP_USER'), USER) ;
	END IF ;
	
	IF (UPDATING) THEN
		:NEW.dah_modfc := SYSDATE ;
		:NEW.cod_utils_modfc := NVL(v('APP_USER'), USER) ;
	END IF ;
		
END POC_BOEW_MENU_BIU_TRG ;

/
