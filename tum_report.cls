% #####
% This file contains the definition of the custom class tum_report.
% #####

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{tum_report}[10/08/2023 A LaTeX Report Template for Technical University of Moldova]

\LoadClass{report}


% #####
% Import packages / libraries used in the project.
% #####

\RequirePackage{amsmath}

\RequirePackage[english]{babel}

\RequirePackage[justification=centering, 
                tableposition=top, 
                figurewithin=section, 
                tablewithin=section]{caption}
                
\RequirePackage{color}

\RequirePackage[utf8]{inputenc}
                
\RequirePackage{csquotes}               % Has a dependency on the package inputenc.

\RequirePackage{enumerate}

\RequirePackage{enumitem}

\RequirePackage{eso-pic}

\RequirePackage{fancyhdr}

\RequirePackage{float}

\RequirePackage[a4paper, 
                top=2cm,
				right=1cm, 
				bottom=2cm,
				left=2cm]{geometry}

\RequirePackage{graphicx}

\RequirePackage{indentfirst}

\RequirePackage{listings}

\RequirePackage{mathptmx}

\RequirePackage{multirow}

\RequirePackage{mwe}

\RequirePackage[fontsize=12pt]{scrextend}

\RequirePackage[onehalfspacing]{setspace}

\RequirePackage{subfig}

\RequirePackage[rm,
                bf,
                tiny]{titlesec}

\RequirePackage[subfigure]{tocloft}

\RequirePackage{url}

\RequirePackage{hyperref}

\RequirePackage[numbers]{natbib}

% #####
% Pass additional options for packages.
% #####

\PassOptionsToPackage{hyphens}{url}



% #####
% Custom declarations
% #####

\DeclareCaptionLabelSeparator{dash}{ - }
\DeclareCaptionLabelFormat{tablel}{Table #2}



% #####
% Declaration of the new commands.
% #####

\newcommand{\chairman}[2]{
    \newcommand{\chairmanname}{#1}
    \newcommand{\chairmantitle}{#2}
}

\newcommand{\consultantone}[2]{
    \newcommand{\consultantonename}{#1}
    \newcommand{\consultantonetitle}{#2}
}

\newcommand{\consultanttwo}[2]{
    \newcommand{\consultanttwoname}{#1}
    \newcommand{\consultanttwotitle}{#2}
}

\newcommand{\council}[2]{
    \newcommand{\councilnr}{#1}
    \newcommand{\councildate}{#2}
}

\newcommand{\department}[1]{
    \newcommand{\departmentname}{#1}
}

\newcommand{\faculty}[1]{
    \newcommand{\facultyname}{#1}
}

\newcommand{\ministry}[1]{
    \newcommand{\ministryname}{#1}
}

\newcommand{\university}[1]{
    \newcommand{\universityname}{#1}
}

\newcommand{\hitem}
           {\item[-]}
           
\newcommand{\program}[1]{
    \newcommand{\programname}{#1}
}

\newcommand{\studentname}[1]{#1}
\newcommand{\studentgroup}[1]{#1}

\newcommand{\student}[2]{
    \studentname{#1}, \studentgroup{#2}
}

\newcommand{\supervisor}[2]{#1, #2}

\newcommand{\taskdate}[2]{
    \newcommand{\taskstart}{#1}
    \newcommand{\taskend}{#2}
}



% #####
% Renewal of some commands.
% #####

\renewcommand{\arraystretch}{1.2}
\renewcommand*{\arraystretch}{1.2}

% Initialize the vertical space for chapter titles.
\renewcommand{\addvspace}[1]{}

\renewcommand{\author}[2]{
    \newcommand{\authorname}{#1}
    \newcommand{\authorgroup}{#2}    
}

% Add dotted lines for chapters and sections.
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% Change the titles of toc, lof, lot.
\renewcommand{\cfttoctitlefont}{\hfill \large \bfseries}
\renewcommand{\cftloftitlefont}{\hfill \large \bfseries}
\renewcommand{\cftlottitlefont}{\hfill \large \bfseries}

\renewcommand{\cftaftertoctitle}{\hfill\hfill}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftafterlottitle}{\hfill}

\renewcommand{\title}[2]{
    \newcommand{\titleen}{#1}
    \newcommand{\titlero}{#2}    
}

\renewcommand{\year}[1]{
    \newcommand{\degreeyear}{#1}
}

\renewcommand{\thesubfigure}{
    \,(\alph{subfigure})
}



% #####
% Renewal of environments.
% #####

\renewenvironment{titlepage}{
    \fontfamily{ptm}
    \selectfont
    \pagestyle{empty}
    \centering
    \bfseries
}{
    \clearpage
}



% #####
% Definition of custom text settings.
% #####

% Sets the space between the lines.
\setstretch{1.5}

% Sets the separator between lists.
\setlist{nolistsep}

% Sets the length of the paragraph indentation.
\setlength{\parindent}{1.25cm}

% Permits the usage of Unicode symbols in headers.
\hypersetup{unicode=true}

% In lstlisting the lines will not overflow.
\lstset{breaklines=true}

% Equations and Listings numbering
\numberwithin{equation}{section}
\AtBeginDocument{\counterwithin{lstlisting}{section}}


% Images formatting and numbering

\numberwithin{figure}{chapter}
\captionsetup[figure]{labelfont=bf}


% Format the title of the chapters.
\titleformat{\chapter}[block]
            {\centering \bfseries \large}
            {\thechapter}
            {5pt}
            {}
            
\titlespacing{\chapter}{0pt}{0pt}{0pt}

% Format the title of the sections.
\titleformat{\section}[hang]
            {\bfseries \normalsize}
            {\thesection}
            {5pt}
            {}
  
\titlespacing{\section}{\parindent}{10pt}{0pt}

% Format the title of the subsections.
\titleformat*{\subsection}
            {\bfseries \normalsize}

\titlespacing{\subsection}{\parindent}{10pt}{0pt}

% Format the title of the subsubsections.
\titleformat*{\subsubsection}
            {\bfseries \normalsize}
 
\titlespacing{\subsubsection}{\parindent}{10pt}{0pt}

% Rename the title of toc.
\addto\captionsenglish{
    \renewcommand{\contentsname}
                 {Content}
}

% Rename the title of lof.
\addto\captionsenglish{
    \renewcommand{\listfigurename}
                 {List of figures}
}

% Rename the title of lot.
\addto\captionsenglish{
    \renewcommand{\listtablename}
                 {List of tables}
}

% Rename the title of glossary.
\addto\captionsenglish{
    \renewcommand{\glossaryname}
                 {Glossary}
}

\newcommand{\showfigure}[4]{
	\begin{figure}[H] 
		\centering 
		\includegraphics[width=#1]{#2} 
		\caption{#3}
		\label{fig:#4} 
	\end{figure}
}

\captionsetup[figure]{
	labelsep=dash,
	font={normalfont},
	format=plain
}

\captionsetup[subfigure]{
    labelformat=simple,
    labelsep=none
}

\captionsetup[lstlisting]{
    labelformat=simple,
    labelsep=dash, 
    belowskip=-0.5cm
}

\captionsetup[table]{
	labelsep=dash, 
	justification=raggedleft, 
	singlelinecheck=off
}

\captionsetup[table]{labelfont=bf, labelformat=tablel}

\setlength{\abovecaptionskip}{10pt} 
\setlength{\belowcaptionskip}{0pt}

\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftbeforelottitleskip}{0pt}

\setlength{\cftaftertoctitleskip}{0pt}
\setlength{\cftafterloftitleskip}{0pt}
\setlength{\cftafterlottitleskip}{0pt}

\setlength{\cftbeforechapskip}{0pt}


% Floats spacing
\setlength{\intextsep}{3ex} 
\setlength{\floatsep}{2ex}
