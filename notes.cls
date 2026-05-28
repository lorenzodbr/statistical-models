\LoadClass[a4paper,11pt]{book}

% Global options
\newcommand{\revision}{false}
\newif\ifrevision
\DeclareOption{revision}{\renewcommand{\revision}{true}}
\ProcessOptions\relax

% Encoding & Language
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{colorprofiles}
\RequirePackage[a-2a,mathxmp]{pdfx}
\RequirePackage[italian]{isodate}

% Math
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

% Fonts
\RequirePackage[full]{textcomp}
\RequirePackage{iwona}
\makeatletter
\edef\iwonafamily{\rmdefault}
\makeatother
\RequirePackage[vvarbb,scosf,ebgaramond,scale=0.953]{newtx}
\RequirePackage{setspace}
\RequirePackage{fnpct}
\RequirePackage{textgreek}
\RequirePackage{bm}
\RequirePackage{lccaps}

% Symbols
\RequirePackage{latexsym}
\RequirePackage{fontawesome}
\RequirePackage{pifont}

% Graphics
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
    automata,
}
\tikzexternalize[prefix=figures/]
\pgfplotsset{compat=1.18}

% Page layout & formatting
\RequirePackage[bottom=3.65cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[titles]{tocloft}
\RequirePackage{emptypage}
\RequirePackage{moresize,anyfontsize,varwidth,relsize,scalerel,stackengine}
\RequirePackage{etoolbox}
\RequirePackage{rotating}
\RequirePackage{xcolor}
\RequirePackage{alphalph}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[loversize=.15]{lettrine}

% References
\RequirePackage{hyperref}
\RequirePackage[capitalize,english,noabbrev]{cleveref}

% Figures, Tables & Listings
\RequirePackage{booktabs}
\RequirePackage{float,newfloat}
\RequirePackage{caption,subcaption}
\RequirePackage{multicol,multirow}
\RequirePackage{tabularray}
\RequirePackage{array}
\RequirePackage{clrscode3e}
\RequirePackage{makecell}
\RequirePackage[edges]{forest}

% Other
\RequirePackage{acro}
\RequirePackage{kantlipsum}
\RequirePackage{epigraph}
\RequirePackage{xparse}
\RequirePackage{datetime}
\RequirePackage{ifdraft}
\RequirePackage{xspace}

% ---------------------------------

% General stylings
\setfnpct{ add-trailing-token = :[.05em]{bang} }

% ---------------------------------

% Font stylings

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

% ---------------------------------

% Title stylings

\newfont{\bigNumber}{eurb10 scaled 5000}
\definecolor{halfgray}{gray}{0.6}

% \renewcommand\thepart{\arabic{part}}

\newcommand{\sffont}{\fontfamily{\iwonafamily}\selectfont}

\titleformat{\chapter}[block]{\sffont\HUGE\scshape}{{\textcolor{halfgray}{\raisebox{-.3pt}{\bigNumber\thechapter}}\hspace{10pt}\vline}~}{10pt}{\setstretch{.8}\begin{minipage}[c]{\linewidth - \widthof{\raisebox{-.3pt}{\bigNumber\thechapter}\hspace{10pt}\vline} + 8pt}}[\end{minipage}]
\titleformat{\section}{\sffont\Large\scshape}{\thesection}{1em}{}
\titleformat{\subsection}{\sffont\large\scshape}{\thesubsection}{1em}{}
\titleformat{\part}[display]{\sffont\HUGE\scshape\centering}{\textcolor{halfgray}{\bigNumber\thepart}}{8pt}{}
\titleformat{\paragraph}[runin]{\sffont\bfseries\scshape}{}{0em}{}

\newdateformat{monthyeardate}{%
    \monthname[\THEMONTH] \THEYEAR}

\renewcommand{\cfttoctitlefont}{\Huge\sffont\scshape}
\renewcommand{\cftchapfont}{\large\sffont\scshape}
\renewcommand{\cftpartfont}{\Large\sffont\scshape}

% ---------------------------------

% Float stylings

\renewcommand{\epigraphsize}{\small}
\setlength{\epigraphwidth}{0.3591\textwidth}
\renewcommand{\textflush}{flushleft}
\renewcommand{\sourceflush}{flushright}
\renewcommand{\epigraphflush}{flushleft}
\setlength{\epigraphrule}{0pt}
\setlength{\beforeepigraphskip}{-15pt}
\setlength{\afterepigraphskip}{15pt}

\setlength{\textfloatsep}{1.75\baselineskip plus 0.2\baselineskip minus 0.2\baselineskip}
% \setlength{\multicolsep}{6.0pt plus 2.0pt minus 1.5pt}

\DeclareCaptionLabelSeparator{midspace}{\;\;\,}
\DeclareCaptionTextFormat{addpunct}{\maybeaddperiod{#1}}
\captionsetup{textformat=addpunct,labelsep=midspace}

\ExplSyntaxOn
\NewDocumentCommand{\maybeaddperiod}{m}
{
    \userninefourtwoninethree_maybeaddperiod:n { #1 }
}

\cs_new_protected:Nn \userninefourtwoninethree_maybeaddperiod:n
{
    \regex_match:nnTF { .*[\!\?\.\:] \} \Z } { #1 } { #1 } { #1. }
}
\ExplSyntaxOff

\captionsetup{textfont=it}
\captionsetup[table]{labelfont=sc}
\captionsetup[figure]{labelfont=sc}
\captionsetup[subfigure]{labelfont={large,sc}}

% ---------------------------------

% Theorem stylings

\newtheoremstyle{cursive}
{9pt}{9pt}{\normalshape}{}{\itshape}{.}{.5em}{#1\thmnote{~#3}}
\newtheoremstyle{cursivewithname}
{9pt}{9pt}{\normalshape}{}{\itshape}{.}{.5em}{#1\thmnote{\;\,\textup{(#3)}}}
\newtheoremstyle{smallcaps}
{9pt}{9pt}{\itshape}{}{\sffont\scshape}{.}{.5em}{#1\ifthenelse{\equal{#2}{}}{}{~}#2\thmnote{\;\,\normalfont\textup{(#3)}}}
\newtheoremstyle{smallcapswithname}
{9pt}{9pt}{\itshape}{}{\sffont\scshape}{.}{.5em}{#1\thmnote{~#3}}

\theoremstyle{cursive}
\newtheorem*{plainnote}{Note}
\newtheorem*{plainexample}{Example}
\newtheorem*{plainexamples}{Examples}
\newtheorem*{plainobservation}{Observation}
\newtheorem*{counterexample}{Counterexample}

\theoremstyle{smallcaps}
\newtheorem{definition}{Definition}
\newtheorem*{definition*}{Definition}
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

\newenvironment{example}
{\renewcommand\qedsymbol{\(\Diamond\)}
    \pushQED{\qed}\plainexample}
{\popQED\endplainexample}

\newenvironment{examples}
{\renewcommand\qedsymbol{\(\Diamond\)}
    \pushQED{\qed}\plainexamples}
{\popQED\endplainexamples}

\newenvironment{observation}
{\renewcommand\qedsymbol{\resizebox{!}{7pt}{\(\triangle\)}}
    \pushQED{\qed}\plainobservation}
{\popQED\endplainobservation}

\newenvironment{note}
{\renewcommand\qedsymbol{\scriptsize \faCircleThin}
    \pushQED{\qed}\plainnote}
{\popQED\endplainnote}

\newenvironment{proof*}
{\pushQED{\qed}\plainproof}
{\popQED\endplainproof}

\DeclareFloatingEnvironment[
    listname={List of Codes},
    name=Code,
    within=chapter,
]{code}

% ---------------------------------

% Reference stylings

\crefname{code}{code}{codes}
\crefname{figure}{figure}{figures}
\crefname{section}{section}{sections}
\crefname{subcode}{code}{codes}
\crefname{table}{table}{tables}

\let\oldCref\Cref%
\renewcommand{\Cref}[1]{\textsc{\oldCref{#1}}}
\let\oldcref\cref%
\renewcommand{\cref}[1]{\textsc{\oldcref{#1}}}

% ---------------------------------

% List stylings

\setlist[enumerate]{topsep=4pt,itemsep=3pt,parsep=3pt,}
\setlist[itemize]{topsep=4pt,itemsep=2pt,parsep=3pt,}
\setlist[description]{topsep=4pt,itemsep=3pt,parsep=3.5pt,leftmargin=\parindent,labelindent=0.5\parindent,}
\renewcommand*\descriptionlabel[1]{\hspace\labelsep\normalfont\scshape #1}
\renewcommand\labelitemi{\color{halfgray}\(\bullet\)}

% ---------------------------------

% Custom commands

\mleftright

\DeclareMathOperator{\im}{Im}
\DeclareMathOperator{\mcd}{mcd}
\DeclareMathOperator{\probop}{Pr}
\DeclareMathOperator{\varprobop}{P}
\DeclareMathOperator{\encode}{E}
\DeclareMathOperator{\decode}{D}
\DeclareMathOperator{\verify}{V}
\DeclareMathOperator{\generation}{G}
\DeclareMathOperator{\sign}{S}
\DeclareMathOperator{\feistelbox}{F}
\DeclareMathOperator{\dlop}{DL}
\DeclareMathOperator{\dist}{D}
\DeclareMathOperator{\view}{\textup{\textsc{View}}}
\DeclareMathOperator{\simulator}{M}
\DeclareMathOperator{\sg}{sgn}
\DeclareMathOperator{\ssucc}{S}
\DeclareMathOperator{\ack}{Ack}
\DeclareMathOperator{\gn}{gn}
\DeclareMathOperator{\dom}{dom}
\DeclareMathOperator{\range}{Range}
\DeclareMathOperator{\metric}{d}
\DeclareMathOperator{\E}{E}
\let\P\relax
\DeclareMathOperator{\P}{P}
\let\L\relax
\DeclareMathOperator{\L}{L}
\let\l\relax
\DeclareMathOperator{\l}{\ell}
\DeclareMathOperator{\PL}{PL}
\DeclareMathOperator{\Var}{Var}
\DeclareMathOperator{\Cov}{Cov}
\DeclareMathOperator{\Corr}{Corr}
\DeclareMathOperator{\Pa}{Pa}
\DeclareMathOperator{\dsep}{dsep}
\DeclareMathOperator{\EPE}{EPE}
\DeclareMathOperator{\BER}{BER}
\DeclareMathOperator{\MSE}{MSE}
\DeclareMathOperator{\FPR}{FPR}
\DeclareMathOperator{\TPR}{TPR}
\DeclareMathOperator{\FDR}{FDR}
\DeclareMathOperator{\ER}{ER}
\DeclareMathOperator{\Avg}{Average}

\renewcommand{\epsilon}{\varepsilon}

\let\oldunderbracket\underbracket
\renewcommand{\underbracket}[2][0.16ex]{\oldunderbracket[#1]{#2}}

\newcommand{\nn}{\mathbb{N}}
\newcommand{\zz}{\mathbb{Z}}
\newcommand{\qq}{\mathbb{Q}}
\newcommand{\rr}{\mathbb{R}}
\newcommand{\cc}{\mathbb{C}}
\newcommand{\uu}{\mathbb{U}}
\newcommand{\xx}{\mathcal{X}}
\newcommand{\yy}{\mathcal{Y}}
\newcommand{\dd}{\mathcal{D}}
\newcommand{\gcal}{\mathcal{G}}
\newcommand{\lcal}{\mathcal{L}}
\newcommand{\scal}{\mathcal{S}}
\newcommand{\acal}{\mathcal{A}}
\newcommand{\ii}{\mathcal{I}}
\newcommand{\ttt}{\mathcal{T}}
\newcommand{\zzz}{\mathcal{Z}}
\newcommand{\ncal}{\mathcal{N}}
\newcommand{\hh}{\mathcal{H}}
\newcommand{\oone}{\mathbb{1}}
\newcommand{\normal}{\mathcal{N}}
\newcommand{\lagr}{\mathcal{L}}
\newcommand{\indep}{\mathrel{\bot}}
\newcommand{\bitsmall}[1]{{\fontsize{0.875\fontdimen6\font}{0.8\baselineskip}\selectfont #1}}
\newcommand{\bitbig}[1]{{\fontsize{1.1\fontdimen6\font}{1.1\baselineskip}\selectfont #1}}
\newcommand{\zzs}[1]{\ensuremath{\zz_{#1}^*}}
\newcommand{\zzsn}{\ensuremath{\zzs{n}}}
\newcommand{\dl}[2]{\ensuremath{\dlop\left(#1,#2\right)}}
\newcommand{\legendre}[2]{\ensuremath{\left(\frac{#1}{#2}\right)}}
\newcommand{\jacobi}[2]{\legendre{#1}{#2}}
\newcommand{\inrnd}{\ensuremath{\in_\textsc{r}}}
\newcommand{\xor}{\textrm{\bitsmall{XOR}}}
\newcommand{\textor}{\textrm{\bitsmall{OR}}}
\newcommand{\ppt}{\textup{\bitsmall{PPT}}}
\newcommand{\np}{\textup{\bitsmall{NP}}}
\newcommand{\conp}{\textup{co-\bitsmall{NP}}}
\newcommand{\p}{\textup{\bitsmall{P}}}
\newcommand{\ip}{\textup{\bitsmall{IP}}}
\newcommand{\pspace}{\textup{\bitsmall{PSPACE}}}
\newcommand{\npspace}{\textup{\bitsmall{NPSPACE}}}
\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\Abs}[1]{|#1|}
\newcommand{\pig}[1]{\scalerel*[2.5pt]{\big#1}{%
        \ensurestackMath{\addstackgap[1.5pt]{\big#1}}}}
\newcommand{\pigl}[1]{\mathopen{\pig{#1}}}
\newcommand{\pigr}[1]{\mathclose{\pig{#1}}}
\newcommand{\pars}[1]{\left(#1\right)}
\NewDocumentCommand{\prob}{g}{%
    \IfValueTF{#1}{\probop\mleft[#1\mright]}{\varprobop}%
}
\newcommand{\verifier}{\mathrm{V}}
\newcommand{\prover}{\mathrm{P}}
\newcommand{\powerset}{\raisebox{.15\baselineskip}{\Large\ensuremath{\wp}}}
\newcommand{\cmark}{\ding{51}}
\newcommand{\xmark}{\ding{55}}
\newcommand{\inlineeqno}{\ensuremath{\stepcounter{equation}\hfill \textup{(\theequation)}}}
\newcommand{\expl}[1]{\ensuremath{\quad\bitsmall{\textrm{#1}}}}
\newcommand{\eclosure}{\ensuremath{\varepsilon\textrm{-closure}}}
\newcommand{\primo}{\ensuremath{\mathrm{primo}}}
\newcommand{\lleq}{\ensuremath{\mathrm{leq}}}
\newcommand{\aand}{\ensuremath{\mathrm{and}}}
\newcommand{\hp}{\textup{\textsc{Hp}}}
\newcommand{\hpind}{\textup{\textsc{Hp Ind}}}
\newcommand{\pumpl}{\textsc{Pl}}
\newcommand{\equivset}[2][]{\ensuremath{[#2]_{#1}}}
\newcommand{\absurd}{\ensuremath{\Rightarrow\!\Leftarrow}}
\newcommand{\converges}{\ensuremath{\negthinspace\downarrow}}
\newcommand{\sconverges}{\ensuremath{\downarrow}}
\newcommand{\diverges}{\ensuremath{\negthinspace\uparrow}}
\newcommand{\sdiverges}{\ensuremath{\uparrow}}
\newcommand{\Val}{\ensuremath{\mathrm{Val}}}
\newcommand{\defeq}{\ensuremath{\stackrel{\textup{def}}{=}}}
\renewcommand{\gets}{\ensuremath{\coloneq}}
\newcommand{\overbar}[1]{\ensuremath{\mkern 4.5mu\overline{\mkern-4.5mu#1\mkern-.5mu}\mkern .5mu}}
\newcommand{\sem}[1]{\ensuremath{\llbracket #1 \rrbracket}}
\newcommand{\funcred}{\preccurlyeq}
\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}

\renewcommand{\normal}{\ncal}
\newcommand{\bernoulli}{\mathrm{Bernoulli}}
\newcommand{\binomial}{\mathrm{Binomial}}
\newcommand{\exponential}{\mathrm{Exp}}
\newcommand{\poisson}{\mathrm{Poisson}}
\newcommand{\betadist}{\mathrm{Beta}}
\newcommand{\Foreach}{\textbf{for each} }
\newcommand{\Action}[1]{\textbf{#1}}
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator*{\argmin}{argmin}

\newcommand{\structure}[3]{\ensuremath{#1\hspace{.7pt}#2\hspace{.7pt}#3}}
\newcommand{\set}[1]{\structure{\{}{#1}{\}}}
\newcommand{\Set}[1]{\structure{\left\{}{#1}{\right\}}}
\newcommand{\tuple}[1]{\structure{(}{#1}{)}}
\newcommand{\Tuple}[1]{\structure{\left(}{#1}{\right)}}
\newcommand{\braket}[1]{\structure{\langle}{#1}{\rangle}}
\newcommand{\Braket}[1]{\structure{\left\langle}{#1}{\right\rangle}}

\newcommand{\norm}[1]{\lVert#1\rVert}
\newcommand{\Norm}[1]{\left\lVert#1\right\rVert}

\newcommand{\blank}{{\mspace{1mu}\cdot\mspace{1mu}}}

\newcommand{\bvec}[1]{\bm{\mathrm{#1}}}
\newcommand{\bvech}[1]{\hat{\bvec{#1}}}
\newcommand{\xvec}{\bvec{x}}
\newcommand{\cvec}{\bvec{c}}
\newcommand{\xvech}{\bvech{x}}
\newcommand{\Xvec}{\bvec{X}}
\newcommand{\yvec}{\bvec{y}}
\newcommand{\Yvec}{\bvec{Y}}
\newcommand{\yvech}{\bvech{y}}
\newcommand{\zvec}{\bvec{z}}
\newcommand{\wvec}{\bvec{w}}
\newcommand{\Wvec}{\bvec{W}}
\newcommand{\wvech}{\bvech{w}}
\newcommand{\vvec}{\bvec{v}}
\newcommand{\uvec}{\bvec{u}}
\newcommand{\Uvec}{\bvec{U}}
\newcommand{\svec}{\bvec{s}}
\newcommand{\pvec}{\bvec{p}}
\newcommand{\betavec}{\bvec{\upbeta}}
\newcommand{\betavech}{\bvech{\upbeta}}
\newcommand{\muvec}{\bvec{\upmu}}
\newcommand{\muvech}{\bvech{\upmu}}
\newcommand{\alphavec}{\bvec{\upalpha}}
\newcommand{\epsilonvec}{\bvec{\upvarepsilon}}
\newcommand{\xivec}{\bvec{\upxi}}
\newcommand{\zerovec}{\bvec{0}}
\newcommand{\onevec}{\bvec{1}}
\newcommand{\thetavec}{\bvec{\uptheta}}
\newcommand{\thetavech}{\bvech{\uptheta}}
\newcommand{\gammavec}{\bvec{\upgamma}}
\newcommand{\deltavec}{\bvec{\updelta}}

\DeclareMathOperator{\sgn}{sgn}

\newcommand\given[1][]{\,#1\vert\,}
\newcommand\Given{\,\middle\vert\,}

\setlength{\columnseprule}{0.4pt}

\makeatletter
\newcommand*{\transpose}{%
  {\mathpalette\@transpose{}}%
}
\newcommand*{\@transpose}[2]{%
  % #1: math style
  % #2: unused
  \raisebox{\depth}{$\m@th#1\intercal$}%
}
\makeatother
\renewcommand{\t}{\transpose}

\makeatletter
\DeclareRobustCommand\onedot{\futurelet\@let@token\@onedot}
\def\@onedot{\ifx\@let@token.\else.\null\fi\xspace}

\def\eg{\emph{e.g}\onedot} \def\Eg{\emph{E.g}\onedot}
\def\ie{\emph{i.e}\onedot} \def\Ie{\emph{I.e}\onedot}
\def\cf{\emph{c.f}\onedot} \def\Cf{\emph{C.f}\onedot}
\def\etc{\emph{etc}\onedot} \def\vs{\emph{vs}\onedot}
\def\wrt{w.r.t\onedot} \def\dof{d.o.f\onedot}
\def\etal{\emph{et al}\onedot}
\makeatother

\makeatletter
\NewDocumentCommand{\spaced@operator}{me{_^}}{%
  \csname #1@\endcsname\slimits@
  \IfValueT{#2}{_{\text{\thickmuskip=3mu \m@th $#2$}}}%
  \IfValueT{#3}{^{\text{\thickmuskip=3mu \m@th $#3$}}}%
}
\def\operator@list{%
  coprod,bigvee,bigwedge,biguplus,%
  bigcap,bigcup,prod,sum,bigotimes,%
  bigoplus,bigodot,bigsqcup%
}
\@for\next:=\operator@list\do{%
  \expandafter\edef\csname\next\endcsname{%
    \noexpand\DOTSB\spaced@operator{\next}%
  }%
}
\renewcommand\lim{\spaced@lim{lim}}
\renewcommand\liminf{\spaced@lim{lim\,inf}}
\renewcommand\limsup{\spaced@lim{lim\,sup}}
\renewcommand\max{\spaced@lim{max}}
\renewcommand\min{\spaced@lim{min}}
\renewcommand\sup{\spaced@lim{sup}}
\renewcommand\inf{\spaced@lim{inf}}
\renewcommand\argmin{\spaced@lim{argmin}}
\renewcommand\argmax{\spaced@lim{argmax}}
\NewDocumentCommand{\spaced@lim}{me{_^}}{%
  \qopname\relax m{#1}%
  \IfValueT{#2}{_{\text{\thickmuskip=3mu \m@th $#2$}}}%
  \IfValueT{#3}{^{\text{\thickmuskip=3mu \m@th $#3$}}}%
}
\makeatother

% ---------------------------------

% Acronyms

\IfFileExists{acronyms.tex}{\input{acronyms.tex}}{}
\RenewAcroTemplate{long}{\textup{\acrowrite{long}}}
\RenewAcroTemplate{short}{\textup{\bitsmall{\acrowrite{short}}}}
\RenewAcroTemplate{long-short}{\acrowrite{long}~\textup{(\bitsmall{\acrowrite{short}})}}

% ---------------------------------

% Math

\setcounter{MaxMatrixCols}{20}

% ---------------------------------

% Header & Footer

\fancypagestyle{plain}{%
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{notes}{%
    \fancyhf{}
    \fancyhead[LE,RO]{\thepage}
    \fancyhead[RE]{\sffont\scshape\nouppercase{\leftmark}}
    \fancyhead[LO]{\sffont\scshape\nouppercase{\rightmark}}
    \setlength{\headheight}{13.6pt}
}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\color{halfgray}\quad #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\color{halfgray}\quad #1}}

\let\oldfootnote\footnote
\renewcommand{\footnote}[1]{\oldfootnote{\maybeaddperiod{#1}}}
\let\oldfootnotetext\footnotetext
\renewcommand{\footnotetext}[1]{\oldfootnotetext{\maybeaddperiod{#1}}}

% ---------------------------------

% Title page

\newcommand{\initialmonth}{Mese}
\newcommand{\finalmonth}{Mese}
\newcommand{\initialyear}{Anno}
\newcommand{\finalyear}{Anno}
\newcommand{\coursefontsize}{\Huge}
\newcommand{\course}[2][\Huge]{\renewcommand{\course}{#2}\renewcommand{\coursefontsize}{#1}}
\newcommand{\professor}[1]{\renewcommand{\professor}{#1}}
\newcommand{\repo}[1]{\renewcommand{\repo}{#1}}

\newcommand{\term}[4]{%
    \renewcommand{\initialmonth}{#1}%
    \renewcommand{\initialyear}{#2}%
    \renewcommand{\finalmonth}{#3}%
    \renewcommand{\finalyear}{#4}%
}

\newcommand{\frontpage}{%
    \pagestyle{empty}
    \newgeometry{top=3.5cm, bottom=4cm, left=2.5cm, right=2.5cm}

    \begin{titlepage}
        \begin{center}
            \semihuge
            \vspace{1cm}
            {University of Trento}
            
            \vfill
            {\coursefontsize\sffont\bitbig{\textsc{\course}}}
            \vspace{.3cm}

            \edef\repourl{https://github.com/lorenzodbr/\repo}
            {\semiLARGE \href{\repourl}{Notes} by Lorenzo Di Berardino}\\[-.15cm]
            {\normalsize \emph{Last update: \liningnums{\the\day}/\liningnums{\the\month}/\liningnums{\the\year}}}
            \vspace{8.25cm}
            \vfill
            
            \LARGE\initialmonth~\initialyear---\finalmonth~\finalyear
        \end{center}
    \end{titlepage}
    
    \restoregeometry
    \frontmatter
    \pagestyle{notes}
}


% ---------------------------------

% Page import

\newcommand{\importfrom}[1]{%
    \mainmatter

    \def\listofyears{\initialyear}

    \ifthenelse{\equal{\initialyear}{\finalyear}}{}{%
        \edef\listofyears{\listofyears,\finalyear}
    }

    \foreach \year in \listofyears {%
            \foreach \month in {01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12} {%
                    \foreach \day in {01, 02, 03, 04, 05, 06, 07, 08, 09, 10, ..., 31} {%
                            \edef\FileName{#1/\year\month\day}%
                            \IfFileExists{\FileName}{%
                                \input{\FileName}%
                            }
                        }
                }
        }
}