
DELETE FROM JaduRoutes WHERE standard=1;

INSERT INTO JaduRoutes (routeName, urlPattern, destination, extraParams, description, standard, symfonyRoute)
VALUES ('legacy_document_article_index','info/{categoryID:i}/{categorySlug:s}/{documentID:i}/{documentSlug:s}','/site/scripts/documents_info.php?categoryID=$1&documentID=$3','{"flag":"[NC,L,QSA]"}','The path of the document index page',1,0);

INSERT INTO JaduRoutes (routeName, urlPattern, destination, extraParams, description, standard, symfonyRoute)
VALUES ('legacy_document_article','info/{categoryID:i}/{categorySlug:s}/{documentID:i}/{documentSlug:s}/{pageNumber:i}','/site/scripts/documents_info.php?categoryID=$1&documentID=$3&pageNumber=$5','{"flag":"[NC,L,QSA]"}','The path of the document that has page number',1,0);

INSERT INTO JaduRoutes (routeName, urlPattern, destination, extraParams, description, standard, symfonyRoute)
VALUES ('legacy_document_category','info/{categoryID:i}/{categorySlug:s}','/site/scripts/documents.php?categoryID=$1','{"flag":"[QSA,NC,L]"}','The path of the category document list',1,0);

INSERT INTO JaduRoutes (routeName, urlPattern, destination, extraParams, description, standard, symfonyRoute)
VALUES ('legacy_homepage_info','homepage/{homepageID:i}/{homepageSlug:s}','/site/scripts/home_info.php?homepageID=$1','{"flag":"[QSA,NC,L]"}','The path of the homepage details',1,0);
