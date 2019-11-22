# <model>
# 			<lodelversion>1.0</lodelversion>
# 			<date>2019-11-22</date>
# 			<title>
# 			Prairial
# 			</title>
# 			<description>
# 			https://github.com/edinum/prairial
# 			</description>
# 			<author>
# 			Thomas Brouard (Edinum.org)
# 			</author>
# 			<modelversion>
# 			1.0.0
# 			</modelversion>
# 			</model>
# 			
#------------

DELETE FROM #_TP_classes;
DELETE FROM #_TP_tablefields;
DELETE FROM #_TP_tablefieldgroups;
DELETE FROM #_TP_types;
DELETE FROM #_TP_persontypes;
DELETE FROM #_TP_entrytypes;
DELETE FROM #_TP_entitytypes_entitytypes;
DELETE FROM #_TP_characterstyles;
DELETE FROM #_TP_internalstyles;
# # Database: 'lodelpre_prairial'# 
#
# Dumping data for table 'classes'
#

INSERT INTO #_TP_classes (id, icon, class, title, altertitle, classtype, comment, rank, status, upd) VALUES (60, 'lodel/icons/personne.gif', 'auteurs', 'Auteurs', '<r2r:ml lang="en">Authors</r2r:ml><r2r:ml lang="es">Autores</r2r:ml><r2r:ml lang="pt">Autores</r2r:ml>', 'persons', '', 8, 32, '2019-10-01 18:48:05'),
(61, 'lodel/icons/index_avance.gif', 'collections', 'Collections', '<r2r:ml lang="en">Collections</r2r:ml><r2r:ml lang="es">Colecciones</r2r:ml><r2r:ml lang="pt">Coleções</r2r:ml>', 'entries', '', 14, 1, '2019-10-01 18:47:39'),
(62, 'lodel/icons/doc_annexe.gif', 'fichiers', 'Fichiers', '<r2r:ml lang="en">Files</r2r:ml><r2r:ml lang="es">Archivos</r2r:ml><r2r:ml lang="pt">Ficheiros</r2r:ml>', 'entities', '', 9, 32, '2019-10-01 18:47:58'),
(63, 'lodel/icons/doc_annexe.gif', 'fichiersexternes', 'Fichiers distants', '<r2r:ml lang="en">Remote files</r2r:ml><r2r:ml lang="es">Archivos externos</r2r:ml><r2r:ml lang="pt">Ficheiros externos</r2r:ml>', 'entities', '', 12, 32, '2019-10-01 18:47:44'),
(64, 'lodel/icons/index_avance.gif', 'indexavances', 'Index avancés', '<r2r:ml lang="en">Advanced indexes</r2r:ml><r2r:ml lang="es">Índice avanzado</r2r:ml><r2r:ml lang="pt">Índices avançados</r2r:ml>', 'entries', '', 13, 1, '2019-10-01 18:47:39'),
(65, 'lodel/icons/index.gif', 'indexes', 'Index', '<r2r:ml lang="en">Indexes</r2r:ml><r2r:ml lang="es">Índice</r2r:ml><r2r:ml lang="pt">Índices</r2r:ml>', 'entries', '', 11, 1, '2019-10-01 18:47:50'),
(66, 'lodel/icons/individu.gif', 'individus', 'Personnes', '<r2r:ml lang="en">Persons</r2r:ml><r2r:ml lang="es">Personas</r2r:ml><r2r:ml lang="pt">Indivíduos</r2r:ml>', 'entities', '', 10, 1, '2019-10-01 18:47:54'),
(67, 'lodel/icons/lien.gif', 'liens', 'Sites', '<r2r:ml lang="en">Websites</r2r:ml><r2r:ml lang="es">Sitios web</r2r:ml><r2r:ml lang="pt">Websites</r2r:ml>', 'entities', '', 4, 32, '2019-10-01 18:45:39'),
(68, 'lodel/icons/collection.gif', 'publications', 'Publications', '<r2r:ml lang="en">Folders</r2r:ml><r2r:ml lang="es">Publicaciones</r2r:ml><r2r:ml lang="pt">Publicações</r2r:ml>', 'entities', '', 1, 1, '2019-09-05 09:46:17'),
(69, 'lodel/icons/texte.gif', 'textes', 'Textes', '<r2r:ml lang="en">Texts</r2r:ml><r2r:ml lang="es">Textos</r2r:ml><r2r:ml lang="pt">Textos</r2r:ml>', 'entities', '', 2, 32, '2019-09-05 09:46:17'),
(70, 'lodel/icons/texte_simple.gif', 'textessimples', 'Textes simples', '<r2r:ml lang="en">Simple texts</r2r:ml><r2r:ml lang="es">Textos sencillos</r2r:ml><r2r:ml lang="pt">Textos simples</r2r:ml>', 'entities', '', 3, 32, '2019-09-05 09:46:17'),
(115, 'lodel/icons/lien.gif', 'liensinternes', 'Liens internes', '', 'entities', '', 15, 1, '2019-10-01 19:31:13'),
(143, 'lodel/icons/index.gif', 'filtrescatalogue', 'Filtres du catalogue', '', 'entries', '', 16, 1, '2019-10-07 15:11:09');

#
# Dumping data for table 'tablefields'
#

INSERT INTO #_TP_tablefields (id, name, idgroup, class, title, altertitle, style, type, g_name, cond, defaultvalue, processing, allowedtags, gui_user_complexity, filtering, edition, editionparams, editionhooks, weight, comment, mask, status, rank, otx, upd) VALUES (1, 'titre', 31, 'textes', 'Titre du document', '<r2r:ml lang="en">Document title</r2r:ml><r2r:ml lang="es">Título del documento</r2r:ml><r2r:ml lang="pt">Título do documento</r2r:ml>', 'title, titre, titleuser, heading, titulo,titulo', 'text', 'dc.title', '+', 'Document sans titre', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Lien;Appel de Note;style:strict', 16, '', 'editable', '', '', 8, '', '', 1, 3, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type=\'main\']', '2015-05-11 10:03:08'),
(2, 'surtitre', 31, 'textes', 'Surtitre du document', '<r2r:ml lang="en">Document heading (additional title)</r2r:ml><r2r:ml lang="es">Título adicional (encima del título principal)</r2r:ml><r2r:ml lang="pt">Antetítulo do documento</r2r:ml>', 'surtitre, tituloadicional, subhead,subhead,antetitulo', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Lien;Appel de Note;style:strict', 32, '', 'importable', '', '', 8, '', '', 1, 2, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type=\'sup\']', '2014-01-30 14:35:53'),
(3, 'soustitre', 31, 'textes', 'Sous-titre du document', '<r2r:ml lang="en">Document subtitle (secondary title)</r2r:ml><r2r:ml lang="es">Subtítulo del documento</r2r:ml><r2r:ml lang="pt">Subtítulo do documento</r2r:ml>', 'subtitle, soustitre, subtitulo,subtitulo', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Lien;Appel de Note;style:strict', 32, '', 'importable', '', '', 8, '', '', 1, 5, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type=\'sub\']', '2015-03-04 16:37:01'),
(4, 'texte', 32, 'textes', 'Texte du document', '<r2r:ml lang="en">Standard text</r2r:ml><r2r:ml lang="es">Texto du documento</r2r:ml><r2r:ml lang="pt">Texto do documento</r2r:ml>', 'texte, standard, normal, textbody, texto', 'longtext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'importable', '', '', 4, '', '', 32, 1, '/tei:TEI/tei:text/tei:body/child::*', '2015-03-04 16:43:39'),
(5, 'notesbaspage', 32, 'textes', 'Notes de bas de page', '<r2r:ml lang="en">Footnotes</r2r:ml><r2r:ml lang="es">Notas a pie de página</r2r:ml><r2r:ml lang="pt">Notas de rodapé</r2r:ml>', 'notebaspage, footnote, footnotetext, notaapiedepagina,footnotes,notaapiedepagina', 'longtext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 32, '', 'importable', '', '', 4, '', '', 1, 2, '', '2013-09-06 10:03:21'),
(7, 'annexe', 32, 'textes', 'Annexes du document', '<r2r:ml lang="en">Appendixes</r2r:ml><r2r:ml lang="es">Anexos del documento</r2r:ml><r2r:ml lang="pt">Anexos ao documento</r2r:ml>', 'annexe, anexo, appendix,appendix,anexo', 'longtext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 32, '', 'importable', '', '', 4, '', '', 1, 4, '/tei:TEI/tei:text/tei:back/tei:div[@type=\'appendix\']', '2013-09-06 10:03:21'),
(8, 'bibliographie', 32, 'textes', 'Bibliographie du document', '<r2r:ml lang="en">Bibliography</r2r:ml><r2r:ml lang="es">Bibliografía del documento</r2r:ml><r2r:ml lang="pt">Bibliografia</r2r:ml>', 'bibliographie, bibliografia, bibliography,bibliography,bibliografia', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 32, '', 'importable', '', '', 4, '', '', 1, 5, '/tei:TEI/tei:text/tei:back/tei:div[@type=\'bibliography\']', '2013-09-06 10:03:21'),
(9, 'datepubli', 33, 'textes', 'Date de la publication électronique', '<r2r:ml lang="en">Date of online publication (electronic edition)</r2r:ml><r2r:ml lang="es">Fecha de publicación electrónica</r2r:ml><r2r:ml lang="pt">Data da publicação electrónica</r2r:ml>', 'datepubli, fechapubli, epublidate,epublidate,fechapubli', 'date', 'dc.date', '*', 'today', '', 'style:none', 16, '', 'importable', '', '', 0, '', '', 1, 1, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date', '2019-10-05 11:16:40'),
(10, 'datepublipapier', 33, 'textes', 'Date de la publication sur papier', '<r2r:ml lang="en">Date of publication (print edition)</r2r:ml><r2r:ml lang="es">Fecha de publicación papel</r2r:ml><r2r:ml lang="pt">Data da publicação em papel</r2r:ml>', 'datepublipapier, publidate, fechapublipapel,publidate,fechapublipapel', 'date', '', '*', '', '', 'style:none', 32, '', 'importable', '', '', 0, '', '', 1, 2, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblFull/tei:publicationStmt/tei:date', '2019-10-05 11:16:52'),
(11, 'noticebiblio', 33, 'textes', 'Notice bibliographique du document', '<r2r:ml lang="en">Bibliographical reference describing the document</r2r:ml><r2r:ml lang="es">Referencia bibliográfica del documento</r2r:ml><r2r:ml lang="pt">Referência bibliográfica do documento</r2r:ml>', 'noticebiblio, bibliographicalreference, referenciabibliografica,bibliographicalreference,referenciabibliografica', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;style:strict', 64, '', 'importable', '', '', 0, '', '', 1, 3, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblFull/tei:notesStmt/tei:note[@type=\'bibl\']', '2014-01-30 14:35:53'),
(12, 'pagination', 33, 'textes', 'Pagination du document sur le papier', '<r2r:ml lang="en">Pagination</r2r:ml><r2r:ml lang="es">Paginación del documento papel</r2r:ml><r2r:ml lang="pt">Números de página do documento em papel</r2r:ml>', 'pagination, paginacion, pagenumbering,pagenumbering,paginacion', 'tinytext', '', '*', '', '', 'style:none', 64, '', 'importable', '', '', 0, '', '', 1, 4, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblFull/tei:publicationStmt/tei:idno[@type=\'pp\']', '2015-03-04 16:39:50'),
(14, 'langue', 33, 'textes', 'Langue du document', '<r2r:ml lang="en">Language of document</r2r:ml><r2r:ml lang="es">Idioma del documento</r2r:ml><r2r:ml lang="pt">Língua do documento</r2r:ml>', 'langue, idioma, language,language,idioma', 'lang', 'dc.language', '*', '', '', 'style:none', 32, '', 'importable', '', '', 0, '', '', 1, 6, '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language', '2019-10-05 11:17:14'),
(15, 'prioritaire', 16, 'textes', 'Document prioritaire', '<r2r:ml lang="en">Document priority</r2r:ml><r2r:ml lang="es">¿Es prioritario este documento?</r2r:ml><r2r:ml lang="pt">Documento prioritário</r2r:ml>', '', 'boolean', '', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 32, 7, '', '2015-03-04 16:45:16'),
(17, 'addendum', 34, 'textes', 'Addendum', '<r2r:ml lang="en">Addendum</r2r:ml><r2r:ml lang="es">Addendum</r2r:ml><r2r:ml lang="pt">Adenda</r2r:ml>', 'erratum, addendum', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 64, '', 'importable', '', '', 2, '', '', 32, 3, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'correction\']', '2011-09-20 22:11:39'),
(18, 'ndlr', 34, 'textes', 'Note de la rédaction', '<r2r:ml lang="en">Editor\'s note</r2r:ml><r2r:ml lang="es">Nota de la redacción</r2r:ml><r2r:ml lang="pt">Nota de edição</r2r:ml>', 'ndlr, editorsnote,editorsnote', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 64, '', 'importable', '', '', 2, '', '', 1, 1, '/tei:TEI/tei:text/tei:front/tei:note[@resp=\'editor\']/tei:p', '2013-09-06 10:03:08'),
(20, 'commentaireinterne', 16, 'textes', 'Commentaire interne sur le document', '<r2r:ml lang="en">Internal comment about the document</r2r:ml><r2r:ml lang="es">Comentario interno sobre el documento</r2r:ml><r2r:ml lang="pt">Comentário interno sobre o documento</r2r:ml>', 'commentaire', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 64, '', 'importable', '', '', 0, '', '', 32, 4, '', '2011-09-20 22:22:45'),
(21, 'dedicace', 34, 'textes', 'Dédicace', '<r2r:ml lang="en">Dedication</r2r:ml><r2r:ml lang="es">Dedicatoria</r2r:ml><r2r:ml lang="pt">Dedicatória</r2r:ml>', 'dedicace, dedicatoria, dedication,dedication,dedicatoria', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 64, '', 'importable', '', '', 2, '', '', 1, 4, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'dedication\']', '2013-09-06 10:03:21'),
(23, 'ocr', 16, 'textes', 'Document issu d’une numérisation dite OCR', '<r2r:ml lang="en">The document is a transcript from an OCR</r2r:ml><r2r:ml lang="es">Este texto fue obtenido por OCR</r2r:ml><r2r:ml lang="pt">Documento obtido por digitalização OCR</r2r:ml>', '', 'boolean', '', '*', '', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 9, '', '2011-09-20 22:23:44'),
(24, 'documentcliquable', 16, 'textes', 'Document cliquable dans les sommaires', '<r2r:ml lang="en">The document is clickable in the contents of the folder</r2r:ml><r2r:ml lang="es">Este documento es accesible en índices</r2r:ml><r2r:ml lang="pt">Documento clicável no índice</r2r:ml>', '', 'boolean', '', '*', 'true', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 10, '', '2015-03-05 15:48:51'),
(25, 'nom', 0, 'indexes', 'Dénomination de l’entrée d\'index', '<r2r:ml lang="en">Entry name</r2r:ml><r2r:ml lang="es">Nombre de la entrada</r2r:ml><r2r:ml lang="pt">Designação da entrada do índice</r2r:ml>', '', 'text', 'index key', '*', 'Tous droits réservés', '', '', 16, '', 'editable', '', '', 4, '', '', 32, 25, '', '2011-09-20 23:19:35'),
(26, 'motsclesfr', 15, 'textes', 'Mots-clés', '<r2r:ml lang="en">Mots-clés</r2r:ml><r2r:ml lang="pt">Mots-clés</r2r:ml><r2r:ml lang="es">Mots-clés</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 1, '', '2015-03-05 14:31:26'),
(27, 'definition', 0, 'indexes', 'Définition', '<r2r:ml lang="en">Entry definition</r2r:ml><r2r:ml lang="es">Definición de la entrada</r2r:ml><r2r:ml lang="pt">Definição da entrada do índice</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 16, '', 'fckeditor', 'Basic', '', 1, '', '', 32, 27, '', '2011-09-20 23:19:47'),
(28, 'nomfamille', 0, 'auteurs', 'Nom de famille', '<r2r:ml lang="en">Surname</r2r:ml><r2r:ml lang="es">Apellido</r2r:ml><r2r:ml lang="pt">Apelido</r2r:ml>', '', 'tinytext', 'familyname', '*', '', '', '', 32, '', 'editable', '', '', 4, '', '', 32, 28, '', '2011-09-20 23:13:18'),
(29, 'prenom', 0, 'auteurs', 'Prénom', '<r2r:ml lang="en">Name</r2r:ml><r2r:ml lang="es">Nombre</r2r:ml><r2r:ml lang="pt">Nome próprio</r2r:ml>', '', 'tinytext', 'firstname', '*', '', '', '', 32, '', 'editable', '', '', 4, '', '', 32, 29, '', '2011-09-20 23:13:31'),
(30, 'prefix', 0, 'entities_auteurs', 'Préfixe', '<r2r:ml lang="en">Prefix</r2r:ml><r2r:ml lang="es">Prefijo</r2r:ml><r2r:ml lang="pt">Título</r2r:ml>', 'prefixe, .prefixe, prefix, ,prefix,prefijo', 'tinytext', '', '*', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 2, '//tei:roleName[@type=\'honorific\']', '2015-03-05 14:34:49'),
(31, 'affiliation', 0, 'entities_auteurs', 'Affiliation', '<r2r:ml lang="en">Affiliation</r2r:ml><r2r:ml lang="es">Afiliación</r2r:ml><r2r:ml lang="pt">Afiliação</r2r:ml>', 'affiliation, .affiliation, afiliacion,afiliacion', 'tinytext', '', '*', '', '', '', 32, '', 'importable', '', '', 4, '', '', 1, 3, '//tei:orgName', '2015-03-05 14:35:11'),
(32, 'fonction', 0, 'entities_auteurs', 'Fonction', '<r2r:ml lang="en">Function</r2r:ml><r2r:ml lang="es">Cargo profesional</r2r:ml><r2r:ml lang="pt">Função</r2r:ml>', 'fonction, .fonction, cargo, position, ,position,cargo', 'tinytext', '', '*', '', '', '', 32, '', 'importable', '', '', 0, '', '', 1, 4, '//tei:roleName[@type=\'function\']', '2015-03-05 14:35:24'),
(33, 'description', 0, 'entities_auteurs', 'Description de l’auteur', '<r2r:ml lang="en">Author description</r2r:ml><r2r:ml lang="es">Descripción del autor</r2r:ml><r2r:ml lang="pt">Apresentação do autor</r2r:ml>', 'descriptionauteur, descripcionautor, authordescription,authordescription,descripcionautor', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 16, '', 'fckeditor', '5', '', 4, '', '', 1, 1, '//tei:affiliation', '2013-09-06 10:03:22'),
(34, 'courriel', 0, 'entities_auteurs', 'Courriel', '<r2r:ml lang="en">Email</r2r:ml><r2r:ml lang="es">Correo electrónico</r2r:ml><r2r:ml lang="pt">E-mail</r2r:ml>', 'courriel, .courriel, correoelectronico, email,email,correoelectronico', 'email', '', '*', '', '', '', 32, '', 'importable', '', '', 4, '', '', 1, 5, '//tei:email', '2015-03-05 14:35:35'),
(35, 'auteur', 14, 'textes', 'Auteur du document', '<r2r:ml lang="en">Author</r2r:ml><r2r:ml lang="es">Autor del documento</r2r:ml><r2r:ml lang="pt">Autor do documento</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 11, '', '2015-03-04 16:38:22'),
(36, 'traducteur', 14, 'textes', 'Traducteur du document', '<r2r:ml lang="en">Translator</r2r:ml><r2r:ml lang="es">Traductor del documento</r2r:ml><r2r:ml lang="pt">Tradutor do documento</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 12, '', '2015-03-04 16:38:30'),
(43, 'titre', 35, 'liens', 'Titre du site', '<r2r:ml lang="en">Website title</r2r:ml><r2r:ml lang="es">Título del sitio</r2r:ml><r2r:ml lang="pt">Título do website</r2r:ml>', '', 'text', 'dc.title', '*', 'Site sans titre', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Appel de Note', 16, '', 'editable', '', '', 8, '', '', 32, 43, '', '2011-09-20 22:51:07'),
(44, 'url', 36, 'liens', 'URL du site', '<r2r:ml lang="en">Website URL</r2r:ml><r2r:ml lang="es">URL del sitio</r2r:ml><r2r:ml lang="pt">URL do website</r2r:ml>', '', 'url', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 32, 1, '', '2011-09-20 22:51:32'),
(45, 'urlfil', 36, 'liens', 'URL du fil de syndication du site', '<r2r:ml lang="en">RSS feed URL</r2r:ml><r2r:ml lang="es">URL del fuente web</r2r:ml><r2r:ml lang="pt">URL do feed RSS do website</r2r:ml>', '', 'url', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 4, '', '2019-09-09 17:00:39'),
(46, 'texte', 36, 'liens', 'Description du site', '<r2r:ml lang="en">Website synopsis</r2r:ml><r2r:ml lang="es">Descripción del sitio</r2r:ml><r2r:ml lang="pt">Sinopse do website</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'fckeditor', 'Simple', '', 2, '', '', 32, 2, '', '2011-09-20 22:51:47'),
(47, 'titre', 37, 'fichiers', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Título</r2r:ml>', '', 'text', 'dc.title', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Appel de Note', 16, '', 'editable', '', '', 4, '', '', 32, 47, '', '2011-09-20 22:44:41'),
(48, 'document', 38, 'fichiers', 'Document', '<r2r:ml lang="en">Document</r2r:ml><r2r:ml lang="es">Documento</r2r:ml><r2r:ml lang="pt">Documento</r2r:ml>', '', 'file', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 32, 1, '', '2011-09-20 22:44:54'),
(50, 'resume', 39, 'textes', 'Résumé', '<r2r:ml lang="en">Abstract</r2r:ml><r2r:ml lang="es">Resumen</r2r:ml><r2r:ml lang="pt">Resumo</r2r:ml>', 'rsum:fr,resume:fr,resumefr:fr,abstract:en,resumeen:en,extracto:es,resumen:es, resumees:es,resumo:pt,resumept:pt,riassunto:it,resumeit:it,zusammenfassung:de,resumede:de,resumeru:ru', 'mltext', 'dc.description', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'importable', '5', '', 8, '', '', 32, 50, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'abstract\']', '2015-03-04 16:39:17'),
(51, 'titre', 40, 'publications', 'Titre de la publication', '<r2r:ml lang="en">Folder title</r2r:ml><r2r:ml lang="es">Título de la publicación</r2r:ml><r2r:ml lang="pt">Título da publicação</r2r:ml>', 'title, titre, titleuser, heading', 'text', 'dc.title', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Appel de Note', 16, '', 'editable', '', '', 8, '', '', 32, 2, '', '2011-09-20 21:42:29'),
(52, 'surtitre', 40, 'publications', 'Surtitre de la publication', '<r2r:ml lang="en">Folder heading (additional title)</r2r:ml><r2r:ml lang="es">Título adicional (encima del título principal)</r2r:ml><r2r:ml lang="pt">Antetítulo da publicação</r2r:ml>', 'surtitre', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Appel de Note', 16, '', 'importable', '', '', 8, '', '', 32, 1, '', '2011-09-20 21:42:14'),
(53, 'soustitre', 40, 'publications', 'Sous-titre de la publication', '<r2r:ml lang="en">Folder subtitle (secondary title)</r2r:ml><r2r:ml lang="es">Subtítulo de la publicación</r2r:ml><r2r:ml lang="pt">Subtítulo da publicação</r2r:ml>', 'soustitre', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Appel de Note', 16, '', 'none', '', '', 8, '', '', 32, 3, '', '2019-10-05 11:08:46'),
(54, 'commentaireinterne', 11, 'publications', 'Commentaire interne sur la publication', '<r2r:ml lang="en">Internal comment about the folder</r2r:ml><r2r:ml lang="es">Comentario interno acerca de la publicación</r2r:ml><r2r:ml lang="pt">Comentário interno sobre a publicação</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 64, '', 'none', '4', '', 0, '', '', 32, 54, '', '2019-10-05 11:13:21'),
(55, 'prioritaire', 11, 'publications', 'Cette publication est-elle prioritaire ?', '<r2r:ml lang="en">The publication of the folder is having priority</r2r:ml><r2r:ml lang="es">¿Es prioritaria esta publicación?</r2r:ml><r2r:ml lang="pt">Esta publicação é prioritária?</r2r:ml>', '', 'boolean', '', '*', '', '', '', 16, '', 'importable', '', '', 0, '', '', 32, 55, '', '2015-07-21 08:43:39'),
(57, 'datepubli', 12, 'publications', 'Date de publication électronique', '<r2r:ml lang="en">Date of online publication (electronic edition)</r2r:ml><r2r:ml lang="es">Fecha de publicación électrónica</r2r:ml><r2r:ml lang="pt">Data da publicação electrónica</r2r:ml>', '', 'date', 'dc.date', '*', 'today', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2019-10-05 11:09:52'),
(58, 'datepublipapier', 12, 'publications', 'Date de publication papier', '<r2r:ml lang="en">Date of publication (print edition)</r2r:ml><r2r:ml lang="es">Fecha de publicación papel</r2r:ml><r2r:ml lang="pt">Data da publicação em papel</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 3, '', '2019-10-05 11:10:03'),
(59, 'noticebiblio', 12, 'publications', 'Notice bibliographique décrivant la publication', '<r2r:ml lang="en">Bibliographical reference</r2r:ml><r2r:ml lang="es">Referencia bibliográfica que describe la publicación</r2r:ml><r2r:ml lang="pt">Referência bibliográfica da publicação</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special', 64, '', 'importable', '', '', 0, '', '', 32, 4, '', '2011-09-20 21:45:18'),
(60, 'introduction', 13, 'publications', 'Introduction de la publication', '<r2r:ml lang="en">Folder introduction</r2r:ml><r2r:ml lang="es">Introdución de la publicación</r2r:ml><r2r:ml lang="pt">Introdução à publicação</r2r:ml>', 'texte, standard, normal', 'mltext', 'dc.description', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'none', 'Simple,550,400', '', 8, '', '', 32, 1, '', '2019-10-05 11:09:12'),
(62, 'ndlr', 13, 'publications', 'Note de la rédaction au sujet de la publication', '<r2r:ml lang="en">Editor\'s note about the folder</r2r:ml><r2r:ml lang="es">Nota de la redacción acerca de la publicación</r2r:ml><r2r:ml lang="pt">Nota editorial sobre a publicação</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 64, '', 'none', '', '', 2, '', '', 32, 4, '', '2019-10-05 11:09:42'),
(63, 'historique', 13, 'publications', 'Historique de la publication', '<r2r:ml lang="en">Folder history</r2r:ml><r2r:ml lang="es">Historial de la publicación</r2r:ml><r2r:ml lang="pt">Histórico da publicação</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 64, '', 'importable', '', '', 0, '', '', 32, 2, '', '2015-03-04 16:31:39'),
(64, 'periode', 12, 'publications', 'Période de publication', '<r2r:ml lang="en">Period of publication</r2r:ml><r2r:ml lang="es">Período de publicación</r2r:ml><r2r:ml lang="pt">Período de publicação</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 16, '', 'importable', '', '', 0, '', '', 1, 5, '', '2011-09-20 21:45:36'),
(65, 'isbn', 12, 'publications', 'ISBN', '<r2r:ml lang="en">ISBN</r2r:ml><r2r:ml lang="es">ISBN</r2r:ml><r2r:ml lang="pt">ISBN</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 1, 7, '', '2019-10-05 11:10:42'),
(66, 'paraitre', 11, 'publications', 'Cette publication est-elle à paraître ?', '<r2r:ml lang="en">The publication of the folder is forthcoming</r2r:ml><r2r:ml lang="es">¿Está pendiente de publicación ?</r2r:ml><r2r:ml lang="pt">Esta publicação está no prelo?</r2r:ml>', '', 'boolean', '', '*', '', '', '', 32, '', 'none', '', '', 0, '', '', 32, 66, '', '2019-10-05 11:13:41'),
(67, 'integralite', 43, 'publications', 'Cette publication est-elle en libre accès ?', '<r2r:ml lang="en">The folder is published in full open access</r2r:ml><r2r:ml lang="es">¿Es completa esta publicación online?</r2r:ml><r2r:ml lang="pt">Esta publicação online é integral?</r2r:ml>', '', 'boolean', '', '*', '', '', '', 32, '', 'none', '', '', 0, '', '', 32, 1, '', '2019-10-05 11:14:37'),
(68, 'numero', 12, 'publications', 'Numéro de la publication', '<r2r:ml lang="en">Volume number</r2r:ml><r2r:ml lang="es">Número de la publicación</r2r:ml><r2r:ml lang="pt">Número da publicação</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 6, '', '2019-10-05 11:10:30'),
(69, 'motsclesen', 15, 'textes', 'Keywords', '<r2r:ml lang="en">Keywords</r2r:ml><r2r:ml lang="es">Keywords</r2r:ml><r2r:ml lang="pt">Keywords</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 2, '', '2015-03-05 14:31:26'),
(74, 'altertitre', 31, 'textes', 'Titre alternatif du document (dans une autre langue)', '<r2r:ml lang="en">Document translated title (alternative title)</r2r:ml><r2r:ml lang="es">Título alternativo del documento (en otro idioma)</r2r:ml><r2r:ml lang="pt">Título traduzido do documento</r2r:ml>', 'titretraduitfr:fr,titrefr:fr,titretraduiten:en,titleen:en,titreen:en,titretraduites:es,tituloes:es,titrees:es,titretraduitit:it,titoloit:it,titreit:it,titretraduitde:de,titelde:de,titrede:de,titretraduitpt:pt,titrept:pt,titulopt:pt,titreru:ru', 'mltext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Lien;Appel de Note;style:strict', 16, '', 'importable', '', '', 8, '', '', 1, 4, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type=\'alt\']', '2015-03-04 16:37:21'),
(76, 'titreoeuvre', 17, 'textes', 'Titre de l’œuvre commentée', '<r2r:ml lang="en">Title of the reviewed document</r2r:ml><r2r:ml lang="es">Título de la obra comentada</r2r:ml><r2r:ml lang="pt">Título da obra comentada</r2r:ml>', 'titreoeuvre, tituloobra, reviewedtitle, ,reviewedtitle,tituloobra', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Appel de Note;style:strict', 64, '', 'importable', '', '', 4, '', '', 1, 2, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'review\']/tei:p[@rend=\'review-title\']', '2019-10-05 11:18:00'),
(77, 'noticebibliooeuvre', 17, 'textes', 'Notice bibliographique de l’œuvre commentée', '<r2r:ml lang="en">Bibliographical reference describing the reviewed document</r2r:ml><r2r:ml lang="es">Referencia bibliográfica de la obra comentada</r2r:ml><r2r:ml lang="pt">Referência bibliográfica da obra comentada</r2r:ml>', 'noticebibliooeuvre, referenciabibliograficaobra, reviewedreference, ,reviewedreference,referenciabibliograficaobra', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Appel de Note;style:strict', 64, '', 'importable', '', '', 4, '', '', 1, 1, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'review\']/tei:p[@rend=\'review-bibliography\']', '2019-10-05 11:17:50'),
(78, 'datepublicationoeuvre', 17, 'textes', 'Date de publication de l’œuvre commentée', '<r2r:ml lang="en">Date of publication of the reviewed document</r2r:ml><r2r:ml lang="es">Fecha de publicación de la obra comentada</r2r:ml><r2r:ml lang="pt">Data de publicação da obra comentada</r2r:ml>', 'datepublioeuvre, fechapubliobra, revieweddate, ,revieweddate,fechapubliobra', 'tinytext', '', '*', '', '', 'style:none', 64, '', 'importable', '', '', 4, '', '', 1, 70, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'review\']/tei:p[@rend=\'review-date\']', '2019-10-05 11:18:10'),
(79, 'auteuroeuvre', 17, 'textes', 'Auteur de l’œuvre commentée', '<r2r:ml lang="en">Author of the reviewed document</r2r:ml><r2r:ml lang="es">Autor de la obra comentada</r2r:ml><r2r:ml lang="pt">Autor da obra comentada</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 71, '', '2019-10-05 11:18:19'),
(81, 'titre', 18, 'textessimples', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Título</r2r:ml>', '', 'tinytext', 'dc.title', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'editable', '', '', 4, '', '', 32, 72, '', '2011-09-20 22:31:17'),
(82, 'texte', 19, 'textessimples', 'Texte', '<r2r:ml lang="en">Text</r2r:ml><r2r:ml lang="es">Texto</r2r:ml><r2r:ml lang="pt">Texto</r2r:ml>', '', 'longtext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'wysiwyg_ckeditor', 'Simple', '', 4, '', '', 1, 73, '', '2019-09-09 17:10:50'),
(83, 'ndla', 34, 'textes', 'Note de l’auteur', '<r2r:ml lang="en">Author’s note</r2r:ml><r2r:ml lang="es">Nota del autor</r2r:ml><r2r:ml lang="pt">Nota do autor</r2r:ml>', 'ndla, authorsnote,authorsnote', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 64, '', 'importable', '', '', 2, '', '', 1, 2, '/tei:TEI/tei:text/tei:front/tei:note[@resp=\'author\']/tei:p', '2013-09-06 10:03:08'),
(98, 'description', 38, 'fichiers', 'Description', '<r2r:ml lang="en">Description</r2r:ml><r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Descrição</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'fckeditor', 'Simple', '', 4, '', '', 32, 2, '', '2011-09-20 22:45:07'),
(99, 'alterfichier', 53, 'textes', 'Texte au format PDF', '<r2r:ml lang="en">PDF version of the document (facsimile)</r2r:ml><r2r:ml lang="es">Texto en formato PDF</r2r:ml><r2r:ml lang="pt">Texto em formato PDF</r2r:ml>', '', 'file', '', '*', '', '', '', 32, '', 'none', '', '', 0, '', '', 32, 6, '', '2019-10-05 11:17:32'),
(100, 'auteur', 24, 'fichiers', 'Auteur', '<r2r:ml lang="en">Author</r2r:ml><r2r:ml lang="es">Autor</r2r:ml><r2r:ml lang="pt">Autor</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 32, 91, '', '2019-11-12 14:04:20'),
(101, 'auteur', 25, 'liens', 'Auteur de la notice décrivant ce site', '<r2r:ml lang="en">Author of website description</r2r:ml><r2r:ml lang="es">Autor de la reseña del sitio</r2r:ml><r2r:ml lang="pt">Autor da ficha do website</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 32, 92, '', '2019-09-09 17:01:13'),
(102, 'capturedecran', 36, 'liens', 'Capture d’écran du site', '<r2r:ml lang="en">Website screenshot</r2r:ml><r2r:ml lang="es">Captura de pantalla</r2r:ml><r2r:ml lang="pt">Captação de ecrã do website</r2r:ml>', '', 'image', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 3, '', '2019-09-09 17:00:26'),
(103, 'auteur', 26, 'textessimples', 'Auteur', '<r2r:ml lang="en">Author</r2r:ml><r2r:ml lang="es">Autor</r2r:ml><r2r:ml lang="pt">Autor</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 32, 93, '', '2019-09-09 17:03:33'),
(104, 'langue', 12, 'publications', 'Langue de la publication', '<r2r:ml lang="en">Language of publication</r2r:ml><r2r:ml lang="es">Idioma de la publicación</r2r:ml><r2r:ml lang="pt">Língua da publicação</r2r:ml>', '', 'lang', 'dc.language', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 32, 8, '', '2019-10-05 11:11:00'),
(105, 'numerodocument', 31, 'textes', 'Numéro du document', '<r2r:ml lang="en">Document number</r2r:ml><r2r:ml lang="es">Número del documento</r2r:ml><r2r:ml lang="pt">Número do documento</r2r:ml>', 'numerodocument,numrodudocument,numerodudocument, documentnumber,documentnumber,numerodocumento', 'number', '', '*', '', '', 'style:none', 64, '', 'importable', '', '', 0, '', '', 1, 1, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:idno[@type=\'documentnumber\']', '2015-03-04 16:36:40'),
(112, 'nom', 28, 'individus', 'Nom', '<r2r:ml lang="en">Surname</r2r:ml><r2r:ml lang="es">Apellido</r2r:ml><r2r:ml lang="pt">Apelido</r2r:ml>', '', 'tinytext', 'dc.title', '*', '', '', '', 16, '', 'editable', '', '', 4, '', '', 1, 1, '', '2011-09-20 22:36:45'),
(113, 'prenom', 28, 'individus', 'Prénom', '<r2r:ml lang="en">Name</r2r:ml><r2r:ml lang="es">Nombre</r2r:ml><r2r:ml lang="pt">Nome próprio</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 16, '', 'editable', '', '', 4, '', '', 1, 2, '', '2011-09-20 22:37:03'),
(116, 'url', 19, 'textessimples', 'Lien', '<r2r:ml lang="en">Link</r2r:ml><r2r:ml lang="es">Enlace</r2r:ml><r2r:ml lang="pt">Hiperligação</r2r:ml>', '', 'url', '', '*', '', '', '', 16, '', 'none', '', '', 2, '', '', 1, 99, '', '2019-09-09 17:03:50'),
(117, 'date', 19, 'textessimples', 'Date de publication en ligne', '<r2r:ml lang="en">Date of online publication</r2r:ml><r2r:ml lang="es">Fecha de publicación electrónica</r2r:ml><r2r:ml lang="pt">Data de publicação online</r2r:ml>', '', 'datetime', '', '*', 'today', '', '', 16, '', 'editable', '', '', 0, '', '', 1, 100, '', '2019-10-04 17:27:42'),
(119, 'email', 30, 'individus', 'Courriel', '<r2r:ml lang="en">Email</r2r:ml><r2r:ml lang="es">Correo electrónico</r2r:ml><r2r:ml lang="pt">E-mail</r2r:ml>', '', 'email', '', '*', '', '', '', 16, '', 'editable', '', '', 4, '', '', 1, 3, '', '2011-09-20 22:38:01'),
(120, 'siteweb', 30, 'individus', 'Site web', '<r2r:ml lang="en">Website</r2r:ml><r2r:ml lang="es">Sitio web</r2r:ml><r2r:ml lang="pt">Website</r2r:ml>', '', 'url', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 1, 4, '', '2011-09-20 22:38:18'),
(121, 'description', 30, 'individus', 'Description', '<r2r:ml lang="en">Full description</r2r:ml><r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Descrição</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'fckeditor', 'Simple', '', 4, '', '', 1, 2, '', '2011-09-20 22:37:48'),
(122, 'accroche', 28, 'individus', 'Accroche', '<r2r:ml lang="en">Brief introduction</r2r:ml><r2r:ml lang="es">Destacado</r2r:ml><r2r:ml lang="pt">Apresentação sumária</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'fckeditor', 'Simple', '', 4, '', '', 1, 3, '', '2011-09-20 22:37:20'),
(123, 'adresse', 30, 'individus', 'Adresse', '<r2r:ml lang="en">Address</r2r:ml><r2r:ml lang="es">Dirección</r2r:ml><r2r:ml lang="pt">Endereço</r2r:ml>', '', 'text', '', '*', '', '', '', 16, '', 'editable', '3', '', 4, '', '', 1, 102, '', '2011-09-20 22:38:33'),
(124, 'telephone', 30, 'individus', 'Téléphone', '<r2r:ml lang="en">Phone number</r2r:ml><r2r:ml lang="es">Número de teléfono</r2r:ml><r2r:ml lang="pt">Telefone</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 16, '', 'editable', '', '', 4, '', '', 1, 103, '', '2011-09-20 22:38:49'),
(125, 'photographie', 28, 'individus', 'Photographie', '<r2r:ml lang="en">Illustration</r2r:ml><r2r:ml lang="es">Fotografía</r2r:ml><r2r:ml lang="pt">Imagem</r2r:ml>', '', 'image', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 1, 104, '', '2011-09-20 22:37:34'),
(127, 'directeurdelapublication', 12, 'publications', 'Directeur de la publication', '<r2r:ml lang="en">Academic editor</r2r:ml><r2r:ml lang="es">Director de la publicación</r2r:ml><r2r:ml lang="pt">Diretor da publicação</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 10, '', '2019-10-05 11:11:25'),
(128, 'legende', 38, 'fichiers', 'Légende', '<r2r:ml lang="en">Caption</r2r:ml><r2r:ml lang="es">Pie de foto</r2r:ml><r2r:ml lang="pt">Legenda</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 16, '', 'none', 'Basic', '', 4, '', '', 1, 4, '', '2019-11-12 14:03:54'),
(129, 'credits', 24, 'fichiers', 'Crédits', '<r2r:ml lang="en">Credits</r2r:ml><r2r:ml lang="es">Créditos</r2r:ml><r2r:ml lang="pt">Créditos</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 16, '', 'none', '', '', 4, '', '', 1, 108, '', '2019-11-12 14:04:30'),
(130, 'editeurscientifique', 14, 'textes', 'Éditeur scientifique', '<r2r:ml lang="en">Academic editor</r2r:ml><r2r:ml lang="es">Editor científico</r2r:ml><r2r:ml lang="pt">Coordenador científico</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 109, '', '2015-03-04 16:38:39'),
(131, 'geographie', 15, 'textes', 'Index géographique', '<r2r:ml lang="en">Geographical index</r2r:ml><r2r:ml lang="pt">Índice geográfico</r2r:ml><r2r:ml lang="es">Índice geográfico</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 7, '', '2015-03-05 14:32:53'),
(132, 'chrono', 15, 'textes', 'Index chronologique', '<r2r:ml lang="en">Chronological index</r2r:ml><r2r:ml lang="pt">Índice cronológico</r2r:ml><r2r:ml lang="es">Índice cronológico</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 9, '', '2015-03-05 14:31:57'),
(133, 'theme', 15, 'textes', 'Index thématique', '<r2r:ml lang="en">Subject index</r2r:ml><r2r:ml lang="pt">Índice temático</r2r:ml><r2r:ml lang="es">Índice temático</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 8, '', '2015-03-05 14:32:28'),
(134, 'nom', 0, 'indexavances', 'Dénomination de l’entrée d’index', '<r2r:ml lang="en">Entry name</r2r:ml><r2r:ml lang="es">Nombre de la entrada</r2r:ml><r2r:ml lang="pt">Designação da entrada do índice</r2r:ml>', '', 'tinytext', 'index key', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block', 16, '', 'editable', '', '', 4, '', '', 1, 113, '', '2011-09-20 23:21:15'),
(135, 'description', 0, 'indexavances', 'Description de l’entrée d’index', '<r2r:ml lang="en">Entry definition</r2r:ml><r2r:ml lang="es">Definición de la entrada</r2r:ml><r2r:ml lang="pt">Descrição da entrada do índice</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note', 16, '', 'fckeditor', 'Basic', '', 4, '', '', 1, 114, '', '2011-09-20 23:21:31'),
(136, 'url', 0, 'indexavances', 'URL', '<r2r:ml lang="en">URL</r2r:ml><r2r:ml lang="es">URL</r2r:ml><r2r:ml lang="pt">URL</r2r:ml>', '', 'url', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 1, 115, '', '2011-09-20 23:21:47'),
(137, 'icone', 0, 'indexavances', 'Icône', '<r2r:ml lang="en">Icon</r2r:ml><r2r:ml lang="es">Icono</r2r:ml><r2r:ml lang="pt">Ícone</r2r:ml>', '', 'image', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 1, 116, '', '2011-09-20 23:22:01'),
(138, 'licence', 33, 'textes', 'Licence portant sur le document', '<r2r:ml lang="en">Document license</r2r:ml><r2r:ml lang="es">Licencia acompañando el documento</r2r:ml><r2r:ml lang="pt">Licenciamento relativo ao documento</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 117, '', '2015-03-04 16:40:39'),
(139, 'licence', 12, 'publications', 'Licence portant sur la publication', '<r2r:ml lang="en">License</r2r:ml><r2r:ml lang="es">Licencia de la publicación</r2r:ml><r2r:ml lang="pt">Licenciamento relativo à publicação</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 9, '', '2015-03-04 16:32:56'),
(140, 'licence', 24, 'fichiers', 'Licence', '<r2r:ml lang="en">Document license</r2r:ml><r2r:ml lang="es">Licencia</r2r:ml><r2r:ml lang="pt">Licenciamento</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 118, '', '2019-11-12 14:04:39'),
(141, 'vignette', 38, 'fichiers', 'Vignette', '<r2r:ml lang="en">Small image</r2r:ml><r2r:ml lang="es">Viñeta</r2r:ml><r2r:ml lang="pt">Imagem miniatura</r2r:ml>', '', 'image', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 3, '', '2019-11-12 14:03:42'),
(142, 'alias', 16, 'textes', 'Alias', '<r2r:ml lang="en">Alias</r2r:ml><r2r:ml lang="pt">Alias</r2r:ml><r2r:ml lang="es">Alias</r2r:ml>', '', 'entities', '', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 119, '', '2015-03-04 16:46:26'),
(143, 'notefin', 32, 'textes', 'Notes de fin de document', '<r2r:ml lang="en">Endnotes</r2r:ml><r2r:ml lang="es">Notas al final del documento</r2r:ml><r2r:ml lang="pt">Notas de fim de documento</r2r:ml>', 'notefin,endnote', 'longtext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 32, '', 'importable', '', '', 4, '', '', 32, 3, '', '2011-09-20 22:07:15'),
(144, 'altertitre', 40, 'publications', 'Titre alternatif de la publication (dans une autre langue)', '<r2r:ml lang="en">Folder translated title (alternative title)</r2r:ml><r2r:ml lang="es">Título alternativo de la publicación (en otro idioma)</r2r:ml><r2r:ml lang="pt">Título traduzido da publicação</r2r:ml>', 'titretraduitfr:fr,titretraduiten:en,titretraduites:es,titretraduitpt:pt,titretraduitit:it,titretraduitde:de,titretraduitru:ru,titleen:en', 'mltext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Appel de Note', 32, '', 'none', '', '', 4, '', '', 1, 120, '', '2019-10-05 11:08:57'),
(147, 'motscleses', 15, 'textes', 'Palabras claves', '<r2r:ml lang="en">Palabras claves</r2r:ml><r2r:ml lang="es">Palabras claves</r2r:ml><r2r:ml lang="pt">Palabras claves</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 3, '', '2015-03-05 14:32:33'),
(148, 'motsclesde', 15, 'textes', 'Schlagwortindex', '<r2r:ml lang="en">Schlagwortindex</r2r:ml><r2r:ml lang="es">Schlagwortindex</r2r:ml><r2r:ml lang="pt">Schlagwortindex</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 4, '', '2015-03-05 14:32:40'),
(149, 'urlpublicationediteur', 13, 'publications', 'Voir sur le site de l’éditeur', '<r2r:ml lang="en">Publisher’s website</r2r:ml><r2r:ml lang="es">Ver en el sitio del editor</r2r:ml><r2r:ml lang="pt">Website do editor</r2r:ml>', '', 'url', '', '*', '', '', '', 32, '', 'none', '', '', 0, '', '', 1, 3, '', '2019-10-05 11:09:31'),
(150, 'nombremaxitems', 36, 'liens', 'Nombre maximum d’items du flux', '<r2r:ml lang="en">Maximum number of feed items</r2r:ml><r2r:ml lang="es">Número máximo de elementos del fuente web</r2r:ml><r2r:ml lang="pt">Número máximo de itens de feed RSS</r2r:ml>', '', 'int', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 124, '', '2019-09-09 17:00:53'),
(151, 'descriptionouvrage', 12, 'publications', 'Description physique de l’ouvrage', '<r2r:ml lang="en">Physical description</r2r:ml><r2r:ml lang="es">Descripción física de la obra</r2r:ml><r2r:ml lang="pt">Descrição física da publicação</r2r:ml>', '', 'text', '', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 32, 125, '', '2019-10-05 11:11:40'),
(152, 'site', 0, 'entities_auteurs', 'Site', '<r2r:ml lang="en">Website</r2r:ml><r2r:ml lang="es">Sitio web</r2r:ml><r2r:ml lang="pt">Website</r2r:ml>', 'site, .site, website,website,sitioweb', 'url', '', '*', '', '', '', 32, '', 'importable', '', '', 4, '', '', 1, 6, '//tei:ref[@type=\'website\']', '2015-03-05 14:35:44'),
(164, 'traduction', 16, 'textes', 'Ce document est une traduction de :', '<r2r:ml lang="en">The document is a translation of:</r2r:ml><r2r:ml lang="es">Este texto es une traducción de :</r2r:ml><r2r:ml lang="pt">Este documento foi traduzido por:</r2r:ml>', '', 'entities', '', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 126, '', '2019-10-05 11:19:51'),
(165, 'altertitre', 18, 'textessimples', 'Titre alternatif du document (dans une autre langue)', '<r2r:ml lang="en">Translated title (alternative title)</r2r:ml><r2r:ml lang="es">Título alternativo del documento (en otro idioma)</r2r:ml><r2r:ml lang="pt">Título traduzido do documento</r2r:ml>', '', 'mltext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Lien;Appel de Note', 16, '', 'none', '', '', 0, '', '', 1, 127, '', '2019-09-09 17:04:17'),
(166, 'altertitre', 35, 'liens', 'Titre alternatif (dans une autre langue)', '<r2r:ml lang="en">Translated title (alternative title)</r2r:ml><r2r:ml lang="es">Título alternativo del documento (en otro idioma)</r2r:ml><r2r:ml lang="pt">Título traduzido</r2r:ml>', '', 'mltext', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;Lien;Appel de Note', 16, '', 'none', '', '', 0, '', '', 1, 128, '', '2019-09-09 17:59:39'),
(167, 'imagehabillee', 16, 'textes', 'Habillage des images', '<r2r:ml lang="en">Image display: runaround mode</r2r:ml><r2r:ml lang="es">Imágenes fluidas en torno al texto</r2r:ml><r2r:ml lang="pt">Moldagem de texto junto às imagens</r2r:ml>', '', 'boolean', '', '*', '1', '', '', 64, '', 'none', '', '', 0, '', '', 1, 129, '', '2019-10-05 11:20:04'),
(170, 'fichierreference', 53, 'textes', 'Fichier de référence', '<r2r:ml lang="en">Reference file</r2r:ml><r2r:ml lang="es">Archivo de referencia</r2r:ml><r2r:ml lang="pt">Ficheiro de referência</r2r:ml>', '', 'boolean', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 7, '', '2019-10-05 11:18:37'),
(182, 'titre', 48, 'fichiersexternes', 'Titre', '<r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Título</r2r:ml><r2r:ml lang="en">Title</r2r:ml>', '', 'tinytext', 'dc.title', '*', '', '', 'xhtml:fontstyle;xhtml:phrase', 64, '', 'editable', '', '', 0, '', '', 32, 130, '', '2012-04-02 17:04:22'),
(183, 'object', 49, 'fichiersexternes', 'Objet', '<r2r:ml lang="es">Objeto</r2r:ml><r2r:ml lang="pt">Objecto</r2r:ml><r2r:ml lang="en">Object</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 64, '', 'editable', '5', '', 0, '', '', 32, 131, '', '2011-09-20 23:03:16'),
(184, 'description', 49, 'fichiersexternes', 'Description', '<r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Descrição</r2r:ml><r2r:ml lang="en">Description</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 64, '', 'fckeditor', '', '', 0, '', '', 32, 132, '', '2011-09-20 23:03:44'),
(185, 'vignette', 49, 'fichiersexternes', 'Vignette', '<r2r:ml lang="es">Viñeta</r2r:ml><r2r:ml lang="en">Small image</r2r:ml><r2r:ml lang="pt">Imagem miniatura</r2r:ml>', '', 'image', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 133, '', '2011-09-20 23:04:19'),
(186, 'legende', 49, 'fichiersexternes', 'Légende', '<r2r:ml lang="es">Pie de foto</r2r:ml><r2r:ml lang="pt">Legenda</r2r:ml><r2r:ml lang="en">Caption</r2r:ml>', '', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien', 64, '', 'fckeditor', '', '', 0, '', '', 32, 134, '', '2011-09-20 23:04:51'),
(187, 'datepubli', 49, 'fichiersexternes', 'Date de publication', '<r2r:ml lang="es">Fecha de online</r2r:ml><r2r:ml lang="pt">Data de publicação</r2r:ml><r2r:ml lang="en">Published online since</r2r:ml>', '', 'date', '', '*', 'today', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 135, '', '2011-09-20 23:05:33'),
(188, 'urlaccesmedia', 49, 'fichiersexternes', 'Permalien', '<r2r:ml lang="es">Permalink</r2r:ml><r2r:ml lang="en">Permalink</r2r:ml><r2r:ml lang="pt">Ligação permanente</r2r:ml>', '', 'url', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 136, '', '2011-09-20 23:06:02'),
(189, 'urlmedia', 49, 'fichiersexternes', 'url du média', '<r2r:ml lang="es">URL del objeto multimedia</r2r:ml><r2r:ml lang="pt">Url do media</r2r:ml><r2r:ml lang="en">Media URL</r2r:ml>', '', 'url', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 137, '', '2011-09-20 23:06:42'),
(190, 'auteur', 50, 'fichiersexternes', 'Auteur', '<r2r:ml lang="es">Autor</r2r:ml><r2r:ml lang="en">Author</r2r:ml><r2r:ml lang="pt">Autor</r2r:ml>', '', 'persons', '', '', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 138, '', '2011-09-20 23:07:13'),
(191, 'credits', 50, 'fichiersexternes', 'Crédits', '<r2r:ml lang="es">Créditos</r2r:ml><r2r:ml lang="en">Credits</r2r:ml><r2r:ml lang="pt">Créditos</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 139, '', '2011-09-20 23:07:33'),
(192, 'licence', 50, 'fichiersexternes', 'Licence', '<r2r:ml lang="es">Licencia</r2r:ml><r2r:ml lang="pt">Licenciamento</r2r:ml><r2r:ml lang="en">License</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 140, '', '2011-09-20 23:08:09'),
(193, 'datepubli', 38, 'fichiers', 'Date de publication', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="pt">Data de publicação</r2r:ml>', '', 'date', '', '*', 'today', '', '', 64, '', 'importable', '', '', 0, '', '', 32, 141, '', '2019-11-12 14:04:08'),
(194, 'datemisenligne', 41, 'textes', 'Date de mise en ligne', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'display', '', 'updatedatepubli', 0, '', '', 32, 1, '', '2013-07-26 11:45:38'),
(195, 'dateacceslibre', 41, 'textes', 'Date de mise en accès libre', '<r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="es">Fecha de disponibilidad en acceso abierto</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:50:17'),
(196, 'datemisenligne', 42, 'publications', 'Date de mise en ligne', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'none', '', 'updatedatepubli', 0, '', '', 32, 1, '', '2019-10-05 11:14:19'),
(197, 'dateacceslibre', 42, 'publications', 'Date de mise en accès libre', '<r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="es">Fecha de disponibilidad en acceso abierto</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:49:38'),
(198, 'datemisenligne', 44, 'fichiers', 'Date de mise en ligne', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'importable', '', 'updatedatepubli', 0, '', '', 32, 1, '', '2019-11-12 14:04:52'),
(199, 'dateacceslibre', 44, 'fichiers', 'Date de mise en accès libre', '<r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="es">Fecha de disponibilidad en acceso abierto</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:53:14'),
(200, 'datemisenligne', 45, 'liens', 'Date de mise en ligne', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'display', '', 'updatedatepubli', 0, '', '', 32, 1, '', '2013-07-26 11:45:38'),
(201, 'dateacceslibre', 45, 'liens', 'Date de mise en accès libre', '<r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="es">Fecha de disponibilidad en acceso abierto</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:53:52'),
(202, 'datemisenligne', 46, 'textessimples', 'Date de mise en ligne', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'importable', '', 'updatedatepubli', 0, '', '', 32, 1, '', '2019-10-04 17:29:50'),
(203, 'dateacceslibre', 46, 'textessimples', 'Date de mise en accès libre', '<r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="es">Fecha de disponibilidad en acceso abierto</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:51:05'),
(204, 'datemisenligne', 47, 'individus', 'Date de mise en ligne', '<r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="es">Fecha de online</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'display', '', 'updatedatepubli', 0, '', '', 32, 1, '', '2013-07-26 11:45:38'),
(205, 'dateacceslibre', 47, 'individus', 'Date de mise en accès libre', '<r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="es">Fecha de acceso abierto</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:51:46'),
(206, 'datemisenligne', 51, 'fichiersexternes', 'Date de mise en ligne', '<r2r:ml lang="es">Fecha de publicación online</r2r:ml><r2r:ml lang="en">Published online since</r2r:ml><r2r:ml lang="pt">Data de colocação online</r2r:ml>', '', 'date', '', 'permanent', '', '', '', 16, '', 'display', '', 'updatedatepubli', 0, '', '', 1, 1, '', '2013-07-26 11:45:38'),
(207, 'dateacceslibre', 51, 'fichiersexternes', 'Date de mise en accès libre', '<r2r:ml lang="es">Fecha de disponibilidad en acceso abierto</r2r:ml><r2r:ml lang="en">Available in open access since</r2r:ml><r2r:ml lang="pt">Data de  publicação em acesso livre</r2r:ml>', '', 'date', '', '*', '', '', '', 16, '', 'none', '', '', 0, '', '', 32, 2, '', '2015-06-26 11:54:56'),
(208, 'motsclespt', 15, 'textes', 'Palavras chaves', '<r2r:ml lang="en">Palavras chaves</r2r:ml><r2r:ml lang="es">Palavras chaves</r2r:ml><r2r:ml lang="pt">Palavras chaves</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 5, '', '2015-03-05 14:32:45'),
(209, 'titre', 0, 'collections', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Título</r2r:ml>', '', 'tinytext', 'index key', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 1, 143, '', '2011-10-27 09:47:16'),
(210, 'soustitre', 0, 'collections', 'Sous-titre', '<r2r:ml lang="en">Subtitle</r2r:ml><r2r:ml lang="es">Subtítulo</r2r:ml><r2r:ml lang="pt">Subtítulo</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 1, 144, '', '2011-10-27 09:48:07'),
(211, 'issn', 0, 'collections', 'ISSN', '<r2r:ml lang="en">ISSN</r2r:ml><r2r:ml lang="es">ISSN</r2r:ml><r2r:ml lang="fr">ISSN</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 1, 145, '', '2011-10-27 09:49:16'),
(212, 'issnelectronique', 0, 'collections', 'ISSN électronique', '<r2r:ml lang="en">e-ISSN</r2r:ml><r2r:ml lang="es">ISSN de la edición electrónica</r2r:ml><r2r:ml lang="pt">ISSN electrónico</r2r:ml>', '', 'tinytext', '', '*', '', '', '', 64, '', 'display', '', '', 0, '', '', 1, 146, '', '2011-10-27 09:51:06'),
(213, 'Collection', 12, 'publications', 'Collection', '<r2r:ml lang="en">Collection</r2r:ml><r2r:ml lang="es">Colección</r2r:ml><r2r:ml lang="pt">Coleção</r2r:ml>', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 147, '', '2011-10-27 09:55:45'),
(214, 'motsclesfr', 52, 'publications', 'Mots-clés', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 1, '', '2019-10-05 11:11:59'),
(215, 'motsclesen', 52, 'publications', 'Keywords', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 2, '', '2019-10-05 11:12:07'),
(216, 'motsclesde', 52, 'publications', 'Schlagwortindex', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 3, '', '2019-10-05 11:12:15'),
(217, 'motscleses', 52, 'publications', 'Palabras claves', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 4, '', '2019-10-05 11:12:23'),
(218, 'motsclespt', 52, 'publications', 'Palavras chaves', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 5, '', '2019-10-05 11:12:32'),
(219, 'theme', 52, 'publications', 'Index thématique', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 7, '', '2019-10-05 11:12:49'),
(220, 'geographie', 52, 'publications', 'Index géographique', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 9, '', '2019-10-05 11:12:57'),
(221, 'vignette', 36, 'liens', 'Vignette', '<r2r:ml lang="es">Viñeta</r2r:ml><r2r:ml lang="en">Small image</r2r:ml><r2r:ml lang="pt">Imagem miniatura</r2r:ml>', '', 'image', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 1, 155, '', '2012-02-01 10:22:52'),
(222, 'vignettesimple', 16, 'textes', 'Vignettisation simple', '<r2r:ml lang="en">Simple thumbnail</r2r:ml><r2r:ml lang="pt">Imagem miniatura simples</r2r:ml>', '', 'boolean', '', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 156, '', '2019-10-05 11:20:17'),
(223, 'rss', 11, 'publications', 'Afficher un flux RSS pour cette publication', '<r2r:ml lang="en">Display RSS feed for this publication</r2r:ml><r2r:ml lang="pt">Visualizar um feeds RSS para essa publicação</r2r:ml>', '', 'boolean', '', '*', '', '', '', 32, '', 'none', '', '', 0, '', '', 1, 157, '', '2015-06-26 11:40:19'),
(224, 'remerciements', 34, 'textes', 'Remerciements', '', 'remerciements,acknowledgments,acknowledgements,agradecimientos', 'text', '', '*', '', '', 'xhtml:fontstyle;xhtml:phrase;xhtml:special;xhtml:block;Lien;Appel de Note;style:strict', 64, '', 'importable', '', '', 2, '', '', 1, 158, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'ack\']/tei:p', '2013-09-06 10:03:21'),
(225, 'racinemets', 11, 'publications', 'Racine METS', '', '', 'boolean', '', '*', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 159, '', '2015-03-04 16:31:04'),
(226, 'motsclesit', 52, 'publications', 'Parole chiave', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 6, '', '2019-10-05 11:12:40'),
(227, 'chrono', 52, 'publications', 'Index chronologique', '', '', 'entries', '', '', '', '', '', 64, '', 'none', '', '', 0, '', '', 1, 160, '', '2019-10-05 11:13:08'),
(228, 'motsclesit', 15, 'textes', 'Parole chiave', '', '', 'entries', '', '', '', '', '', 64, '', 'importable', '', '', 0, '', '', 1, 6, '', '2015-03-05 14:32:53'),
(233, 'datedexpiration', 55, 'textessimples', 'Date d\'expiration de l\'actualité', '', '', 'date', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 32, 165, '', '2019-09-09 17:06:14'),
(234, 'vignette', 55, 'textessimples', 'Vignette', '', '', 'image', '', '*', '', '', '', 16, '', 'editable', '', '', 0, '', '', 1, 166, '', '2019-09-09 17:06:43'),
(238, 'titre', 57, 'liensinternes', 'Titre', '', '', 'tinytext', 'dc.title', '+', 'Lien sans titre', '', '', 16, '', 'editable', '', '', 0, '', '', 32, 167, '', '2019-10-01 19:31:13'),
(239, 'description', 57, 'liensinternes', 'Description', '', '', 'text', '', '*', '', '', '', 64, '', 'wysiwyg_ckeditor', '', '', 0, '', '', 1, 168, '', '2019-10-01 19:31:13'),
(240, 'cible', 57, 'liensinternes', 'Entité cible', '', '', 'entities', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 1, 169, '', '2019-10-01 19:31:13'),
(241, 'vignette', 57, 'liensinternes', 'Vignette', '', '', 'image', '', '*', '', '', '', 64, '', 'editable', '', '', 0, '', '', 1, 170, '', '2019-10-01 19:31:13'),
(243, 'disciplines', 56, 'liens', 'Discipline', '', '', 'entries', '', '', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 171, '', '2019-10-07 15:15:01'),
(244, 'typesderevues', 56, 'liens', 'Type de revue', '', '', 'entries', '', '', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 172, '', '2019-10-07 15:14:48'),
(245, 'institutions', 56, 'liens', 'Institution', '', '', 'entries', '', '', '', '', '', 64, '', 'editable', '', '', 0, '', '', 32, 173, '', '2019-10-07 15:14:40'),
(246, 'nom', 0, 'filtrescatalogue', 'Nom du filtre', '', '', 'text', 'index key', '*', '', '', '', 16, '', 'editable', '', '', 4, '', '', 32, 174, '', '2019-10-07 15:20:08'),
(247, 'soustitre', 35, 'liens', 'Sous-titre', '', '', 'text', '', '*', '', '', '', 16, '', 'editable', '', '', 2, '', '', 32, 175, '', '2019-10-07 22:56:58');

#
# Dumping data for table 'tablefieldgroups'
#

INSERT INTO #_TP_tablefieldgroups (id, name, class, title, altertitle, comment, status, rank, upd) VALUES (11, 'grgestion', 'publications', 'Gestion des publications', '<r2r:ml lang="en">Publishing options</r2r:ml><r2r:ml lang="es">Opciones de las publicaciones</r2r:ml><r2r:ml lang="pt">Publicações</r2r:ml>', '', 1, 5, '2011-10-27 10:14:00'),
(12, 'grmetadonnees', 'publications', 'Groupe des métadonnées', '<r2r:ml lang="en">Metadata section</r2r:ml><r2r:ml lang="es">Metadatos</r2r:ml><r2r:ml lang="pt">Metdados</r2r:ml>', '', 32, 3, '2011-09-21 11:58:16'),
(13, 'graddenda', 'publications', 'Groupe des addenda', '<r2r:ml lang="en">Addenda section</r2r:ml><r2r:ml lang="es">Adenda</r2r:ml><r2r:ml lang="pt">Adenda</r2r:ml>', '', 32, 2, '2011-09-21 11:58:02'),
(14, 'grpersonnes', 'textes', 'Auteurs', '<r2r:ml lang="en">Authors</r2r:ml><r2r:ml lang="es">Autores</r2r:ml><r2r:ml lang="pt">Autores</r2r:ml>', '', 1, 7, '2015-03-04 17:21:00'),
(15, 'grindex', 'textes', 'Index', '<r2r:ml lang="en">Indexes</r2r:ml><r2r:ml lang="es">Indices</r2r:ml><r2r:ml lang="pt">Índice</r2r:ml>', '', 1, 9, '2015-03-04 17:21:00'),
(16, 'grgestion', 'textes', 'Gestion du document', '<r2r:ml lang="en">Document management</r2r:ml><r2r:ml lang="es">Gestión del documento</r2r:ml><r2r:ml lang="pt">Gestão do documento</r2r:ml>', '', 1, 5, '2015-03-04 17:21:00'),
(17, 'grrecension', 'textes', 'Oeuvre commentée (si ce document est un compte-rendu d\'oeuvre ou d\'ouvrage...)', '<r2r:ml lang="es">Obra comentada (si el documento es una reseña)</r2r:ml><r2r:ml lang="pt">Obra comentada (se este documento é uma recensão de obra)</r2r:ml>', '', 1, 4, '2015-03-04 17:20:09'),
(18, 'grtitre', 'textessimples', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Título</r2r:ml>', '', 1, 10, '2011-09-21 12:02:44'),
(19, 'grtexte', 'textessimples', 'Texte', '<r2r:ml lang="en">Text</r2r:ml><r2r:ml lang="es">Texto</r2r:ml><r2r:ml lang="pt">Texto</r2r:ml>', '', 1, 11, '2011-09-21 12:02:54'),
(24, 'grdroits', 'fichiers', 'Droits', '<r2r:ml lang="en">License</r2r:ml><r2r:ml lang="es">Derechos</r2r:ml><r2r:ml lang="pt">Direitos</r2r:ml>', '', 32, 16, '2011-09-21 12:04:42'),
(25, 'grauteurs', 'liens', 'Auteurs', '<r2r:ml lang="en">Authors</r2r:ml><r2r:ml lang="es">Autores</r2r:ml><r2r:ml lang="pt">Autores</r2r:ml>', '', 32, 17, '2011-09-21 12:06:10'),
(26, 'grauteurs', 'textessimples', 'Auteurs', '<r2r:ml lang="en">Authors</r2r:ml><r2r:ml lang="es">Autores</r2r:ml><r2r:ml lang="pt">Autores</r2r:ml>', '', 32, 18, '2011-09-21 12:03:06'),
(28, 'grtitre', 'individus', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Títulos</r2r:ml>', '', 1, 20, '2011-09-21 12:03:38'),
(30, 'grdescription', 'individus', 'Description', '<r2r:ml lang="en">Description</r2r:ml><r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Descrição</r2r:ml>', '', 1, 21, '2011-09-21 12:03:48'),
(31, 'grtitre', 'textes', 'Titres', '<r2r:ml lang="en">Titles</r2r:ml><r2r:ml lang="es">Títulos</r2r:ml><r2r:ml lang="pt">Títulos</r2r:ml>', '', 1, 1, '2011-09-21 11:59:46'),
(32, 'grtexte', 'textes', 'Texte', '<r2r:ml lang="en">Text</r2r:ml><r2r:ml lang="es">Texto</r2r:ml><r2r:ml lang="pt">Texto</r2r:ml>', '', 1, 11, '2015-03-04 17:21:00'),
(33, 'grmeta', 'textes', 'Métadonnées', '<r2r:ml lang="en">Metadata</r2r:ml><r2r:ml lang="es">Metadatos</r2r:ml><r2r:ml lang="pt">Metadados</r2r:ml>', '', 1, 2, '2015-03-04 17:17:44'),
(34, 'graddenda', 'textes', 'Addenda', '<r2r:ml lang="en">Addenda</r2r:ml><r2r:ml lang="es">Adenda</r2r:ml><r2r:ml lang="pt">Adenda</r2r:ml>', '', 1, 10, '2015-03-04 17:21:00'),
(35, 'grtitre', 'liens', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Títulos</r2r:ml>', '', 1, 5, '2011-09-21 12:05:27'),
(36, 'grsite', 'liens', 'Description', '<r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Definição</r2r:ml>', '', 1, 6, '2011-09-21 12:05:35'),
(37, 'grtitre', 'fichiers', 'Titre', '<r2r:ml lang="en">Title</r2r:ml><r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Títulos</r2r:ml>', '', 1, 7, '2011-09-21 12:04:20'),
(38, 'grmultimedia', 'fichiers', 'Définition', '<r2r:ml lang="en">Description</r2r:ml><r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Definição</r2r:ml>', '', 1, 8, '2011-09-21 12:04:30'),
(39, 'grresumes', 'textes', 'Résumés', '<r2r:ml lang="en">Abstracts</r2r:ml><r2r:ml lang="es">Resumenes</r2r:ml><r2r:ml lang="pt">Resumos</r2r:ml>', '', 1, 8, '2015-03-04 17:21:00'),
(40, 'grtitre', 'publications', 'Groupe de titre', '<r2r:ml lang="en">Title section</r2r:ml><r2r:ml lang="es">Titulo</r2r:ml><r2r:ml lang="pt">Títulos</r2r:ml>', '', 32, 1, '2011-09-21 11:57:42'),
(41, 'grdates', 'textes', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml><r2r:ml lang="en">Dates</r2r:ml>', '', 32, 6, '2015-03-04 17:21:00'),
(42, 'grdates', 'publications', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml><r2r:ml lang="en">Dates</r2r:ml>', '', 32, 7, '2011-10-27 10:14:00'),
(43, 'grdiffusionfichierselectroniques', 'publications', 'Diffusion des fichiers électroniques', '<r2r:ml lang="es">Difusión de los archivos</r2r:ml><r2r:ml lang="pt">Difusão dos fichieros electrónicos</r2r:ml>', '', 32, 8, '2011-10-27 10:13:57'),
(44, 'grdates', 'fichiers', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml>', '', 32, 17, '2011-09-21 12:04:53'),
(45, 'grdates', 'liens', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml>', '', 32, 18, '2011-09-21 12:06:21'),
(46, 'grdates', 'textessimples', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml>', '', 32, 19, '2011-09-21 12:03:16'),
(47, 'grdates', 'individus', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml>', '', 32, 22, '2011-09-21 12:03:59'),
(48, 'grtitre', 'fichiersexternes', 'Titre', '<r2r:ml lang="es">Título</r2r:ml><r2r:ml lang="pt">Títulos</r2r:ml><r2r:ml lang="en">Title</r2r:ml>', '', 32, 23, '2012-04-02 17:04:04'),
(49, 'grdefinition', 'fichiersexternes', 'Définition', '<r2r:ml lang="es">Descripción</r2r:ml><r2r:ml lang="pt">Definição</r2r:ml>', '', 32, 24, '2011-09-21 12:06:49'),
(50, 'grdroits', 'fichiersexternes', 'Droits', '<r2r:ml lang="es">Derechos</r2r:ml><r2r:ml lang="pt">Direitos</r2r:ml><r2r:ml lang="en">License</r2r:ml>', '', 32, 25, '2012-04-02 17:11:22'),
(51, 'grdates', 'fichiersexternes', 'Groupe des dates', '<r2r:ml lang="es">Fechas</r2r:ml><r2r:ml lang="pt">Grupo de datas</r2r:ml><r2r:ml lang="en">Dates</r2r:ml>', '', 32, 26, '2012-04-02 17:12:10'),
(52, 'grindex', 'publications', 'Index', '', '', 32, 4, '2011-10-27 10:14:00'),
(53, 'grfacsimile', 'textes', 'Fac-similé PDF', '', '', 1, 3, '2015-03-04 17:17:44'),
(55, 'actualites', 'textessimples', 'Actualités', '', '', 1, 28, '2019-09-09 17:05:24'),
(56, 'index', 'liens', 'Index', '', '', 32, 29, '2019-09-09 17:45:53'),
(57, 'informations', 'liensinternes', 'Informations', '', '', 32, 30, '2019-10-01 19:31:13');

#
# Dumping data for table 'types'
#

INSERT INTO #_TP_types (id, icon, type, title, altertitle, class, tpl, tplcreation, tpledition, import, display, creationstatus, search, public, gui_user_complexity, oaireferenced, rank, status, upd) VALUES (1, '', 'actualite', 'Annonce et actualité', '<r2r:ml lang="en">Announcement</r2r:ml><r2r:ml lang="es">Noticia</r2r:ml><r2r:ml lang="pt">Notícia</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 32, 0, 3, 32, '2019-09-05 09:46:02'),
(2, '', 'animation', 'Animation distante', '<r2r:ml lang="es">Animación externa</r2r:ml><r2r:ml lang="pt">Animação remota</r2r:ml><r2r:ml lang="en">Remote animation</r2r:ml>', 'fichiersexternes', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 0, 39, 32, '2019-09-05 09:46:03'),
(3, '', 'animation', 'Animation', '<r2r:ml lang="en">Animation</r2r:ml><r2r:ml lang="es">Animación</r2r:ml><r2r:ml lang="pt">Animação</r2r:ml>', 'fichiers', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 0, 44, 32, '2019-09-05 09:46:04'),
(4, '', 'animationannexe', 'Animation distante placée en annexe', '<r2r:ml lang="es">Animación externa en anexo</r2r:ml><r2r:ml lang="en">Remote appended animation</r2r:ml><r2r:ml lang="pt">Animação remota como anexo</r2r:ml>', 'fichiersexternes', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 43, 32, '2019-09-05 09:46:05'),
(5, '', 'animationannexe', 'Animation placée en annexe', '<r2r:ml lang="en">Appended animation</r2r:ml><r2r:ml lang="es">Animación en anexo</r2r:ml><r2r:ml lang="pt">Animação como anexo</r2r:ml>', 'fichiers', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 45, 32, '2019-09-05 09:46:05'),
(6, '', 'annuairedequipe', 'Équipe', '<r2r:ml lang="en">Directory of persons</r2r:ml><r2r:ml lang="es">Equipo</r2r:ml><r2r:ml lang="pt">Corpo editorial</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 8, 32, '2019-09-05 09:46:05'),
(7, '', 'annuairedesites', 'Annuaire de sites', '<r2r:ml lang="en">Directory of websites</r2r:ml><r2r:ml lang="es">Directorio de sitios web</r2r:ml><r2r:ml lang="pt">Diretório de websites</r2r:ml>', 'publications', 'catalogue', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 7, 32, '2019-11-20 11:11:50'),
(8, '', 'annuairemedias', 'Médiathèque', '<r2r:ml lang="en">Media library</r2r:ml><r2r:ml lang="es">Mediateca</r2r:ml><r2r:ml lang="pt">Mediateca</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 9, 32, '2019-09-05 09:46:05'),
(9, '', 'article', 'Article', '<r2r:ml lang="en">Article</r2r:ml><r2r:ml lang="es">Artículo</r2r:ml><r2r:ml lang="pt">Artigo</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 16, 1, 2, 1, '2019-09-05 09:46:05'),
(10, '', 'billet', 'Billet', '<r2r:ml lang="en">Note</r2r:ml><r2r:ml lang="es">Texto breve</r2r:ml><r2r:ml lang="pt">Post</r2r:ml>', 'textessimples', 'article', 'entities', '', 0, '', -1, 1, 0, 16, 0, 1, 1, '2019-09-05 09:46:06'),
(11, '', 'chronique', 'Chronique', '<r2r:ml lang="en">Chronicle</r2r:ml><r2r:ml lang="es">Crónica</r2r:ml><r2r:ml lang="pt">Crónica</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 64, 0, 8, 32, '2019-09-05 09:46:06'),
(12, '', 'collection', 'Collection', '<r2r:ml lang="en">Collection</r2r:ml><r2r:ml lang="es">Colección</r2r:ml><r2r:ml lang="pt">Coleção</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 1, 32, '2019-09-05 09:46:06'),
(13, 'lodel/icons/commentaire.gif', 'commentaire', 'Commentaire du document', '<r2r:ml lang="en">Comment</r2r:ml><r2r:ml lang="es">Comentario</r2r:ml><r2r:ml lang="pt">Comentário sobre o documento</r2r:ml>', 'textessimples', '', 'entities', '', 0, 'advanced', -1, 1, 1, 16, 0, 2, 1, '2019-09-05 09:46:06'),
(14, '', 'compterendu', 'Compte-rendu', '<r2r:ml lang="en">Book review</r2r:ml><r2r:ml lang="es">Reseña</r2r:ml><r2r:ml lang="pt">Recensão</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 32, 1, 5, 32, '2019-09-05 09:46:06'),
(15, '', 'editorial', 'Éditorial', '<r2r:ml lang="en">Editorial</r2r:ml><r2r:ml lang="es">Editorial</r2r:ml><r2r:ml lang="pt">Editorial</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 32, 1, 1, 32, '2019-09-05 09:46:07'),
(16, '', 'fichierannexe', 'Fichier placé en annexe', '<r2r:ml lang="en">Appended file</r2r:ml><r2r:ml lang="es">Archivo en anexo</r2r:ml><r2r:ml lang="pt">Ficheiro anexo</r2r:ml>', 'fichiers', '', 'entities', '', 0, 'advanced', -1, 1, 0, 32, 0, 7, 1, '2019-11-14 13:18:49'),
(17, 'lodel/icons/rss.gif', 'fluxdesyndication', 'Flux de syndication', '<r2r:ml lang="en">RSS feed</r2r:ml><r2r:ml lang="es">Fuente web</r2r:ml><r2r:ml lang="pt">Feed RSS</r2r:ml>', 'liens', 'lien', 'entities', '', 0, '', -1, 1, 0, 64, 0, 30, 1, '2019-09-05 09:46:07'),
(18, '', 'image', 'Image', '<r2r:ml lang="en">Image file</r2r:ml><r2r:ml lang="es">Imagen</r2r:ml><r2r:ml lang="pt">Imagem</r2r:ml>', 'fichiers', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 1, 1, 1, '2019-09-05 09:46:07'),
(19, '', 'image', 'Image distante', '<r2r:ml lang="es">Imagen externa</r2r:ml><r2r:ml lang="pt">Imagem remota</r2r:ml><r2r:ml lang="en">Remote image</r2r:ml>', 'fichiersexternes', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 0, 36, 32, '2019-09-05 09:46:08'),
(20, '', 'imageaccroche', 'Image d’accroche', '<r2r:ml lang="en">Introductory image</r2r:ml><r2r:ml lang="es">Imagen destacada</r2r:ml><r2r:ml lang="pt">Imagem de apresentação</r2r:ml>', 'fichiers', 'image', 'entities', '', 0, 'advanced', -1, 1, 0, 16, 0, 31, 32, '2019-09-05 09:46:08'),
(21, '', 'image_annexe', 'Image placée en annexe', '<r2r:ml lang="en">Appended image file</r2r:ml><r2r:ml lang="es">Imagen en anexo</r2r:ml><r2r:ml lang="pt">Imagem como anexo</r2r:ml>', 'fichiers', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 2, 1, '2019-09-05 09:46:08'),
(22, '', 'image_annexe', 'Image distante placée en annexe', '<r2r:ml lang="es">Imagen externa en anexo</r2r:ml><r2r:ml lang="pt">Imagem remota como anexo</r2r:ml><r2r:ml lang="en">Remote appended image</r2r:ml>', 'fichiersexternes', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 40, 32, '2019-09-05 09:46:08'),
(23, '', 'individu', 'Notice biographique de membre', '<r2r:ml lang="en">Biographical presentation</r2r:ml><r2r:ml lang="es">Biografía</r2r:ml><r2r:ml lang="pt">Nota biográfica</r2r:ml>', 'individus', 'individu', 'entities', '', 0, '', -1, 1, 0, 16, 0, 25, 1, '2019-09-05 09:46:08'),
(24, '', 'informations', 'Page d\'informations', '<r2r:ml lang="en">Information note</r2r:ml><r2r:ml lang="es">Informaciones</r2r:ml><r2r:ml lang="pt">Informações práticas</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 32, 0, 7, 32, '2019-10-05 11:26:13'),
(25, '', 'lienannexe', 'Lien placé en annexe', '<r2r:ml lang="en">Appended link</r2r:ml><r2r:ml lang="es">Enlace en anexo</r2r:ml><r2r:ml lang="pt">Hiperligação como anexo</r2r:ml>', 'liens', 'lien', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 24, 1, '2019-09-05 09:46:09'),
(26, '', 'notedelecture', 'Note de lecture', '<r2r:ml lang="en">Critical note</r2r:ml><r2r:ml lang="es">Nota crítica</r2r:ml><r2r:ml lang="pt">Nota de leitura</r2r:ml>', 'textes', 'article', 'entities', '', 1, '', -1, 1, 0, 64, 1, 6, 32, '2019-09-05 09:46:09'),
(27, '', 'noticedesite', 'Notice de site', '<r2r:ml lang="en">Website presentation</r2r:ml><r2r:ml lang="es">Reseña de sitio web</r2r:ml><r2r:ml lang="pt">Ficha do website</r2r:ml>', 'liens', '', 'entities', '', 0, '', -1, 1, 0, 64, 0, 16, 1, '2019-11-14 13:18:08'),
(28, 'lodel/icons/volume.gif', 'numero', 'Numéro de revue', '<r2r:ml lang="en">Issue</r2r:ml><r2r:ml lang="es">Número de revista</r2r:ml><r2r:ml lang="pt">Número de revista</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 32, 0, 3, 32, '2019-09-05 09:46:10'),
(29, 'lodel/icons/rubrique.gif', 'rubrique', 'Rubrique', '<r2r:ml lang="en">Section</r2r:ml><r2r:ml lang="es">Sección</r2r:ml><r2r:ml lang="pt">Rubrica</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 5, 32, '2019-09-05 09:46:10'),
(30, 'lodel/icons/rubrique.gif', 'rubriqueactualites', 'Rubrique d’actualités', '<r2r:ml lang="en">Section (news collection type)</r2r:ml><r2r:ml lang="es">Sección (de anuncios)</r2r:ml><r2r:ml lang="pt">Rubrica (de notícias)</r2r:ml>', 'publications', 'actualites', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 35, 32, '2019-10-08 12:17:19'),
(31, 'lodel/icons/rubrique.gif', 'rubriqueannuaire', 'Rubrique (d’annuaire de site)', '<r2r:ml lang="en">Section (directory of websites type)</r2r:ml><r2r:ml lang="es">Sección (de directorio)</r2r:ml><r2r:ml lang="pt">Rubrica (de diretório de websites)</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 32, 32, '2019-09-05 09:46:11'),
(32, 'lodel/icons/rubrique.gif', 'rubriqueannuelle', 'Rubrique annuelle', '<r2r:ml lang="en">Annual section</r2r:ml><r2r:ml lang="pt">Rubrica anual</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 46, 32, '2019-09-05 09:46:11'),
(33, 'lodel/icons/rubrique.gif', 'rubriqueequipe', 'Rubrique (d’équipe)', '<r2r:ml lang="en">Section (directory of persons type)</r2r:ml><r2r:ml lang="es">Sección (de equipo)</r2r:ml><r2r:ml lang="pt">Rubrica (de corpo editorial)</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, 'unfolded', -1, 1, 0, 16, 0, 34, 32, '2019-09-05 09:46:12'),
(34, '', 'rubriquemediatheque', 'Rubrique (de médiathèque)', '<r2r:ml lang="en">Section (media library type)</r2r:ml><r2r:ml lang="es">Sección (de mediateca)</r2r:ml><r2r:ml lang="pt">Rubrica (de mediateca)</r2r:ml>', 'publications', 'sommaire', 'entities', 'edition', 0, '', -1, 1, 0, 16, 0, 33, 32, '2019-09-05 09:46:12'),
(35, '', 'son', 'Document sonore', '<r2r:ml lang="en">Audio file</r2r:ml><r2r:ml lang="es">Documento de audio</r2r:ml><r2r:ml lang="pt">Ficheiro áudio</r2r:ml>', 'fichiers', 'image', 'entities', '', 0, '', -1, 1, 0, 32, 0, 5, 1, '2019-09-05 09:46:12'),
(36, '', 'son', 'Document sonore distant', '<r2r:ml lang="es">Documento audio externo</r2r:ml><r2r:ml lang="en">Remote audio file</r2r:ml><r2r:ml lang="pt">Ficheiro áudio remoto</r2r:ml>', 'fichiersexternes', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 0, 38, 32, '2019-09-05 09:46:12'),
(37, '', 'sonannexe', 'Document sonore placé en annexe', '<r2r:ml lang="en">Appended audio file</r2r:ml><r2r:ml lang="es">Documento de audio en anexo</r2r:ml><r2r:ml lang="pt">Ficheiro áudio como anexo</r2r:ml>', 'fichiers', '', 'entities', '', 0, 'advanced', -1, 1, 0, 32, 0, 6, 1, '2019-09-05 09:46:12'),
(38, '', 'sonannexe', 'Document sonore distant placé en annexe', '<r2r:ml lang="es">Documento audio externo en anexo</r2r:ml><r2r:ml lang="en">Remote appended audio file</r2r:ml><r2r:ml lang="pt">Ficheiro áudio remoto como anexo</r2r:ml>', 'fichiersexternes', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 42, 32, '2019-09-05 09:46:13'),
(39, 'lodel/icons/rubrique_plat.gif', 'souspartie', 'Sous-partie', '<r2r:ml lang="en">Subsection</r2r:ml><r2r:ml lang="es">División</r2r:ml><r2r:ml lang="pt">Subsecção</r2r:ml>', 'publications', '', 'entities', 'edition', 0, 'unfolded', -1, 1, 0, 16, 0, 6, 1, '2019-09-05 09:46:13'),
(40, '', 'video', 'Vidéo', '<r2r:ml lang="en">Video file</r2r:ml><r2r:ml lang="es">Vídeo</r2r:ml><r2r:ml lang="pt">Vídeo</r2r:ml>', 'fichiers', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 0, 3, 1, '2019-09-05 09:46:13'),
(41, '', 'video', 'Vidéo distante', '<r2r:ml lang="es">Vídeo externo</r2r:ml><r2r:ml lang="en">Remote video file</r2r:ml><r2r:ml lang="pt">Vídeo remoto</r2r:ml>', 'fichiersexternes', 'image', 'entities', '', 0, '', -1, 1, 0, 64, 0, 37, 32, '2019-09-05 09:46:13'),
(42, '', 'videoannexe', 'Vidéo placée en annexe', '<r2r:ml lang="en">Appended video file</r2r:ml><r2r:ml lang="es">Vídeo en anexo</r2r:ml><r2r:ml lang="pt">Vídeo como anexo</r2r:ml>', 'fichiers', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 4, 1, '2019-09-05 09:46:13'),
(43, '', 'videoannexe', 'Vidéo distante placée en annexe', '<r2r:ml lang="es">Vídeo externo en anexo</r2r:ml><r2r:ml lang="pt">Vídeo remoto como anexo</r2r:ml><r2r:ml lang="en">Remote appended video file</r2r:ml>', 'fichiersexternes', '', 'entities', '', 0, 'advanced', -1, 1, 0, 64, 0, 41, 32, '2019-09-05 09:46:13'),
(116, '', 'elementdemenu', 'Élément de menu', '', 'liensinternes', '', 'entities', '', 0, '', -1, 0, 0, 64, 0, 50, 32, '2019-10-01 22:32:37'),
(123, '', 'menu', 'Menu', '', 'publications', '', 'entities', 'edition', 0, '', -1, 0, 0, 64, 0, 51, 32, '2019-10-01 22:35:22'),
(127, '', 'billetactualite', 'Actualité', '', 'textessimples', 'article', 'entities', 'edition', 0, '', -1, 1, 0, 64, 0, 52, 32, '2019-10-08 11:17:41'),
(141, '', 'rubriqueinformations', 'Rubrique d\'informations', '', 'publications', '', 'entities', 'edition', 0, '', -1, 1, 0, 64, 0, 53, 32, '2019-10-05 11:25:08');

#
# Dumping data for table 'persontypes'
#

INSERT INTO #_TP_persontypes (id, icon, type, title, altertitle, class, style, g_type, tpl, tplindex, gui_user_complexity, rank, status, otx, upd) VALUES (44, 'lodel/icons/auteur.gif', 'auteur', 'Auteurs', '<r2r:ml lang="en">Authors</r2r:ml><r2r:ml lang="es">Autores</r2r:ml><r2r:ml lang="pt">Autores</r2r:ml>', 'auteurs', 'auteur, autor, author,author,autor', 'dc.creator', 'personne', 'personnes', 32, 1, 1, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author', '2019-09-05 09:46:14'),
(45, '', 'auteuroeuvre', 'Auteurs d’une œuvre commentée', '<r2r:ml lang="en">Reviewed book authors</r2r:ml><r2r:ml lang="es">Autores de la obra comentada</r2r:ml><r2r:ml lang="pt">Autores de obra comentada</r2r:ml>', 'auteurs', 'auteuroeuvre, autorobra, reviewedauthor,reviewedauthor,autorobra', '', 'personne', 'personnes', 64, 4, 1, '/tei:TEI/tei:text/tei:front/tei:div[@type=\'review\']/tei:p[@rend=\'review-author\']', '2019-09-05 09:46:14'),
(46, '', 'directeurdelapublication', 'Directeurs de la publication', '<r2r:ml lang="en">Issue editors</r2r:ml><r2r:ml lang="es">Directores de la publicación</r2r:ml><r2r:ml lang="pt">Coordenadores do número</r2r:ml>', 'auteurs', 'directeur, director', '', 'personne', 'personnes', 32, 3, 32, '', '2019-09-05 09:46:14'),
(47, '', 'editeurscientifique', 'Éditeurs scientifiques', '<r2r:ml lang="en">Academic editors</r2r:ml><r2r:ml lang="es">Editores científicos</r2r:ml><r2r:ml lang="pt">Coordenadores científicos</r2r:ml>', 'auteurs', 'editeurscientifique, editorcientifico, academiceditor,academiceditor,editorcientifico', '', 'personne', 'personnes', 64, 5, 1, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:editor[not(@role)]', '2019-09-05 09:46:14'),
(48, '', 'traducteur', 'Traducteurs', '<r2r:ml lang="en">Translators</r2r:ml><r2r:ml lang="es">Traductores</r2r:ml><r2r:ml lang="pt">Tradutores</r2r:ml>', 'auteurs', 'traducteur, traductor, translator,translator,traductor', 'dc.contributor', 'personne', 'personnes', 64, 2, 1, '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:editor[@role=\'translator\']', '2019-09-05 09:46:14');

#
# Dumping data for table 'entrytypes'
#

INSERT INTO #_TP_entrytypes (id, icon, type, class, title, altertitle, style, g_type, tpl, tplindex, gui_user_complexity, rank, status, flat, newbyimportallowed, edition, sort, otx, upd, lang, externalallowed) VALUES (49, '', 'chrono', 'indexes', 'Index chronologique', '<r2r:ml lang="en">Chronological index</r2r:ml><r2r:ml lang="es">Índice cronológico</r2r:ml><r2r:ml lang="pt">Índice cronológico</r2r:ml>', 'periode, .periode, priode, chronology, ,chronology,periodo', '', 'entree', 'entrees', 64, 5, 1, 0, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'chronological\']', '2019-09-05 09:46:14', 'fr', 0),
(50, '', 'Collection', 'collections', 'Collection', '<r2r:ml lang="en">Collection</r2r:ml><r2r:ml lang="es">Colección</r2r:ml><r2r:ml lang="pt">Coleção</r2r:ml>', '', '', '', '', 64, 11, 1, 1, 0, 'pool', 'sortkey', '', '2019-09-05 09:46:14', 'fr', 0),
(51, '', 'geographie', 'indexes', 'Index géographique', '<r2r:ml lang="en">Geographical index</r2r:ml><r2r:ml lang="es">Índice geográfico</r2r:ml><r2r:ml lang="pt">Índice geográfico</r2r:ml>', 'geographie, gographie,.geographie, geography, ,geography,geografia', '', 'entree', 'entrees', 64, 4, 1, 0, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'geographical\']', '2019-09-05 09:46:14', 'fr', 0),
(52, '', 'licence', 'indexavances', 'Licence portant sur le document', '<r2r:ml lang="en">Document license</r2r:ml><r2r:ml lang="es">Licencia acompañando el documento</r2r:ml><r2r:ml lang="pt">Licenciamento relativo ao documento</r2r:ml>', 'licence, droitsauteur, licencia, license,licencia', 'dc.rights', 'entree', 'entrees', 16, 7, 1, 1, 1, 'pool', 'rank', '/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability', '2019-09-05 09:46:15', 'fr', 0),
(53, '', 'motsclesde', 'indexes', 'Schlagwortindex', '<r2r:ml lang="en">Schlagwortindex</r2r:ml><r2r:ml lang="es">Schlagwortindex</r2r:ml><r2r:ml lang="pt">Schlagwortindex</r2r:ml>', 'schlusselworter, .schlusselworter, motsclesde, schlagworter, .schlagworter', '', 'entree', 'entrees', 32, 8, 1, 1, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'keyword\']', '2019-09-05 09:46:15', 'de', 0),
(54, '', 'motsclesen', 'indexes', 'Keywords', '<r2r:ml lang="en">Keywords</r2r:ml><r2r:ml lang="es">Keywords</r2r:ml><r2r:ml lang="pt">Keywords</r2r:ml>', 'keywords,motclesen', '', 'entree', 'entrees', 64, 2, 1, 1, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'keyword\']', '2019-09-05 09:46:15', 'en', 0),
(55, '', 'motscleses', 'indexes', 'Palabras claves', '<r2r:ml lang="en">Palabras claves</r2r:ml><r2r:ml lang="es">Palabras claves</r2r:ml><r2r:ml lang="pt">Palabras claves</r2r:ml>', 'palabrasclaves, .palabrasclaves, motscleses', '', 'entree', 'entrees', 64, 9, 1, 1, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'keyword\']', '2019-09-05 09:46:15', 'es', 0),
(56, '', 'motsclesfr', 'indexes', 'Mots-clés', '<r2r:ml lang="en">Mots-clés</r2r:ml><r2r:ml lang="es">Mots-clés</r2r:ml><r2r:ml lang="pt">Mots-clés</r2r:ml>', 'motscles, .motcles,motscls,motsclesfr', 'dc.subject', 'entree', 'entrees', 32, 1, 1, 1, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'keyword\']', '2019-09-05 09:46:15', 'fr', 0),
(57, '', 'motsclesit', 'indexes', 'Parole chiave', '', 'parolechiave, parolechiavi, .parolechiavi, motsclesit', '', 'entree', 'entrees', 64, 12, 1, 1, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'keyword\']', '2019-09-05 09:46:15', 'it', 0),
(58, '', 'motsclespt', 'indexes', 'Palavras chaves', '<r2r:ml lang="en">Palavras chaves</r2r:ml><r2r:ml lang="es">Palavras chaves</r2r:ml><r2r:ml lang="pt">Palavras chaves</r2r:ml>', 'palavraschaves,motsclespt', '', 'entree', 'entrees', 64, 10, 1, 1, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'keyword\']', '2019-09-05 09:46:15', 'pt', 0),
(59, '', 'theme', 'indexes', 'Index thématique', '<r2r:ml lang="en">Subject index</r2r:ml><r2r:ml lang="es">Índice temático</r2r:ml><r2r:ml lang="pt">Índice temático</r2r:ml>', 'themes,thmes,.themes,subject,temas', '', 'entree', 'entrees', 16, 6, 1, 0, 1, 'pool', 'sortkey', '/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme=\'subject\']', '2019-09-05 09:46:15', 'fr', 0),
(144, '', 'disciplines', 'filtrescatalogue', 'Toutes les disciplines', '', '', '', '', '', 16, 16, 32, 1, 1, 'pool', 'sortkey', '', '2019-10-07 15:47:25', 'fr', 0),
(145, '', 'typesderevues', 'filtrescatalogue', 'Tous les types', '', '', '', '', '', 64, 17, 32, 1, 1, 'pool', 'sortkey', '', '2019-10-07 15:47:39', 'fr', 0),
(146, '', 'institutions', 'filtrescatalogue', 'Toutes les institutions', '', '', '', '', '', 64, 18, 32, 1, 1, 'pool', 'sortkey', '', '2019-10-07 15:47:48', 'fr', 0);

#
# Dumping data for table 'entitytypes_entitytypes'
#

INSERT INTO #_TP_entitytypes_entitytypes (identitytype, identitytype2, cond) VALUES (39, 39, '*'),
(39, 29, '*'),
(34, 34, '*'),
(34, 8, '*'),
(33, 33, '*'),
(33, 6, '*'),
(15, 39, '*'),
(9, 39, '*'),
(9, 32, '*'),
(15, 32, '*'),
(15, 29, '*'),
(15, 28, '*'),
(9, 29, '*'),
(9, 28, '*'),
(14, 39, '*'),
(14, 32, '*'),
(14, 29, '*'),
(14, 28, '*'),
(26, 39, '*'),
(26, 32, '*'),
(26, 29, '*'),
(26, 28, '*'),
(11, 39, '*'),
(11, 32, '*'),
(11, 29, '*'),
(11, 28, '*'),
(18, 8, '*'),
(18, 34, '*'),
(39, 28, '*'),
(19, 34, '*'),
(19, 8, '*'),
(41, 34, '*'),
(41, 8, '*'),
(36, 34, '*'),
(36, 8, '*'),
(2, 34, '*'),
(2, 8, '*'),
(123, 0, '*'),
(116, 123, '*'),
(141, 0, '*'),
(24, 12, '*'),
(24, 29, '*'),
(24, 141, '*'),
(127, 12, '*'),
(127, 30, '*'),
(30, 0, '*'),
(27, 7, '*'),
(27, 12, '*'),
(27, 29, '*'),
(27, 31, '*'),
(27, 32, '*'),
(16, 24, '*'),
(7, 0, '*');

#
# Dumping data for table 'characterstyles'
#


#
# Dumping data for table 'internalstyles'
#

INSERT INTO #_TP_internalstyles (id, style, surrounding, conversion, greedy, rank, status, upd, otx) VALUES (1, 'citation,quotation,quotations,citatextual,citastextuales', '-*', '<blockquote></blockquote>', 0, 1, 1, '2013-09-06 10:03:22', '//*[@rend=\'quotation\']'),
(3, 'citationbis, quotationbis,quotationbis,citatextualbis', '-*', '<blockquote class="citationbis">', 0, 3, 1, '2013-09-06 10:03:22', '//*[@rend=\'quotation2\']'),
(4, 'citationter, quotationter,quotationter,citatextualter', '-*', '<blockquote class="citationter">', 0, 4, 1, '2013-09-06 10:03:22', '//*[@rend=\'quotation3\']'),
(5, 'titreillustration, illustrationtitle,illustrationtitle,titulofigura', '*-', '', 0, 5, 1, '2013-09-06 10:03:22', '//*[@rend=\'figure-title\']'),
(6, 'legendeillustration,illustrationcaption,leyendafigura', '-*', '', 0, 6, 1, '2013-09-06 10:03:22', '//*[@rend=\'figure-legend\']'),
(10, 'code,codigo', '*-', '', 0, 10, 1, '2013-09-06 10:03:22', '//*[@rend=\'code\']'),
(11, 'question,pregunta', '*-', '', 0, 11, 1, '2013-09-06 10:03:22', '//*[@rend=\'question\']'),
(12, 'reponse,answer,respuesta', '*-', '', 0, 12, 1, '2013-09-06 10:03:22', '//*[@rend=\'answer\']'),
(15, 'section3,titulo3', '*-', '<h3>', 0, 15, 1, '2013-09-06 10:03:22', '//tei:head[@subtype=\'level3\']'),
(16, 'section4,titulo4', '*-', '<h4>', 0, 16, 1, '2013-09-06 10:03:22', '//tei:head[@subtype=\'level4\']'),
(17, 'section5,titulo5', '*-', '<h5>', 0, 17, 1, '2013-09-06 10:03:22', '//tei:head[@subtype=\'level5\']'),
(18, 'section6,titulo6', '*-', '<h6>', 0, 18, 1, '2013-09-06 10:03:22', '//tei:head[@subtype=\'level6\']'),
(19, 'section1,titulo1', '*-', '<h1>', 0, 13, 1, '2013-09-06 10:03:22', '//tei:head[@subtype=\'level1\']'),
(20, 'separateur,sparateur,separator,separador', '*-', '', 0, 19, 1, '2013-09-06 10:03:22', '//*[@rend=\'break\']'),
(21, 'paragraphesansretrait,notindentedparagraph,parrafosinsangria', '*-', '', 0, 20, 1, '2013-09-06 10:03:22', '//*[@rend=\'noindent\']'),
(22, 'epigraphe,pigraphe,addendum,epigrafe', '*-', '', 0, 21, 1, '2013-09-06 10:03:22', '//*[@rend=\'epigraph\']'),
(23, 'section2,titulo2', '*-', '<h2>', 0, 14, 1, '2013-09-06 10:03:22', '//tei:head[@subtype=\'level2\']'),
(27, 'terme', '-*', '', 0, 25, 1, '2006-03-02 09:52:27', ''),
(28, 'definitiondeterme', '-*', '', 0, 26, 1, '2006-03-02 09:52:37', ''),
(32, 'creditillustration,crditillustration,creditsillustration,crditsillustration,illustrationcredits,creditosfigura', '-*', '', 0, 30, 1, '2013-09-06 10:03:22', '//*[@rend=\'figure-license\']'),
(34, 'encadre,box,cuadro', '-*', '', 0, 32, 1, '2013-09-06 10:03:22', '//*[@rend=\'box\']');
DELETE FROM #_TP_optiongroups;
# # Database: 'lodelpre_prairial'# 
#
# Dumping data for table 'optiongroups'
#

INSERT INTO #_TP_optiongroups (id, idparent, name, title, altertitle, comment, logic, exportpolicy, rank, status, upd) VALUES (2, 0, 'metadonneessite', 'Métadonnées du site', '<r2r:ml lang="en">Website metadata</r2r:ml><r2r:ml lang="pt">Metadaos do website</r2r:ml>', '', '', 1, 2, 1, '2011-09-21 13:22:00'),
(8, 0, 'diffusionelectronique', 'Diffusion électronique', '<r2r:ml lang="pt">Difusão electrónica</r2r:ml>', '', '', 1, 7, 1, '2011-09-21 13:23:06'),
(9, 0, 'optionsgenerales', 'Options générales', '<r2r:ml lang="pt">Opções gerais</r2r:ml>', '', '', 1, 8, 1, '2011-09-21 13:23:28'),
(10, 0, 'optionsaffichage', 'Options d\'affichage', '<r2r:ml lang="pt">Opções de visualização</r2r:ml>', '', '', 1, 9, 1, '2011-10-07 09:24:29');
DELETE FROM #_TP_options;
# # Database: 'lodelpre_prairial'# 
#
# Dumping data for table 'options'
#

INSERT INTO #_TP_options (id, idgroup, name, title, type, defaultvalue, comment, userrights, rank, status, upd, edition, editionparams) VALUES (4, 2, 'titresite', 'Titre du site', 'tinytext', 'Titresite', '', 40, 1, 1, '2019-09-09 17:40:42', 'editable', ''),
(5, 2, 'titresiteabrege', 'Titre abrégé du site', 'tinytext', 'Titre abrégé du site', '', 40, 3, 1, '2019-09-09 17:40:42', 'editable', ''),
(6, 2, 'descriptionsite', 'Description du site', 'text', '', '', 40, 4, 1, '2019-09-09 17:40:42', 'editable', ''),
(7, 2, 'urldusite', 'URL officielle du site', 'url', '', '', 40, 5, 1, '2011-09-20 23:25:05', 'editable', ''),
(9, 2, 'issn', 'ISSN', 'tinytext', '', '', 30, 6, 1, '2011-09-20 23:25:27', 'editable', ''),
(10, 2, 'editeur', 'Nom de l\'éditeur du site', 'tinytext', '', '', 30, 8, 1, '2011-09-20 23:26:16', 'editable', ''),
(11, 2, 'adresseediteur', 'Adresse postale de l\'éditeur', 'text', '', '', 30, 9, 1, '2011-09-20 23:26:37', 'editable', ''),
(12, 2, 'producteursite', 'Nom du producteur du site', 'tinytext', '', '', 30, 10, 1, '2011-09-20 23:26:59', 'editable', ''),
(13, 2, 'diffuseursite', 'Nom du diffuseur du site', 'tinytext', '', '', 30, 11, 1, '2011-09-20 23:27:18', 'editable', ''),
(14, 2, 'droitsauteur', 'Droits d\'auteur par défaut', 'tinytext', '', '', 30, 12, 1, '2011-09-20 23:27:37', 'editable', ''),
(15, 2, 'directeurpublication', 'Nom du directeur de la publication', 'tinytext', '', '', 30, 13, 1, '2011-09-20 23:27:57', 'editable', ''),
(16, 2, 'redacteurenchef', 'Nom du Rédacteur en chef', 'tinytext', '', '', 30, 14, 1, '2011-09-20 23:28:15', 'editable', ''),
(17, 2, 'courrielwebmaster', 'Courriel du webmaster', 'email', '', '', 30, 15, 1, '2011-09-20 23:28:37', 'editable', ''),
(18, 2, 'courrielabuse', 'Courriel abuse', 'tinytext', '', '', 40, 16, 1, '2011-09-20 23:28:56', 'editable', ''),
(19, 2, 'motsclesdusite', 'Mots clés décrivant le site (entre virgules)', 'text', '', '', 30, 17, 1, '2015-07-08 09:26:05', 'editable', ''),
(26, 2, 'issn_electronique', 'ISSN électronique', 'tinytext', '', '', 30, 7, 32, '2011-09-20 23:25:47', 'editable', ''),
(27, 2, 'langueprincipale', 'Langue principale du site', 'lang', 'fr', '', 40, 18, 1, '2019-09-09 17:40:43', 'editable', ''),
(28, 2, 'soustitresite', 'Sous titre du site', 'tinytext', '', '', 40, 2, 1, '2019-09-09 17:40:43', 'editable', ''),
(14184, 2, 'typepublication', 'Type de publication', 'list', 'Revue', '', 40, 26, 1, '2019-09-09 17:40:43', 'select', 'Revue, Cahier, Bulletin, Monographies'),
(14189, 2, 'pdf', 'Génération de fichier pdf', 'boolean', '', '', 40, 27, 1, '2011-09-20 23:30:01', 'editable', ''),
(14190, 2, 'pdf_electronique', 'Pdf pour revue électronique', 'boolean', '', '', 40, 28, 1, '2011-09-20 23:30:15', 'editable', ''),
(14191, 2, 'imagehabillee', 'Images habillées par le texte', 'boolean', '', '', 40, 29, 1, '2011-09-20 23:30:34', 'editable', ''),
(14196, 8, 'bouquetfreemium', 'Bouquet Freemium', 'boolean', '', '', 40, 1, 1, '2011-09-20 23:31:11', 'editable', ''),
(14197, 8, 'librairieelectronique', 'Librairie électronique', 'boolean', '', '', 40, 2, 1, '2011-09-20 23:31:27', 'editable', ''),
(14198, 8, 'prixcommercialisationnumero', 'Prix commercialisation numéro', 'text', '', '', 40, 3, 1, '2011-09-20 23:31:45', 'editable', ''),
(14199, 9, 'attributiondoi', 'Attribution de DOI', 'boolean', '', '', 40, 1, 1, '2011-09-20 23:32:06', 'editable', ''),
(14200, 10, 'affichageindexannuel', 'Affichage d\'un index annuel', 'boolean', '', '', 40, 30, 1, '2012-02-01 10:57:20', 'editable', ''),
(14201, 10, 'affichageindexparlangue', 'Affichage d\'un index par langue', 'boolean', '', '', 40, 31, 1, '2012-02-01 10:55:27', 'editable', ''),
(14202, 10, 'barrenavaffichagenumero', 'Mode d’affichage des numéros dans la colonne de gauche', 'list', 'per issue', '', 40, 32, 1, '2012-02-01 10:21:37', 'select', 'per issue,per year,per volume'),
(14203, 10, 'affichageindexpersonnes', 'Affichage des index de personnes', 'list', 'First name Surname', '', 40, 33, 1, '2012-09-12 00:04:56', 'select', 'First name Surname, Surname; First name'),
(14204, 10, 'affichageremerciements', 'Affichage des remerciements', 'list', 'top', '', 40, 34, 1, '2013-07-29 15:53:58', 'editable', 'top,bottom'),
(14206, 9, 'emversion', 'Version du modèle éditorial', 'tinytext', '1.0.0', '', 40, 35, 1, '2015-07-20 12:24:46', 'display', '');
# # Database: 'lodelpre_prairial'# 
# --------------------------------------------------------

#
# Table structure for table 'auteurs'
#

DROP TABLE IF EXISTS #_TP_auteurs;
CREATE TABLE #_TP_auteurs (
  idperson int(10) unsigned DEFAULT NULL,
  nomfamille tinytext,
  prenom tinytext,
  UNIQUE KEY idperson (idperson),
  KEY index_idperson (idperson)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'entities_auteurs'
#

DROP TABLE IF EXISTS #_TP_entities_auteurs;
CREATE TABLE #_TP_entities_auteurs (
  idrelation int(10) unsigned DEFAULT NULL,
  prefix tinytext,
  affiliation tinytext,
  fonction tinytext,
  description text,
  courriel text,
  site text,
  UNIQUE KEY idrelation (idrelation),
  KEY index_idrelation (idrelation)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'collections'
#

DROP TABLE IF EXISTS #_TP_collections;
CREATE TABLE #_TP_collections (
  identry int(10) unsigned DEFAULT NULL,
  titre tinytext,
  soustitre tinytext,
  issn tinytext,
  issnelectronique tinytext,
  UNIQUE KEY identry (identry),
  KEY index_identry (identry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'entities_collections'
#

DROP TABLE IF EXISTS #_TP_entities_collections;
CREATE TABLE #_TP_entities_collections (
  idrelation int(10) unsigned DEFAULT NULL,
  UNIQUE KEY idrelation (idrelation),
  KEY index_idrelation (idrelation)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'fichiers'
#

DROP TABLE IF EXISTS #_TP_fichiers;
CREATE TABLE #_TP_fichiers (
  identity int(10) unsigned DEFAULT NULL,
  titre text,
  document tinytext,
  description text,
  legende text,
  credits tinytext,
  vignette tinytext,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  datepubli date DEFAULT NULL,
  UNIQUE KEY identity (identity),
  KEY index_identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'fichiersexternes'
#

DROP TABLE IF EXISTS #_TP_fichiersexternes;
CREATE TABLE #_TP_fichiersexternes (
  identity int(10) unsigned DEFAULT NULL,
  titre tinytext,
  object text,
  description text,
  vignette tinytext,
  legende text,
  datepubli date DEFAULT NULL,
  urlaccesmedia text,
  urlmedia text,
  credits tinytext,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  UNIQUE KEY identity (identity),
  KEY index_identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'indexavances'
#

DROP TABLE IF EXISTS #_TP_indexavances;
CREATE TABLE #_TP_indexavances (
  identry int(10) unsigned DEFAULT NULL,
  nom tinytext,
  description text,
  url text,
  icone tinytext,
  UNIQUE KEY identry (identry),
  KEY index_identry (identry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'entities_indexavances'
#

DROP TABLE IF EXISTS #_TP_entities_indexavances;
CREATE TABLE #_TP_entities_indexavances (
  idrelation int(10) unsigned DEFAULT NULL,
  UNIQUE KEY idrelation (idrelation),
  KEY index_idrelation (idrelation)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'indexes'
#

DROP TABLE IF EXISTS #_TP_indexes;
CREATE TABLE #_TP_indexes (
  identry int(10) unsigned DEFAULT NULL,
  nom text,
  definition text,
  UNIQUE KEY identry (identry),
  KEY index_identry (identry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'entities_indexes'
#

DROP TABLE IF EXISTS #_TP_entities_indexes;
CREATE TABLE #_TP_entities_indexes (
  idrelation int(10) unsigned DEFAULT NULL,
  UNIQUE KEY idrelation (idrelation),
  KEY index_idrelation (idrelation)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'individus'
#

DROP TABLE IF EXISTS #_TP_individus;
CREATE TABLE #_TP_individus (
  identity int(10) unsigned DEFAULT NULL,
  nom tinytext,
  prenom tinytext,
  email text,
  siteweb text,
  description text,
  accroche text,
  adresse text,
  telephone tinytext,
  photographie tinytext,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  UNIQUE KEY identity (identity),
  KEY index_identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'liens'
#

DROP TABLE IF EXISTS #_TP_liens;
CREATE TABLE #_TP_liens (
  identity int(10) unsigned DEFAULT NULL,
  titre text,
  url text,
  urlfil text,
  texte text,
  capturedecran tinytext,
  nombremaxitems int(11) DEFAULT NULL,
  vignette tinytext,
  altertitre text,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  soustitre text,
  UNIQUE KEY identity (identity),
  KEY index_identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'publications'
#

DROP TABLE IF EXISTS #_TP_publications;
CREATE TABLE #_TP_publications (
  identity int(10) unsigned DEFAULT NULL,
  titre text,
  soustitre text,
  texte text,
  meta text,
  `date` date DEFAULT NULL,
  surtitre text,
  introduction text,
  datepubli date DEFAULT NULL,
  datepublipapier date DEFAULT NULL,
  noticebiblio text,
  commentaireinterne text,
  ndlr text,
  historique text,
  prioritaire tinyint(4) DEFAULT NULL,
  paraitre tinyint(4) DEFAULT NULL,
  integralite tinyint(4) DEFAULT NULL,
  numero tinytext,
  langue char(5) DEFAULT NULL,
  altertitre text,
  urlpublicationediteur text,
  descriptionouvrage text,
  isbn tinytext,
  periode tinytext,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  rss tinyint(4) DEFAULT NULL,
  racinemets tinyint(4) DEFAULT NULL,
  UNIQUE KEY identity (identity),
  KEY index_identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'textes'
#

DROP TABLE IF EXISTS #_TP_textes;
CREATE TABLE #_TP_textes (
  identity int(10) unsigned DEFAULT NULL,
  surtitre text,
  titre text,
  soustitre text,
  langue char(5) DEFAULT NULL,
  datepubli date DEFAULT NULL,
  texte longtext,
  notesbaspage longtext,
  notefin longtext,
  bibliographie text,
  annexe longtext,
  ndlr text,
  pagination tinytext,
  noticebiblio text,
  commentaireinterne text,
  `resume` text,
  datepublipapier date DEFAULT NULL,
  prioritaire tinyint(4) DEFAULT NULL,
  URLessai tinytext,
  alterfichier tinytext,
  addendum text,
  ocr tinyint(4) DEFAULT NULL,
  altertitre text,
  ndla text,
  numerodocument double DEFAULT NULL,
  titreoeuvre text,
  noticebibliooeuvre text,
  dedicace text,
  documentcliquable tinyint(4) DEFAULT NULL,
  datepublicationoeuvre tinytext,
  imagehabillee tinyint(4) DEFAULT NULL,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  fichierreference tinyint(4) DEFAULT NULL,
  vignettesimple tinyint(4) DEFAULT NULL,
  remerciements text,
  UNIQUE KEY identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'textessimples'
#

DROP TABLE IF EXISTS #_TP_textessimples;
CREATE TABLE #_TP_textessimples (
  identity int(10) unsigned DEFAULT NULL,
  titre tinytext,
  texte longtext,
  url text,
  `date` datetime DEFAULT NULL,
  altertitre text,
  datemisenligne date DEFAULT NULL,
  dateacceslibre date DEFAULT NULL,
  datedexpiration date DEFAULT NULL,
  vignette tinytext,
  UNIQUE KEY identity (identity),
  KEY index_identity (identity)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'liensinternes'
#

DROP TABLE IF EXISTS #_TP_liensinternes;
CREATE TABLE #_TP_liensinternes (
  identity int(10) unsigned NOT NULL,
  titre tinytext,
  description text,
  vignette tinytext,
  PRIMARY KEY (identity)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'filtrescatalogue'
#

DROP TABLE IF EXISTS #_TP_filtrescatalogue;
CREATE TABLE #_TP_filtrescatalogue (
  identry int(10) unsigned NOT NULL,
  nom text,
  PRIMARY KEY (identry)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# --------------------------------------------------------

#
# Table structure for table 'entities_filtrescatalogue'
#

DROP TABLE IF EXISTS #_TP_entities_filtrescatalogue;
CREATE TABLE #_TP_entities_filtrescatalogue (
  idrelation int(10) unsigned NOT NULL,
  PRIMARY KEY (idrelation)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
