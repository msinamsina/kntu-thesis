%%
%%  This is file `kntu-thesis.cls',
%%  It is a modification of tehran-thesis by Sina Momken
%%  which itself is a change of IUST-Thesis by Mahmood Amintoosi
%%  which itself is a change of Tabriz_thesis by Vahid Damanafshan
%%  which itself is a change of xepersian-thesis by Vafa Khalighi
%%
%%  Author: Mohammad Sina Allahkaram, msinamsina@gmail.com
%%	Base author: Sina Momken, sina.momken@gmail.com
%%  https://github.com/msinamsina/kntu-thesis
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kntu-thesis}
[05/09/2017 v0.1
Persian thesis document class in XeLaTeX for K. N. Toosi University of Technology projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\college#1{\gdef\@college{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\firstsupervisorrank}[1]{\def\@firstsupervisorrank{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\secondsupervisorrank}[1]{\def\@secondsupervisorrank{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\firstadvisorrank}[1]{\def\@firstadvisorrank{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\secondadvisorrank}[1]{\def\@secondadvisorrank{#1}}
\newcommand{\internaljudge}[1]{\def\@internaljudge{#1}}
\newcommand{\internaljudgerank}[1]{\def\@internaljudgerank{#1}}
\newcommand{\externaljudge}[1]{\def\@externaljudge{#1}}
\newcommand{\externaljudgerank}[1]{\def\@externaljudgerank{#1}}
\newcommand{\externaljudgeuniversity}[1]{\def\@externaljudgeuniversity{#1}}
\newcommand{\graduatedeputy}[1]{\def\@graduatedeputy{#1}}
\newcommand{\graduatedeputyrank}[1]{\def\@graduatedeputyrank{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\long\def\acknowledgement#1{\gdef\@acknowledgement{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\long\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latincollege#1{\gdef\@latincollege{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@irfonts
\@irfontsfalse
\DeclareOption{irfonts}{\@irfontstrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
	\if@mscthesis
	{\projectLabel{پایان‌نامه}}
	\else
	\if@bscthesis
	{\projectLabel{پروژه}}
	\else
	{\projectLabel{رساله}}
	\fi\fi
}\fi

\ifx\@degree\undefined%
{
	\if@mscthesis
	\degree{کارشناسی ارشد}
	\else
	\if@bscthesis
	\degree{کارشناسی}
	\else
	\degree{دکتری}
	\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% جلد زرکوب به فارسی (بدون اساتید مشاور)
\newcommand{\coverPage}{\begin{titlepage}
		%\topmargin=-30pt
		\vspace{-10mm}
		% دستورات تک‌آرمه
		\centerline{{\includegraphics[width=5cm]{Logo.png}}}
		\centerline{\textcolor[rgb]{0,0,0.5}{\nast \large  \@university}}
		\centerline{\textcolor[rgb]{0,0,0.5}{\nast \bfseries\@faculty - \@department}}
		% بعد از آرم‌ها
		\centering
		\vskip 0.5cm
		\if@bscthesis 
		{\large\bfseries{پروژهٔ کارشناسی \@subject}
			\ifx\@field\undefined%
			\relax
			\else
			گرایش \@field
			\fi
		}
		\else
		
		{\large\bfseries \@projectLabel{} \writtenfor
			\@degree{} 
		}
		
		{\large\bfseries{در رشتهٔ \@subject}}
		\vskip .2cm
		\centerline{\large \bfseries%
			\ifx\@field\undefined%
			\relax
			\else
			گرایش \@field
			\fi
		}
		\fi	
		{\huge\titlefont\bf \@title}\par
		\vskip 1cm
		\par
		{\Large\bfseries{\@name\ \ \@surname}}
		\par
		\vskip 15mm
		\large
		{
			\ifx\@firstsupervisor\undefined%
			\ifx\@secondsupervisor\undefined%
			\else
			\fi
			\else
			\ifx\@secondsupervisor\undefined%
			استاد راهنما
			{\Large\bfseries\par
				\@firstsupervisor}
			\else
			\large
			اساتید راهنما
			\par
			{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
			\fi\fi}
		\par\large
		%		{\ifx\@firstadvisor\undefined%
		%			\ifx\@secondadvisor\undefined%
		%			\else\fi
		%			\else
		%			\ifx\@secondadvisor\undefined%
		%			استاد مشاور
		%			{\Large\bfseries\par
		%				\@firstadvisor}
		%			\else
		%			
		%			\large
		%			اساتید مشاور
		%			\par
		%			{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
		%			\fi\fi}
		
		\par
		\vskip 6mm
		%\vfill
		{\large \@thesisdate}
		%\vfill
	\end{titlepage}%
} % end of titlePage
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\besmPage}{
	%% بسم الله الرحمن الرحیم
	\clearpage
	\thispagestyle{empty}
	\hfill
	\begin{center}
		\includegraphics[width=10cm]{img/besm}
	\end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% فرم داخلی جلد به فارسی (دارای استاد مشاور)
\newcommand{\titlePage}{\begin{titlepage}
		%\topmargin=-30pt
		\vspace{-10mm}
		% دستورات تک‌آرمه
		\centerline{{\includegraphics[width=5cm]{Logo.png}}}
		\centerline{\textcolor[rgb]{0,0,0.5}{\nast \large  \@university}}
		\centerline{\textcolor[rgb]{0,0,0.5}{\nast \bfseries\@faculty - \@department}}
		% بعد از آرم‌ها
		\centering
		\vskip 0.5cm
		\if@bscthesis 
		{\large\bfseries{پروژهٔ کارشناسی \@subject}
			\ifx\@field\undefined%
			\relax
			\else
			گرایش \@field
			\fi
		}
		\else
		{\large\bfseries \@projectLabel{} \writtenfor
			\@degree{} 
		}
		
		{\large\bfseries{در رشتهٔ \@subject}}
		\vskip .2cm
		\centerline{\large \bfseries%
			\ifx\@field\undefined%
			\relax
			\else
			گرایش \@field
			\fi
		}
		\fi	
		{\huge عنوان}\par
		{\huge\titlefont\bf \@title}\par
		\vskip 1cm
		\par
		{\Large نگارش}\par
		{\Large\bfseries{\@name\ \ \@surname}}
		\par
		\vskip 15mm
		\large
		{
			\ifx\@firstsupervisor\undefined%
			\ifx\@secondsupervisor\undefined%
			\else
			\fi
			\else
			\ifx\@secondsupervisor\undefined%
			استاد راهنما
			{\Large\bfseries\par
				\@firstsupervisor}
			\else
			\large
			اساتید راهنما
			\par
			{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
			\fi\fi}
		\par\large
		{\ifx\@firstadvisor\undefined%
			\ifx\@secondadvisor\undefined%
			\else\fi
			\else
			\ifx\@secondadvisor\undefined%
			استاد مشاور
			{\Large\bfseries\par
				\@firstadvisor}
			\else
			
			\large
			استادان مشاور
			\par
			{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
			\fi\fi}
		
		\par
		\vskip 6mm
		%\vfill
		{\large \@thesisdate}
		%\vfill
	\end{titlepage}%
} % end of titlePage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\titlepage{\if@RTL\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}
	\parindent 0pt \parskip 10pt plus 1fil minus 1fil
	\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup}

\def\signature{\vspace{1cm}
	\begin{flushleft}
		{%\nastaliq \scriptsize 
			\@name\ \@surname \\
			\@thesisdate}
\end{flushleft}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
	%	\cleardoublepage
	\clearpage
	%\setcounter{page}{1}
	\thispagestyle{empty}
	\centerline{{\includegraphics[width=3cm]{IDMJ.pdf}}}		
	\vspace{.5cm}
	\begin{center}
		{\Large\bfseries
			تأییدیهٔ هیئت داوران جلسه‌ی دفاع از 
			\@projectLabel{}ٔ
			\@degree{}
		}
	\end{center}
	%\vspace{.5cm}
	هیأت داوران پس از مطالعه‌ی \@projectLabel{}ٔ  و شرکت در جلسه‌ی دفاع از پایان‌نامه‌ٔ تهیه‌شده با عنوان 
	«\@title{}»
	توسط  آقای~/~خانم \@name{} \@surname{} صحت و کفایت تحقیق انجام شده را برای اخذ درجه‌ی
	\@degree{}
	در رشته‌ی 
	\@subject{}
	در تاریخ ............ مورد تأیید قرار دادند.\\
	\ifx\@secondadvisor\undefined%
	\else\vspace{-1cm}
	\fi
	\newcounter{davaranCounter}
	\begin{enumerate}
		\ifx\@firstsupervisor\undefined
		\else \item
		استاد راهنما: 
		\@firstsupervisor
		%					 \@firstsupervisorrank 
		%دانشگاه خواجه نصیرالدین طوسی 
		\dotfill امضا\\
		\fi
		\ifx\@secondsupervisor\undefined%
		\else \item
		استاد راهنما: 
		\@secondsupervisor 
		%					 \@secondsupervisorrank 
		%دانشگاه خواجه نصیرالدین طوسی 
		\dotfill امضا\\ 
		\fi
		\ifx\@firstadvisor\undefined%
		\else \item
		استاد مشاور: 
		\@firstadvisor 
		%				   \@firstadvisorrank 
		%دانشگاه خواجه نصیرالدین طوسی
		\dotfill امضا\\
		\fi
		\ifx\@secondadvisor\undefined%
		\else \item
		استاد مشاور: 
		\@secondadvisor 
		%				  \@secondadvisorrank 
		%دانشگاه خواجه نصیرالدین طوسی 
		\dotfill امضا\\
		\fi
		
		\ifx\@internaljudge\undefined%
		\else \item
		استاد داور داخلی: 
		\@internaljudge 
		% 				\@internaljudgerank 
		%دانشگاه خواجه نصیرالدین طوسی 
		\dotfill امضا\\
		\fi
		\ifx\@externaljudge\undefined%
		\else \item
		استاد مدعو: 
		\@externaljudge 
		%				\@externaljudgerank 
		%				\@externaljudgeuniversity
		\dotfill امضا \\
		\fi
		\ifx\@graduatedeputy\undefined%
		\else \item
		نمایندهٔ تحصیلات تکمیلی دانشکده: 
		\@graduatedeputy 
		%				 \@graduatedeputyrank 
		%دانشگاه خواجه نصیرالدین طوسی 
		\dotfill امضا \\
		\fi
	\end{enumerate}
} % End of davaranPage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
	%	\cleardoublepage
	\clearpage
	\thispagestyle{empty}
	\begin{center}
		\includegraphics[width=3cm]{IDMJ.pdf}\\
		\textbf{{ \Large  }\\[0.2cm]}
		\textbf{{ \Large اظهارنامه دانشجو}\\[1cm]}
	\end{center}
	\doublespacing 
	
	اینجانب 
	\@name \ \@surname \
	به شماره دانشجویی 
	\@studentID
	دانشجوی 
	\@degree{}
	رشته‌ی 
	\@subject{}
	دانشکده 
	\@college{}
	دانشگاه‌خواجه نصیرالدین طوسی گواهی می‌نمایم که تحقیقات ارائه شده در این پایان‌نامه با عنوان:
	\begin{center}
		\textbf{{\@title{}}}
	\end{center}
	توسط اینجانب انجام و بدون هرگونه دخل و تصرف است و موارد نسخه برداری شده از آثار دیگران
	را با ذکر کامل مشخصات منبع ذکر کرده ام. در صورت اثبات خلاف مندرجات فوق، به تشخیص دانشگاه مطابق با ضوابط و مقررات حاکم (قانون حمایت از حقوق مؤلفان و مصنفان و قانون ترجمه و تکثیر کتب و نشریات و آثار صوتی، ضوابط و مقررات آموزشی، پژوهشی و انضباطی و غیره) با اینجانب رفتار خواهد شد. در ضمن، مسئولیت هرگونه پاسخگویی به اشخاص اعم از حقیقی و حقوقی و مراجع ذی صلاح (اعم از اداری و قضایی) به عهده ی اینجانب خواهد بود و دانشگاه هیچ گونه مسئولیتی در این خصوص نخواهد داشت.	
	\vspace{1cm}
	\begin{center}
		\begin{tabular}{lr}
			نام و نام خانوادگی دانشجو:   & 	\@name{} \@surname\\
			تاریخ و امضای دانشجو: & \\
		\end{tabular}
	\end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% مجوز بهره‌برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
	%	\cleardoublepage
	\clearpage
	\thispagestyle{empty}
	\begin{center}
		\includegraphics[width=3cm]{IDMJ.pdf}\\
		\textbf{{ \Large  }\\[0.2cm]}
		\textbf{{ \Large حق طبع، نشر و مالکیت نتایج}\\[1cm]}
	\end{center}
	حق چاپ و تکثیر این پایان نامه متعلق به نویسندگان آن می باشد. بهره برداری از این پایان نامه
	در چهارچوب مقررات کتابخانه و با توجه به محدودیتی که توسط استاد راهنما به شرح زیر تعیین
	می گردد، بلامانع است:\\
	\begin{itemize}
		\item[$\square$]
		بهره‌برداری از این 
		\@projectLabel ‌
		برای همگان و با ذکر منبع، بلامانع است.
		\item[$\square$]
		بهره‌برداری از این
		\@projectLabel‌
		با اخذ مجوز از استاد راهنما و با ذکر منبع، بلامانع است.
		\item[$\square$]
		بهره‌برداری از این 
		\@projectLabel‌
		تا تاریخ \rule{2cm}{0.02cm} ممنوع است. 
	\end{itemize}
	\ifx\@firstsupervisor\undefined%
	\else 
	استاد راهنما: 
	\@firstsupervisor
	%					 \@firstsupervisorrank 
	%دانشگاه خواجه نصیرالدین طوسی 
	\dotfill امضا\\
	\vspace{5mm}
	\fi
	\ifx\@secondsupervisor\undefined%
	\else 
	استاد راهنما: 
	\@secondsupervisor 
	%					 \@secondsupervisorrank 
	%دانشگاه خواجه نصیرالدین طوسی 
	\dotfill امضا\\
	\vspace{5mm}
	\fi
	\ifx\@firstadvisor\undefined%
	\else 
	استاد مشاور: 
	\@firstadvisor 
	%				   \@firstadvisorrank 
	%دانشگاه خواجه نصیرالدین طوسی
	\dotfill امضا\\
	\vspace{5mm}
	\fi
	\ifx\@secondadvisor\undefined%
	\else 
	استاد مشاور: 
	\@secondadvisor 
	%				  \@secondadvisorrank 
	%دانشگاه خواجه نصیرالدین طوسی 
	\dotfill امضا\\
	\vspace{5mm}
	\fi
}

% \def\frame{\newpage
% \thispagestyle{empty}
% \begin{framed}\thispagestyle{empty}}
% \def\endframe{\thispagestyle{empty}\end{framed}
% \thispagestyle{empty}
% \newpage
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% بخش تقدیم
%% پایان‌نامه خود را تقدیم کنید! %%
\newcommand{\taghdimPage}
{
	\ifx\@dedication\undefined%
	\relax
	\else
	\cleardoublepage
	\thispagestyle{empty}
	%\vspace{-40mm}
	\@dedication
	\fi
}

%% قدردانی (فارسی)
\newcommand{\ghadrdaniPage}
{
	\ifx\@acknowledgement\undefined%
	\relax
	\else   
	\cleardoublepage
	\thispagestyle{empty}
	\centerline{\Large \bfseries قدردانی}
	\vspace{1cm}
	\par\noindent
	\@acknowledgement
	% با استفاده از دستور زیر، امضای شما، به طور خودکار، درج می‌شود.
	\signature 
	\fi
}

%% چکیده فارسی
\newcommand\abstractPage{
	\cleardoublepage
	\thispagestyle{empty}
	\section*{چکیده}
	% \addcontentsline{toc}{section}{چکیده}
	\@fa-abstract
	\par\noindent
	\paragraph{واژگان کلیدی}
	\@keywords
}

\def\latinabstract{
	%% Latin abstract Page
	\cleardoublepage\newpage
	\thispagestyle{empty}
	~
	\newpage
	\thispagestyle{empty}
	\section*{Abstract}
	% \addcontentsline{toc}{section}{چکیده}
	\@en-abstract
	\par
	\noindent
	\paragraph{Keywords}
	\@latinkeywords
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Latin Abstract and Title pages

\font\supervisorfont=cmbxti10

\newcommand{\latinTitlePage}{%
	%% Latin title page
	\clearpage
	\thispagestyle{empty}
	~
	\begin{titlepage}
		\vspace{-10mm}
		%% Single logo commands
		\centerline{{\includegraphics[width=5cm]{logo-en}}}
		\centerline{\textcolor[rgb]{0,0,0.5}{\bf \@latinuniversity}}
		\centerline{\textcolor[rgb]{0,0,0.5}{\bfseries \small \@latinfaculty - \@latindepartment}}
		%% After logos
		\centering
		\vskip 1.5cm
		{
			\large
			\if@bscthesis 
			Bachelor of Science Thesis
			in  \@latinsubject 
			\else
			%			Doctoral Thesis Proposal
			Thesis Submitted in Partial Fulfillment of the
			\\Requirements for the Degree of 
			\if@mscthesis
			Master of Science (M.Sc.)
			\else
			Doctor of Philosophy (PHD.)
			\fi
			\\in  \@latinsubject{}
			\ifx\@latinfield\undefined%
			\relax
			\else
			- \@latinfield{}
			\fi 
			\baselineskip=.750cm
			\addtolength{\baselineskip}{-5mm}
			\fi
		}\par
		\vskip 15mm
		{%\latintitlefont 
			\Huge\latintitlefont\bfseries
			\@latintitle}
		%\baselineskip=.750cm \par
		\vskip 15mm
		{\bfseries\latinby}\par
		{\large %\supervisorfont
			\rm \Large\bfseries \@latinname \; \@latinsurname}\par
		
		\vskip 15mm
		
		\large
		{\ifx\@firstlatinsupervisor\undefined%
			\ifx\@secondlatinsupervisor\undefined%
			\else\fi
			\else
			\ifx\@secondlatinsupervisor\undefined%
			Supervisor:
			{\Large\bfseries\par
				\@firstlatinsupervisor}
			\else
			\large
			Supervisors:
			\par
			{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
			\fi\fi}
		\par
		\large
		{\ifx\@firstlatinadvisor\undefined%
			\ifx\@secondlatinadvisor\undefined%
			\else\fi
			\else
			\ifx\@secondlatinadvisor\undefined%
			Advisor:
			{\Large\bfseries\par
				\@firstlatinadvisor}
			\else
			
			\large
			Advisors:
			\par
			{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
			\fi\fi}
		\vskip 5mm
		
		\par
		\vskip 1cm
		
		{\@latinthesisdate}
		\par
		\vskip 1cm
		
		\par
		
		\vfill
		%
	\end{titlepage}
	\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجهٔ }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
	\hbox{}
	\thispagestyle{empty}
	\newpage
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\AtBeginDocument{
	\makeatletter
	% تعیین مشخصات فایل PDF
	\hypersetup{
		pdftitle={\@latintitle},
		pdfauthor={\@latinname \@latinsurname},
		pdfsubject={Thesis in \@latinsubject},
		pdfkeywords={\@latinkeywords},
		pdfdirection={R2L}
	}
	\makeatother
}

%%
%% Author: Mohammad Sina Allahkaram
%%
%% Base author: Sina Momken
%% 
%% Copyright © 2023-     by Mohammad Sina Allahkaram (kntu-thesis)
%% Copyright © 2019-     by Hadi Safari (tehran-thesis)
%% Copyright © 2017-     by Sina Momken (tehran-thesis)
%% Copyright © 2012-2012 by Mahmood Amintoosi (IUST-Thesis)
%% Copyright © 2011-2012 by Vahid Damanafshan (Tabriz_thesis)
%% Copyright © 2008-2011 by Vafa Khalighi (xepersian-thesis.cls)
%% 
%% Distributable under GNU GENERAL PUBLIC LICENSE Version 3.
%% 
%% This work is "maintained" by Sina Momken & Hadi Safari.
%% 
%% Special thanks to Mahmood Amintoosi, Vahid Damanafshan and Vafa Khalighi for their invaluable work.
%%
%% End of file `kntu-thesis.cls'.