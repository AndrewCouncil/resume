%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template. 
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{pgfkeys} % Parses key=value pairs
\usepackage[dvipsnames,svgnames,x11names,hyperref]{xcolor} % Required for color package
\usepackage{tikz}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=Purple,
    filecolor=Purple,      
    urlcolor=Purple,
}

\usepackage{inconsolata}
\usepackage[defaultsans,oldstyle,scale=0.95]{opensans}
\usepackage[T1]{fontenc}

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \phone#1{\def\@phone{#1}} % Defines the \phone command to set phone number
\def \@phone {} % Sets \@phone to empty by default

\def \email#1{\def\@email{#1}} % Defines the \email command to set email
\def \@email {} % Sets \@email to empty by default

\def \github#1{\def\@github{#1}} % Defines the \github command to set github link
\def \@github {} % Sets \@github to empty by default

\def \linkedin#1{\def\@linkedin{#1}} % Defines the \linkedin command to set linkedin link
\def \@linkedin {} % Sets \@linkedin to empty by default


% \printheader is used to print the name and other details
\def \printheader {
  \begingroup
    \namesize\bf\texttt{\@name} 
    \hfill
    \linksize \normalfont
    \includegraphics[scale=0.007]{email.png} \texttt{\href{mailto:\@email}{andrew.p.council@gmail.com}}\;
    \includegraphics[scale=0.020]{phone.png} \texttt{\href{tel:\@phone}{\@phone}}\;
    \includegraphics[scale=0.038]{linkedin.png} \texttt{\href{\@linkedin}{drew-council}}\;
    \includegraphics[scale=0.025]{github.png} \texttt{\href{\@github}{AndrewCouncil}}\\
  \endgroup
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printheader % Print the name specified with \name
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  \textcolor{Purple}{
  \MakeUppercase{{\bfseries \sffamily #1}} % Section title
  \sectionlineskip
  \hrule} % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf #1} \hfill {#2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {\em #3} \hfill {\em #4} % Italic job title and location
  }\smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\huge} % Size of the name at the top of the document
\def\linksize{\small} % Size of the name at the top of the document
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\medskip} % The space after your name at the top
\def\sectionskip{} % The space after the heading section
