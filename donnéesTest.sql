use mydb;
set sql_safe_updates=0;

delete from Utilisateur;

insert into Utilisateur 
values(1,'pmartin','746F746F','technicien'),
(2,'cmeunier','746F746F','technicien'),
(3,'ybenaissa','746F746F','technicien'),
(4,'sollivier','746F746F','technicien'),
(5,'sdjamel','746F746F','technicien'),
(6,'llandure','746F746F','technicien'),
(7,'gzilla','746F746F','technicien'),
(8,'bdemongeot','746F746F','technicien'),
(9,'jcouston','746F746F','technicien'),
(10,'fpieux','746F746F','technicien'),
(11,'gflayol','746F746F','commercial'),
(12,'cmeunier2','746F746F','commercial'),
(13,'jbringer','746F746F','commercial'),
(14,'gdespierres','746F746F','client'),
(15,'omeunier','746F746F','client'),
(16,'abandoni','746F746F','client'),
(17,'yqueffelec','746F746F','client'),
(18,'cmiossec','746F746F','client'),
(19,'llandure2','746F746F','client'),
(20,'jnkoula','746F746F','client'),
(21,'ljamot','746F746F','client'),
(22,'gollivier','746F746F','client'),
(23,'cdugue','746F746F','client'),
(24,'gdespierres2','746F746F','client'),
(25,'hclouzet','746F746F','client'),
(26,'jbrossard','','client'),
(27,'smayeur','','client'),
(28,'vpicard','','client'),
(29,'jlarochette','','client'),
(30,'amaigne','','client'),
(31,'ljamot2','','client'),
(32,'grond','','client'),
(33,'apopier','','client');

delete from competence;
insert into competence values (1,'développement C/C++/C#'),
(2, 'réseau'),
(3,'analyste cobol'),
(4,'méthode agile'),
(5, 'web'),
(6, 'maintenance'),
(7,'développement java'),
(8,'base de données');

delete from technicien;
insert into  technicien values (1,'Martin','Pierre',30,'junior',1),
(2,'Meunier','Charles',100,'senior',2),
(3,'Benaissa','Yasmina',30,'junior',3),
(4,'Ollivier','Sarah',50,'partner',4),
(5,'Djamel','Sabri',30,'junior',5),
(6,'Landuré','Ludovic',100,'junior',6),
(7,'Nzilla','Godefroy',30,'junior',7),
(8,'Demongeot','Benoit',50,'partner',8),
(9,'Couston','Jasmine',30,'junior',9),
(10,'Pieux','Fabien',30,'junior',10);

delete from activite_type;
insert into activite_type values 
(1,'développement'),
(2, 'déploiement'),
(3,'maintenance'),
(4,'solution innovante'),
(5, 'migration'),
(6, 'service après vente');

delete from commercial;
insert into  commercial values 
(1,'Flayol','Géraldine',5,11),
(2,'Meunier','Carlos',3,12),
(3,'Bringer','Julien',3,13);

delete from client;
insert into  client values 
(1,'Despierres','Gérard',14),
(2,'Meunier','Olivier',15),
(3,'Bandoni','Alice',16),
(4,'Queffelec','Yann',17),
(5, 'Miossec','Christophe',18),
(6,'Landuré','Ludovic',19),
(7,'Nkouka','Joseph',20),
(8,'Jamot','Loic',21),
(9,'Ollivier','Gaëlle',22),
(10,'Dugué','Corentin',23),
(11,'Despierres','Gaspard',24),
(12,'Clouzet','Henriette',25),
(13,'Brossard','Jean',26),
(14,'Mayeur','Suzette',27),
(15, 'Picard','Vincent',28),
(16,'Larochette','Jérémy',29),
(17,'Maigne','Adrien',30),
(18,'Jamot','Loic',31),
(19,'Rond','Guillaume',32),
(20,'Popier','Alexandre',33)
;

delete from materiel_type;
insert into materiel_type values (1,'périphérqiue'),
(2, 'analyse'),
(3,'maintenance électronique'),
(4,'support numérique'),
(5, 'pc'),
(6, 'tablette'),
(7,'logiciel')
;

delete from projet;
 insert into projet values
 (1,1,'smart city',500, 750, 'fini'),
 (2,2,'war gaming',200, NULL, 'en attente'),
 (3,1,'bitcoin',400,NULL , 'en cours'),
  (4,3,'siteWeb',500, 750, 'fini'),
 (5,2,'Entrprise 3.0',2000, NULL, 'en attente'),
 (6,1,'Try Me',400,NULL , 'en cours'),
  (7,1,'smart city',500, 750, 'fini'),
 (8,2,'dofus',2000, 1550, ' fini'),
 (9,1,'WoW',40000,NULL , 'en cours'),
  (10,1,'smart city',500, 750, 'fini'),
 (11,2,'site vitrine IUP',50, NULL, 'en attente'),
 (12,3,'innov''Dijon',1400,NULL , 'en cours')
 ;
 
 
 delete from devis;
 insert into devis values
 (1,'arnaque',50000, '2020-01-30', '2020-02-15','aucune',1, 11),
 (2,'tout beau tout nouveau',15000, '2020-07-30', '2020-05-17','application web ',2, 7),
 (3,'just for you',50000, '2020-02-15', '2020-07-21','aucune',5, 12),
  (4,'accroche',7000, '2020-05-01', '2020-11-01','nouveau langage',3, 4),
 (5,'attrape nigaud',12000,'2001-02-14', '2002-04-01','application web ',7, 6),
 (6,'try to catch me',500,'2020-12-07', '2020-07-01','nouveau langage',20, 1),
  (7,'sérieusement',50750, '2020-04-13', '2020-08-01','nouveau langage',19, 12),
 (8,'please stand up',12050, '2020-11-19', '2020-12-25','changement de lieu',13, 3),
 (9,'the real slim shady',0, '2020-07-01', '2020-07-02','application web ',15, 10),
  (10,'without me',25500, '2020-07-01', '2020-07-02','aucune',2, 7),
 (11,'candy store',45000, '2020-07-01', '2020-07-02','aucune',13, 12),
 (12,'innov''Dijon',11400,'2020-07-01', '2020-07-02','application web ',15, 9)
 ;
 
 delete from facture;
insert into facture values
(1,2),
(2, 3),
(3,4),
(4,5),
(5, 4),
(6, 6),
(7,8),
(8,10),
(9,4),
(10,7),
(11, 1),
(12, 12),
(13,11),
(14,10)
;


delete from materiel;
insert into materiel values 
(1,'souris',1),
(2, 'sas',2),
(3,'powerpoint',4),
(4,'asus',5),
(5, 'spark',2),
(6, 'windows',7),
(7,'vitrine intelligente',4),
(8, 'raspberry',3),
(9,'mamy choice',6),
(10,'mac',5),
(11, 'haut parleur',1),
(12, 'imprimante',1)
;

delete from possede;
insert into possede values
 (1,1,'simple'),
(2, 2,'intermédiaire'),
(3,4,'intermédiaire'),
(4,5,'simple'),
(5,2,'avancé'),
(5,7,'avancé'),
(7,4,'simple'),
(8,10,'simple'),
(7,8,'avancé'),
(3,6,'avancé'),
(1, 3,'simple'),
(4, 7,'avancé'),
(3,8,'intermédiaire'),
(4,10,'intermédiaire'),
(5, 3,'simple'),
(5, 9,'intermédiaire'),
(7,6,'simple'),
(8, 4,'simple')
;


delete from activite;
insert into activite values
 (1,250,'montée en compétence','du vent','prévue',1,null,null),
(2, 350,'solution techinque innovante','du mistral','terminée',2,null,null),
(3,0,'révolution numérique','asimov avait raison','en cours',4,null,null),
(4,10,'optimisation de l''existant', 'pas de sous','prévue',5,null,null),
(5,25,'intelligence artificielle','Au royaume des aveugles','annulée',3,null,null)
;

delete from affecte;
insert into affecte values
 (1,1),
(3, 2),
(3,4),
(4,5),
(7,5),
(8,5),
(9,4),
(6,4),
(10,1),
(2,1)
;

delete from compose;
insert into compose values
 (1,1),
(3, 2),
(3,4),
(4,5),
(7,5),
(8,5),
(9,4),
(6,4),
(10,3),
(12,1),
 (1,5),
(1, 2),
(1,3),
(1,4),
(7,4)
;


delete from prospecte;
insert into prospecte values
 (1,1,'2019-06-01','premier contact'),
(3, 2,'2019-11-01','premier contact'),
(1,4,'2020-06-01','harcélement'),
(2,5,'2020-01-01','coptation'),
(1,15,'2019-07-01','premier contact'),
(3,5,'2019-08-01','coptation'),
(1,14,'2020-02-15','premier contact'),
(2,4,'2019-03-28','coptation'),
(1,13,'2019-12-21','premier contact'),
(2,11,'2019-12-13','premier contact'),
 (1,9,'2019-10-14','coptation'),
(1, 19,'2020-04-05','coptation'),
(3,19,'2020-07-09','harcélement'),
(3,20,'2020-03-01','premier contact'),
(1,8,'2019-05-01','premier contact')
;

delete from necessite;
insert into necessite values
 (1,1,5,'2019-06-01','2019-08-01',150),
(2, 2,1,'2019-11-01','2020-06-01',250),
(3,4,1,'2020-06-01','2020-06-01',150),
(4,5,1,'2020-01-01','2020-06-11',156),
(5,10,3,'2019-07-01','2019-07-01',850),
(6,6,2,'2019-08-01','2019-08-06',45),
(7,10,0,'2020-02-15','2020-02-14',140),
(8,7,1,'2019-03-28','2019-06-01',0),
(9,3,4,'2019-12-21','2019-12-21',150),
(12,11,20,'2019-12-13','2019-12-14',10000),
 (11,9,5,'2019-10-14','2020-02-01',360),
(1, 9,3,'2020-04-05','2020-07-28',450),
(3,11,1,'2020-07-09','2020-11-18',3000),
(4,2,15,'2020-03-01','2020-06-15',250),
(3,8,5,'2019-05-01','2019-06-17',125)
;