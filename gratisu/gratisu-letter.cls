\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gratisu-letter}[2013/05/01 v0.1 GratisU letterhead class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions

% Load LaTeX's article class with the `titlepage' option so that \maketitle creates a title page, not just a title block
\LoadClass{letter}

\usepackage[dvinames]{xcolor}
\definecolor{gratisu-color}{RGB}{152,30,50}
\definecolor{gratisu-gray}{RGB}{150,150,150}

\usepackage{graphicx}
\usepackage[colorlinks=false,
            pdfborder={0 0 0},
            ]{hyperref}
\usepackage{tikz}
\usetikzlibrary{calc}

\usepackage{graphicx}

\makeatletter
\signature{\vspace{1cm}\raisebox{-1ex}[0in][0in]{}\\ \@mysignature}
%\signature{\vspace{1cm}\raisebox{-1ex}[0in][0in]{\includegraphics{signature.pdf}}\\ \@mysignature}
%\signature{\raisebox{-1ex}[0in][0in]{\includegraphics[width=2in]{signature-jana.pdf}}\\ \@mysignature}
\newcommand{\@mysignature}{Steven Gubkin}
\renewcommand{\signature}[1]{\renewcommand{\@mysignature}{#1}}
\makeatother

\makeatletter
\date{\makebox[0in][r]{\@mydate}}
\newcommand{\@mydate}{\small \today}
\renewcommand{\date}[1]{\renewcommand{\@mydate}{#1}}
\makeatother

\newlength{\datewidth}
\settowidth{\datewidth}{\today}

%\newcommand{\letterhead}{\includegraphics[trim=0in 0in 4in 0in,clip=true]{letterhead.pdf}\includegraphics[trim=4in 0in 0in 0in,clip=true]{letterhead.pdf}}
%\newlength{\letterheadwidth}
%\settowidth{\letterheadwidth}{\letterhead}

\usepackage{calc}
%\RequirePackage[left=0.625in,right=0.625in,top=1in,bottom=1in]{geometry}
\RequirePackage[textwidth=6.5in,paperwidth=8.5in,paperheight=11in,top=0.6in,bottom=1in]{geometry}

% A nice serif font, but no the prescribed nonfree ITC stone
%\usepackage[oldstylenums]{kpfonts}
\usepackage[T1]{fontenc}
\urlstyle{sf}
\usepackage[defaultsans]{lato}
%\usepackage[defaultsans]{cantarell} 
\usepackage[T1]{fontenc}

\usepackage[outline]{contour}
\contourlength{0.7pt}
\contournumber{10}

\usepackage[letterspace=-60]{microtype}
\address{%
\begin{tikzpicture}[remember picture,overlay]
%    \draw[color=gratisu-gray,line width=1pt] (current page.north west)+(1in,-1in) -- ($(-1in,-1in)+(current page.north east)$);
    \node[color=black,anchor=south west] at ($(current page.north west)+(0.95in,-1in)$) {\sffamily\Huge{\lsstyle Gratis}\contour{black}{U}};
    \draw[color=gratisu-gray,line width=0.25pt] (current page.south west)+(1in,1in) -- ($(-1in,1in)+(current page.south east)$);
    \node[anchor=north west,color=gratisu-gray] at ($(current page.south west)+(1in,1in)$) {\footnotesize\sffamily\parbox{6in}{\noindent 1367 North 4th Street, Columbus, Ohio 43201 \\[-0.1\baselineskip] (773) 809--5659 \textbullet\ \url{contact@gratisu.org} \textbullet\ \url{http://gratisu.org/}}};
\end{tikzpicture}}

\renewcommand{\stopletter}{\vfill}

% That's all, folks!
\endinput
