%%% This style file by Rein van der Woerd was downloaded from http://reinvanderwoerd.nl/blog/2017/05/14/a-beautiful-latex-article-template/ on 16 May, 2017.

\ProvidesClass{template}

% Packages
\LoadClass[11pt]{article}
\usepackage{fontspec}
\usepackage[parfill]{parskip}
\usepackage[
    top=1.5in, 
    bottom=1.5in, 
    left=2in, 
    right=2in
]{geometry}
\usepackage{fancyvrb}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage[ampersand]{easylist}
\usepackage{pdfpages}
\usepackage{changepage}
\usepackage[hidelinks]{hyperref}

% Layout
\pagestyle{fancy}
\fancyhf{}


% Verbatim
\DefineVerbatimEnvironment{verbatim}
{Verbatim}{xleftmargin=.2in}


% Fonts
\defaultfontfeatures{Mapping=tex-text}
% \setmainfont{Charter}
\setmainfont{Charis SIL}
% \setmonofont[Scale=0.75]{Source Code Pro}
\setmonofont[Scale=0.75]{Noto Mono}
\renewcommand{\baselinestretch}{1.3}


% Header/footer
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}



% Subsection
\titleformat{\subsection}
  {\normalfont\fontsize{10}{11}\bfseries}
  {\thesubsection}{1em}{}

\titlespacing*{\subsection}
{0pt}{3ex}{-1.3ex}



% Section
\titlespacing*{\section}
{0pt}{0ex}{0ex}

\newcommand{\sectionbreak}{\clearpage }

\changepage{}{-20mm}{}{25mm}{}{-10mm}{}{}{}
\titleformat
{\section}
[leftmargin]  % shape
{\normalfont\large\bfseries\raggedleft} % format
{} % label
{10pt} % sep
{\vspace{-24pt}
 \rule{8pc}{1pt}\\ 
 \thesection.
}[]

\titlespacing{\section}{8pc}{2mm}{1.5pc}