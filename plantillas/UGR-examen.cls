\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UGR-examen}[2023/06/15 Clase de documento genérico siguiendo las directrices del manual de identidad corporativa de la Universidad de Granada] 



% ===================================================================
% OPCIONES DE LA CLASE
% ===================================================================

\newcommand{\marcaAgua}{marca-agua-logo-ugr-color}
\newcommand{\accentColor}{ugr}
\newcommand{\logocabecera}{UGR-MARCA-02-color}

\DeclareOption{monocromo}{
  \renewcommand{\logocabecera}{UGR-MARCA-02-monocromo}
  \renewcommand{\marcaAgua}{marca-agua-logo-ugr}
  \renewcommand{\accentColor}{ugrGray}
}

\DeclareOption{corporativo}{
  \renewcommand{\logocabecera}{UGR-MARCA-02-color-corporativo}
  \renewcommand{\marcaAgua}{marca-agua-logo-ugr-color}
  \renewcommand{\accentColor}{ugr}
}

\ProcessOptions\relax



\LoadClass[fontsize=10pt, parskip=full, paper=a4, twoside=false, footinclude=false,headinclude=true, DIV=12]{scrartcl}

% Increase text height so the footer is put closer to the bottom boundary of the page.
\setlength{\textheight}{1.1\textheight}
\setlength{\headheight}{51pt}
% \setlength{\marginparwidth}{1em}

\RequirePackage[
  headsepline=false,
  headwidth=\textwidth,
  footwidth=\textwidth,
]{scrlayer-scrpage}
\clearpairofpagestyles

\ihead{
  \hspace*{-23mm}\includegraphics[width=0.4\textwidth]{\logocabecera}
}
\ohead{\upshape \exDepartamento \\ \exCursoAcademico}

\setkomafont{title}{\itshape\large}


\renewcommand{\labelenumii}{\theenumii} 
\renewcommand{\theenumii}{(\roman{enumii})}
% -------------------------------------------------------------------
% PAQUETES Y OPCIONES
% -------------------------------------------------------------------
\RequirePackage[utf8]{inputenc} 

\RequirePackage[english, spanish, es-nodecimaldot, es-noindentfirst, es-tabla,es-noquoting]{babel}
  \unaccentedoperators % Desactiva los acentos en los operadores matemáticso (p.e. \lim, \max, ...). Eliminar esta opción si queremos que vayan acentuados

\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
\usepackage[toc,eqno,enum,bib,lineno]{tabfigures}

% Las tipografías elegidas para el documento, siguiendo la guía de estilo de la UGR, son las siguientes
% Normal font: 			URW Palladio typeface. 
% Sans-serif font: 	Gill Sans (paquete cabin)
% Monospace font: 	Inconsolata
\RequirePackage[T1]{fontenc}
\RequirePackage[theoremfont,largesc,tighter,p,osf]{newpxtext}
\RequirePackage[noamssymbols]{newpxmath}
  \useosf % old-style figures in text, not in math
  \linespread{1.05} % Palatino needs more leading (space between lines)

% Clon de Gill Sans
\IfFileExists{cabin.sty}{
  \RequirePackage[scaled=.95,type1]{cabin} 
} %else
{
  % Si cabin da ERROR usar el siguiente comando en su lugar
  \renewcommand{\sfdefault}{iwona} 
}
\RequirePackage{inconsolata}

\RequirePackage{setspace}
\RequirePackage{xspace} % Para problemas de espaciado al definir comandos

\RequirePackage{xurl}

\RequirePackage{hyperref}

\hypersetup{%
  % hidelinks,            % Enlaces sin color ni borde. El borde no se imprime
  linkbordercolor=0.8 0 0,
  citebordercolor=0 0.8 0,
  citebordercolor=0 0.8 0,
  colorlinks = true,            % Color en texto de los enlaces. Comentar esta línea o cambiar `true` por `false` para imprimir el documento.
  linkcolor = [rgb]{0.5, 0, 0}, % Color de los enlaces internos
  urlcolor = [rgb]{0, 0, 0.5},  % Color de los hipervínculos
  citecolor = [rgb]{0, 0.5, 0}, % Color de las referencias bibliográficas
  pdfsubject={},%
	pdfkeywords={},%
	pdfcreator={pdfLaTeX},%
}

% -------------------------------------------------------------------
% TABLAS, GRÁFICOS Y COLORES
% -------------------------------------------------------------------
\RequirePackage{booktabs}
% \renewcommand{\arraystretch}{1.5} % Aumenta el espacio vertical entre las filas de un entorno tabular

\RequirePackage{graphicx}
  \setkeys{Gin}{width=\linewidth,totalheight=\textheight,keepaspectratio}
  % Carpeta donde buscar los archivos de imagen por defecto
  \graphicspath{{img/}{logos/}}

\RequirePackage{xcolor}
  \definecolor{ugr}{RGB}{190, 57, 63} % {210, 47, 61}
  \definecolor{ugrDark}{RGB}{190, 57, 63}
  \definecolor{ugrText}{RGB}{26, 25, 25}
  \definecolor{ugrGray}{RGB}{99, 100, 99}
  \newcommand{\alert}[1]{\textcolor{ugr}{#1}}


% -------------------------------------------------------------------
% ESTILOS DE LA CLASE KOMA
% -------------------------------------------------------------------
% Selecciona el tipo de fuente para los títulos (capítulo, sección, subsección) del documento.
\setkomafont{disposition}{\sffamily\bfseries}

% \recalctypearea % Necesario tras definir la tipografía a usar.

% -------------------------------------------------------------------
% Marca de agua
% -------------------------------------------------------------------

% Definición de la imagen de fondo (ver comando \archivoportada).
\RequirePackage{eso-pic}
\newcommand\AtPageLowerRight[1]{
  \put(\LenToUnit{\paperwidth-0pt},0){\llap{\raisebox{0pt}{#1}}}
  \put(0,0){\color{\accentColor}\rule{\paperwidth}{1cm}}
}
\AddToShipoutPictureBG{\AtPageLowerRight{\includegraphics[width=0.6\pdfpagewidth]{\marcaAgua}}}
