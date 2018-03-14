%%
%% This is file `mcmthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% mcmthesis.dtx  (with options: `class')
%% 
%% -----------------------------------
%% 
%% This is a generated file.
%% 
%% Copyright (C)
%%     2010 -- 2015 by Zhaoli Wang
%%     2014 -- 2016 by Liam Huang
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Liam Huang.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{mcmthesis}
  [2016/01/29 v6.2 The Thesis Template Designed For MCM/ICM]
\typeout{The Thesis Template Designed For MCM/ICM}
\def\MCMversion{v6.2}
\RequirePackage{xkeyval}
\RequirePackage{etoolbox}
\define@boolkey{MCM}[MCM@opt@]{CTeX}[false]{}
\define@boolkey{MCM}[MCM@opt@]{titlepage}[true]{}
\define@boolkey{MCM}[MCM@opt@]{abstract}[true]{}
\define@boolkey{MCM}[MCM@opt@]{sheet}[true]{}
\define@boolkey{MCM}[MCM@opt@]{titleinsheet}[false]{}
\define@boolkey{MCM}[MCM@opt@]{keywordsinsheet}[false]{}
\define@cmdkeys{MCM}[MCM@opt@]{tcn,problem}
\define@key{MCM}{tcn}[0000]{\gdef\MCM@opt@tcn{#1}}
\define@key{MCM}{problem}[A]{\gdef\MCM@opt@problem{#1}}
\setkeys{MCM}{tcn=0000,problem=B}

\define@key{mcmthesis.cls}{tcn}[0000]{\gdef\MCM@opt@tcn{#1}}
\define@key{mcmthesis.cls}{problem}[A]{\gdef\MCM@opt@problem{#1}}
\define@boolkey{mcmthesis.cls}[MCM@opt@]{titlepage}{}
\define@boolkey{mcmthesis.cls}[MCM@opt@]{abstract}{}
\define@boolkey{mcmthesis.cls}[MCM@opt@]{sheet}{}
\define@boolkey{mcmthesis.cls}[MCM@opt@]{titleinsheet}{}
\define@boolkey{mcmthesis.cls}[MCM@opt@]{keywordsinsheet}{}
\MCM@opt@sheettrue
\MCM@opt@titlepagetrue
\MCM@opt@titleinsheetfalse
\MCM@opt@keywordsinsheetfalse
\MCM@opt@abstracttrue
\newcommand{\mcmsetup}[1]{\setkeys{MCM}{#1}}
\ProcessOptionsX\relax
\LoadClass[a4paper, 11pt]{article}
\newcommand{\team}{Team \#\ \MCM@opt@tcn}
\RequirePackage{fancyhdr, fancybox}
\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{listings}
\RequirePackage[toc, page, title, titletoc, header]{appendix}
\RequirePackage{paralist}
\RequirePackage{amsthm, amsfonts}
\RequirePackage{amsmath, bm}
\RequirePackage{amssymb, mathrsfs}
\RequirePackage{latexsym}
\RequirePackage{longtable, multirow, hhline, tabularx, array}
\RequirePackage{flafter}
\RequirePackage{pifont, calc}
\RequirePackage{colortbl, booktabs}
\RequirePackage{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[scaled]{berasans}
\RequirePackage{hyperref}
\RequirePackage{ifpdf, ifxetex}
\ifMCM@opt@CTeX
\else
  \RequirePackage{environ}
\fi
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
\else
  \ifxetex
    \RequirePackage{graphicx}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
\fi
\RequirePackage{xcolor}
\ifpdf
  \hypersetup{hidelinks}
\else
  \ifxetex
    \hypersetup{hidelinks}
  \else
    \hypersetup{dvipdfm, hidelinks}
  \fi
\fi
\geometry{a4paper, margin = 1.2in}
\pagestyle{fancy}
\fancyhf{}
\lhead{\small\sffamily \team}
\rhead{\small\sffamily Page \thepage\ of \pageref{LastPage}}
\setlength\parskip{.5\baselineskip}
\renewcommand\tableofcontents{%
    \centerline{\normalfont\Large\bfseries\sffamily\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \vskip 5ex%
    \@starttoc{toc}%
    }
\setcounter{totalnumber}{4}
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}
\graphicspath{{./}{./img/}{./fig/}{./image/}{./figure/}{./picture/}
            {./imgs/}{./figs/}{./images/}{./figures/}{./pictures/}}
\def\maketitle{%
  \let\saved@thepage\thepage
  \let\thepage\relax
  \ifMCM@opt@sheet
  \makesheet
  \fi
  \newpage
  \ifMCM@opt@titlepage
    \MCM@maketitle
  \fi
  \newpage
  \let\thepage\saved@thepage
  \setcounter{page}{1}
  \pagestyle{fancy}
}
\def\abstractname{Summary}
\ifMCM@opt@CTeX
  \newbox\@abstract%
  \setbox\@abstract\hbox{}%
  \long\def\abstract{\bgroup\global\setbox\@abstract\vbox\bgroup\hsize\textwidth\leftskip1cm\rightskip1cm}%
  \def\endabstract{\egroup\egroup}
  \def\make@abstract{%
    \begin{center}
      \textbf{\abstractname}
    \end{center}
    \usebox\@abstract\par
  }
\else
  \RenewEnviron{abstract}{\xdef\@abstract{\expandonce\BODY}}
  \def\make@abstract{%
    \begin{center}
      \textbf{\abstractname}
    \end{center}
    \@abstract\par
  }
\fi
\def\keywordsname{Keywords}
\ifMCM@opt@CTeX
  \newbox\@keywords
  \setbox\@keywords\hbox{}
  \def\keywords{\global\setbox\@keywords\vbox\bgroup\noindent\leftskip0cm}
  \def\endkeywords{\egroup}%
  \def\make@keywords{%
   \par\hskip.4cm\textbf{\keywordsname}: \usebox\@keywords\hfill\par
  }
\else
  \NewEnviron{keywords}{\xdef\@keywords{\expandonce\BODY}}
  \def\make@keywords{%
    \par\noindent\textbf{\keywordsname}:
    \@keywords\par
  }
\fi
\newcommand{\headset}{{\Large\the\year}\\MCM/ICM\\Summary Sheet}
\newcommand{\problem}[1]{\mcmsetup{problem = #1}}
\def\makesheet{%
  \pagestyle{empty}%
  \null%
  \vspace*{-5pc}%
  \begin{center}
  \begingroup
  \setlength{\parindent}{0pt}
     \begin{minipage}{0.28\linewidth}
      For office use only\\[4pt]
      \makebox[0.15\linewidth][l]{T1}\rule[-2pt]{0.85\linewidth}{0.5pt}\\[4pt]
      \makebox[0.15\linewidth][l]{T2}\rule[-2pt]{0.85\linewidth}{0.5pt}\\[4pt]
      \makebox[0.15\linewidth][l]{T3}\rule[-2pt]{0.85\linewidth}{0.5pt}\\[4pt]
      \makebox[0.15\linewidth][l]{T4}\rule[-2pt]{0.85\linewidth}{0.5pt}
     \end{minipage}%
     \begin{minipage}{0.44\linewidth}
      \centering
      Team Control Number\\[0.7pc]
      {\Huge\textbf{\MCM@opt@tcn}}\\[1.8pc]
      Problem Chosen\\[0.7pc]
      {\Huge\textbf{\MCM@opt@problem}}
     \end{minipage}%
     \begin{minipage}{0.28\linewidth}
      For office use only\\[4pt]
      \makebox[0.15\linewidth][l]{F1}\rule[-2pt]{0.85\linewidth}{0.5pt}\\[4pt]
      \makebox[0.15\linewidth][l]{F2}\rule[-2pt]{0.85\linewidth}{0.5pt}\\[4pt]
      \makebox[0.15\linewidth][l]{F3}\rule[-2pt]{0.85\linewidth}{0.5pt}\\[4pt]
      \makebox[0.15\linewidth][l]{F4}\rule[-2pt]{0.85\linewidth}{0.5pt}
     \end{minipage}\par
  \rule{\linewidth}{0.5pt}\par
  \textbf{\headset}%
  \par
  \endgroup
  \vskip 10pt%
  \ifMCM@opt@titleinsheet
    \normalfont \LARGE \@title \par
  \fi
  \end{center}
\ifMCM@opt@keywordsinsheet
  \make@abstract
  \make@keywords
\else
  \make@abstract
\fi}
\newcommand{\MCM@maketitle}{%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em%
  \ifMCM@opt@abstract%
    \make@abstract
    \make@keywords
  \fi%
}
\newtheorem{Theorem}{Theorem}[section]
\newtheorem{Lemma}[Theorem]{Lemma}
\newtheorem{Corollary}[Theorem]{Corollary}
\newtheorem{Proposition}[Theorem]{Proposition}
\newtheorem{Definition}[Theorem]{Definition}
\newtheorem{Example}[Theorem]{Example}
\providecommand{\dif}{\mathop{}\!\mathrm{d}}
\providecommand{\me}{\mathrm{e}}
\providecommand{\mi}{\mathrm{i}}
\definecolor{grey}{rgb}{0.8,0.8,0.8}
\definecolor{darkgreen}{rgb}{0,0.3,0}
\definecolor{darkblue}{rgb}{0,0,0.3}
\def\lstbasicfont{\fontfamily{pcr}\selectfont\footnotesize}
\lstset{%
   % numbers=left,
   % numberstyle=\small,%
    showstringspaces=false,
    showspaces=false,%
    tabsize=4,%
    frame=lines,%
    basicstyle={\footnotesize\lstbasicfont},%
    keywordstyle=\color{darkblue}\bfseries,%
    identifierstyle=,%
    commentstyle=\color{darkgreen},%\itshape,%
    stringstyle=\color{black}%
}
\lstloadlanguages{C,C++,Java,Matlab,Mathematica}
\endinput
%% 
%% This work consists of these files mcmthesis.dtx,
%%                                   figures/ and
%%                                   code/,
%% and the derived files             mcmthesis.cls,
%%                                   mcmthesis-demo.tex,
%%                                   README,
%%                                   LICENSE,
%%                                   mcmthesis.pdf and
%%                                   mcmthesis-demo.pdf.
%%
%% End of file `mcmthesis.cls'.
