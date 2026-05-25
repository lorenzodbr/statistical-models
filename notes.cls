\LoadClass[a4paper,11pt]{book}

% =========================================================
% GLOBAL OPTIONS
% =========================================================
\newcommand{\revision}{false}
\newif\ifrevision
\DeclareOption{revision}{\renewcommand{\revision}{true}}
\ProcessOptions\relax

% =========================================================
% ENCODING & LANGUAGE
% =========================================================
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{colorprofiles}
\RequirePackage[a-2a,mathxmp]{pdfx}

% =========================================================
% FONTS
% =========================================================
\RequirePackage[full]{textcomp}
\RequirePackage[
    vvarbb,
    scosf,
    ebgaramond,
    scale=0.953
]{newtx}

\RequirePackage{setspace}
\RequirePackage{fnpct}
\RequirePackage{textgreek}
\RequirePackage{bm}

\renewcommand{\LettrineFontHook}{\color[gray]{0.15}}
\setfnpct{ add-trailing-token = :[.05em]{bang} }

\makeatletter
\newcommand\semiHUGE{\@setfontsize\semiHUGE{25.74}{30.88}}
\newcommand\semiHuge{\@setfontsize\semiHuge{22.72}{27.38}}
\newcommand\semihuge{\@setfontsize\semihuge{18.93}{23.45}}
\newcommand\semiLARGE{\@setfontsize\semiLARGE{15.77}{19.90}}
\newcommand\semiLarge{\@setfontsize\semiLarge{13.15}{15.87}}
\newcommand\semilarge{\@setfontsize\semilarge{11.46}{13.80}}
\newcommand\seminormal{\@setfontsize\seminormal{10.46}{12.77}}
\makeatother

\renewcommand{\ttdefault}{lmtt}

% =========================================================
% MATH
% =========================================================
\RequirePackage[leqno]{amsmath}
\RequirePackage{,amssymb,amsthm,mathtools}
\RequirePackage{siunitx}
\RequirePackage{mleftright}
\RequirePackage{nicefrac}
\RequirePackage{mathdots}
\RequirePackage{cancel}
\RequirePackage{empheq}
\RequirePackage{calc}
\RequirePackage{derivative}

\mleftright
\setcounter{MaxMatrixCols}{20}

% =========================================================
% SYMBOLS
% =========================================================
\RequirePackage{latexsym}
\RequirePackage{fontawesome}
\RequirePackage{pifont}

% =========================================================
% GRAPHICS
% =========================================================
\RequirePackage{tikz,tikz-3dplot,tikz-cd,pgfplots,pgfmath-xfp,xfp}

\usetikzlibrary{
    external,
    patterns,
    shapes.misc,
    shapes.geometric,
    arrows,
    positioning,
    calc,
    decorations.pathreplacing,
    decorations.pathmorphing,
    decorations.markings,
    decorations.text,
    arrows.meta,
    intersections,
    fit,
    backgrounds,
    quotes,
    angles,
    tikzmark,
    bending,
    automata
}

\tikzexternalize[prefix=figures/]
\pgfplotsset{compat=1.18}

% =========================================================
% PAGE LAYOUT & FORMATTING
% =========================================================
\RequirePackage[bottom=3.65cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[titles]{tocloft}
\RequirePackage{emptypage}

\RequirePackage{
    moresize,
    anyfontsize,
    varwidth,
    relsize,
    scalerel,
    stackengine
}

\RequirePackage{etoolbox}
\RequirePackage{rotating}
\RequirePackage{xcolor}
\RequirePackage{alphalph}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[loversize=.15]{lettrine}

\setlist[enumerate]{topsep=4pt,itemsep=3pt,parsep=3pt}
\setlist[itemize]{topsep=4pt,itemsep=2pt,parsep=3pt}

\setlist[description]{
    topsep=4pt,
    itemsep=3pt,
    parsep=3.5pt,
    leftmargin=\parindent,
    labelindent=0.5\parindent
}

\renewcommand*\descriptionlabel[1]{%
    \hspace\labelsep\normalfont\scshape #1%
}

\renewcommand\labelitemi{\color{halfgray}\(\bullet\)}

% =========================================================
% REFERENCES
% =========================================================
\RequirePackage{hyperref}
\RequirePackage[capitalize,english,noabbrev]{cleveref}

\crefname{code}{code}{codes}
\crefname{figure}{figure}{figures}
\crefname{section}{section}{sections}
\crefname{subcode}{code}{codes}
\crefname{table}{table}{tables}

\let\oldCref\Cref
\renewcommand{\Cref}[1]{\textsc{\oldCref{#1}}}

\let\oldcref\cref
\renewcommand{\cref}[1]{\textsc{\oldcref{#1}}}

% =========================================================
% FIGURES / TABLES / LISTINGS
% =========================================================
\RequirePackage{booktabs}
\RequirePackage{float,newfloat}
\RequirePackage{caption,subcaption}
\RequirePackage{multicol,multirow}
\RequirePackage{tabularray}
\RequirePackage{array}
\RequirePackage{clrscode3e}
\RequirePackage{makecell}
\RequirePackage[edges]{forest}

\DeclareFloatingEnvironment[
    listname={List of Codes},
    name=Code,
    within=chapter
]{code}

% =========================================================
% OTHER
% =========================================================
\RequirePackage{acro}
\RequirePackage{kantlipsum}
\RequirePackage{epigraph}
\RequirePackage{xparse}
\RequirePackage{datetime}
\RequirePackage{ifdraft}
\RequirePackage{xspace}

% =========================================================
% TITLE STYLING
% =========================================================
\newfont{\bigNumber}{eurb10 scaled 5000}
\definecolor{halfgray}{gray}{0.65}

\titleformat{\chapter}[block]{\normalfont\Huge\scshape}
{{\textcolor{halfgray}{\raisebox{-.3pt}{\bigNumber\thechapter}}\hspace{10pt}\vline}~}
{10pt}
{\setstretch{.8}\begin{minipage}[c]{\linewidth - \widthof{\raisebox{-.3pt}{\bigNumber\thechapter}\hspace{10pt}\vline} + 8pt}}
[\end{minipage}]

\titleformat{\section}{\normalfont\Large\scshape}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\large\scshape}{\thesubsection}{1em}{}
\titleformat{\part}[display]{\normalfont\HUGE\scshape\centering}
{\textcolor{halfgray}{\bigNumber\thepart}}{8pt}{}

\newdateformat{monthyeardate}{\monthname[\THEMONTH] \THEYEAR}

\renewcommand{\cfttoctitlefont}{\Huge\scshape}
\renewcommand{\cftchapfont}{\large\scshape}
\renewcommand{\cftpartfont}{\Large\scshape}

% =========================================================
% FLOAT STYLING
% =========================================================
\renewcommand{\epigraphsize}{\small}
\setlength{\epigraphwidth}{0.3591\textwidth}
\setlength{\epigraphrule}{0pt}
\setlength{\beforeepigraphskip}{-15pt}
\setlength{\afterepigraphskip}{15pt}

\renewcommand{\textflush}{flushleft}
\renewcommand{\sourceflush}{flushright}
\renewcommand{\epigraphflush}{flushleft}

\setlength{\textfloatsep}{1.75\baselineskip plus 0.2\baselineskip minus 0.2\baselineskip}
\setlength{\multicolsep}{6pt plus 2pt minus 1.5pt}

\DeclareCaptionLabelSeparator{midspace}{\;\;\,}
\DeclareCaptionTextFormat{addpunct}{\maybeaddperiod{#1}}

\captionsetup{textformat=addpunct,labelsep=midspace}
\captionsetup{textfont=it}
\captionsetup[table]{labelfont=sc}
\captionsetup[figure]{labelfont=sc}
\captionsetup[subfigure]{labelfont={large,sc}}

% =========================================================
% THEOREMS
% =========================================================
\newtheoremstyle{cursive}
{9pt}{9pt}{\normalshape}{}{\itshape}{.}{.5em}{#1\thmnote{~#3}}

\newtheoremstyle{cursivewithname}
{9pt}{9pt}{\normalshape}{}{\itshape}{.}{.5em}{#1\thmnote{\;\,\textup{(#3)}}}

\newtheoremstyle{smallcaps}
{9pt}{9pt}{\itshape}{}{\scshape}{.}{.5em}
{#1\ifthenelse{\equal{#2}{}}{}{~}#2\thmnote{\;\,\textup{(#3)}}}

\newtheoremstyle{smallcapswithname}
{9pt}{9pt}{\itshape}{}{\scshape}{.}{.5em}{#1\thmnote{~#3}}

\theoremstyle{cursive}
\newtheorem*{plainnote}{Note}
\newtheorem*{plainexample}{Example}
\newtheorem*{plainexamples}{Examples}
\newtheorem*{plainobservation}{Observation}
\newtheorem*{counterexample}{Counterexample}

\theoremstyle{smallcaps}
\newtheorem{definition}{Definition}
\newtheorem*{proposition*}{Proposition}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}

\newtheorem*{theorem*}{Theorem}
\newtheorem{rrule}{Rule}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem*{hypothesis}{Hypothesis}

\theoremstyle{smallcapswithname}
\newtheorem*{thesis}{Thesis}

\theoremstyle{cursivewithname}
\newtheorem*{plainproof}{Proof}

% =========================================================
% HEADER & FOOTER
% =========================================================
\fancypagestyle{plain}{%
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{notes}{%
    \fancyhf{}
    \fancyhead[LE,RO]{\thepage}
    \fancyhead[RE]{\scshape\nouppercase{\leftmark}}
    \fancyhead[LO]{\scshape\nouppercase{\rightmark}}
    \setlength{\headheight}{13.6pt}
}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\quad #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\quad #1}}

\let\oldfootnote\footnote
\renewcommand{\footnote}[1]{\oldfootnote{\maybeaddperiod{#1}}}

\let\oldfootnotetext\footnotetext
\renewcommand{\footnotetext}[1]{\oldfootnotetext{\maybeaddperiod{#1}}}

% =========================================================
% TITLE PAGE
% =========================================================
\newcommand{\initialmonth}{Mese}
\newcommand{\finalmonth}{Mese}
\newcommand{\initialyear}{Anno}
\newcommand{\finalyear}{Anno}
\newcommand{\coursefontsize}{\Huge}

\newcommand{\course}[2][\Huge]{%
    \renewcommand{\course}{#2}%
    \renewcommand{\coursefontsize}{#1}%
}

\newcommand{\professor}[1]{%
    \renewcommand{\professor}{#1}%
}

\newcommand{\term}[4]{%
    \renewcommand{\initialmonth}{#1}%
    \renewcommand{\initialyear}{#2}%
    \renewcommand{\finalmonth}{#3}%
    \renewcommand{\finalyear}{#4}%
}

\newcommand{\frontpage}{%
    \pagestyle{empty}
    \newgeometry{
        top=3.5cm,
        bottom=4cm,
        left=2.5cm,
        right=2.5cm
    }

    \begin{titlepage}
        \begin{center}
            \semihuge
            \vspace{1cm}

            \bitsmall{
                University of Trento\\[-3pt]
                Master's Degree in Computer Science
            }

            \vfill

            {\coursefontsize\bitbig{\textsc{\course}}}

            \vspace{.3cm}

            {\semiLARGE Notes of Lorenzo Di Berardino}

            \vspace{8.25cm}

            \vfill

            \LARGE\initialmonth~\initialyear~--~\finalmonth~\finalyear
        \end{center}
    \end{titlepage}

    \restoregeometry
    \frontmatter
    \pagestyle{notes}
}

% =========================================================
% PAGE IMPORT
% =========================================================
\newcommand{\importfrom}[1]{%
    \mainmatter

    \def\listofyears{\initialyear}

    \ifthenelse{\equal{\initialyear}{\finalyear}}{}{%
        \edef\listofyears{\listofyears,\finalyear}
    }

    \foreach \year in \listofyears {%
        \foreach \month in {01,02,03,04,05,06,07,08,09,10,11,12} {%
            \foreach \day in {01,02,03,04,05,06,07,08,09,10,...,31} {%
                \edef\FileName{#1/\year\month\day}%
                \IfFileExists{\FileName}{%
                    \input{\FileName}%
                }
            }
        }
    }
}