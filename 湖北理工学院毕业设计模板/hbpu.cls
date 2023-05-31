%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 本文是本人在完成课程论文时需要搜索对应latex模板
%% 惊觉学校并未有学长分享
%% 参照搜索到的模板 https://github.com/BHOSC/BUAAthesis
%% 于是，本着不想让学弟学妹们经历同样的窘境，以拾人牙慧的稚笨模仿
%% 有了此文
%% Yuan Aiping-（Apy6631@outlook.com）


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bbk}[2023/05/29 HBPU  thesis clas ]
\typeout{This is LaTeX template hbpu. (based on CTeX) 05-30-2023}
%LaTeX文档类的定义，名称为bbk，版本号为2023/05/29，是湖北理工学院毕业论文模板。它基于CTeX，并输出一条信息，说明这是一个名为bbk的LaTeX模板，日期为2023年5月29日。

%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印
\DeclareOption{printtype}{\ClassWarning{hbpu}{%
  You have not specified the PRINTTYPE option. The word printtype should be replaced by one of the following thesis type: oneside, twoside.
}}

%% 系统设置
\DeclareOption{win}{\gdef\@ostype{win}}     % windows
\DeclareOption{linux}{\gdef\@ostype{linux}} % linux
\DeclareOption{max}{\gdef\@ostype{mac}}     % mac
\DeclareOption{ostype}{\ClassWarning{buaa}{%
  You have not specified the OSTYPE option. The word ostype should be replaced by one of the following thesis type: win, linux, mac.
}}

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional}{\gdef\@thesis{professional}}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{ProDoctor}{\gdef\@thesis{prodoctor}}
\DeclareOption{Public}{\gdef\@permission{public}}
\DeclareOption{Privacy}{\gdef\@permission{privacy}}
\DeclareOption{Secret}{\gdef\@permission{secret3}}
\DeclareOption{Secret3}{\gdef\@permission{secret3}}
\DeclareOption{Secret5}{\gdef\@permission{secret5}}
\DeclareOption{Secret10}{\gdef\@permission{secret10}}
\DeclareOption{Secret*}{\gdef\@permission{secret*}}
\DeclareOption{Classified}{\gdef\@permission{classified5}}
\DeclareOption{Classified3}{\gdef\@permission{classified3}}
\DeclareOption{Classified5}{\gdef\@permission{classified5}}
\DeclareOption{Classified10}{\gdef\@permission{classified10}}
\DeclareOption{Classified*}{\gdef\@permission{classified*}}
\DeclareOption{TopSecret}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret3}{\gdef\@permission{topsecret3}}
\DeclareOption{TopSecret5}{\gdef\@permission{topsecret5}}
\DeclareOption{TopSecret10}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret*}{\gdef\@permission{topsecret*}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}
\DeclareOption{Win}{\gdef\@ostype{win}}
\DeclareOption{Linux}{\gdef\@ostype{linux}}
\DeclareOption{Max}{\gdef\@ostype{mac}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{oneside,win,a4paper,sub4section}
\ProcessOptions\relax



%% 引用ctexbook: 小4,22磅固定行距
\LoadClass[UTF8,zihao=-4,linespread=1.7]{ctexbook}      %1.5+0.2行间距
\setcounter{secnumdepth}{5}                             %设置标题深度为5(一共五级标题)

%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage{setspace}     % 设置行间距
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subfigure}    % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        % 列举
\RequirePackage{enumitem}     % 列举
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{caption}      % 标题设置
\RequirePackage[lang=english,listtype+=Eng]{bicaption} % 双标题
\RequirePackage{listings}     % 代码环境
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{newfloat}     % 浮动环境
\RequirePackage{stfloats}     % 浮动
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage{babel}        % 多语言
\RequirePackage[hypertexnames=false]{hyperref}      % 超链接
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释

% 统一不同系统的字体设置
\RequirePackage{times}        % Times New Roman字体
% 修复宋体加粗问题
\setCJKfamilyfont{zhsong}[AutoFakeBold = {2.17}]{SimSun}
\renewcommand*{\songti}{\CJKfamily{zhsong}}
\setCJKfamilyfont{zhhei}[AutoFakeBold = {3.17}]{SimHei}
\renewcommand*{\heiti}{\CJKfamily{zhhei}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

% 数学定理：
% 以下定义数学定理环境默认风格为 hbpu
\newtheoremstyle{hbpu}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\bfseries}% name of head font.
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').
\theoremstyle{hbpu}

% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\algorithmcfname}{算法}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}

% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries %% "Proof" is bold
    #1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
    basicstyle=\small\ttfamily,
    xleftmargin=2pc,
    xrightmargin=2pc,
    frame=single,
    columns=flexible,
    numbers=left,
}

%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧页起 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Subtitle}[2]{\gdef\@subtitlecn{#1} \gdef\@subtitleen{#2}}
\newcommand{\Department}[1]{\gdef\@department{#1}}
\def\@branch{工学} % 学科大类
\newcommand{\Branch}[1]{\gdef\@branch{#1}}
\newcommand{\Major}[1]{\gdef\@major{#1}}
\newcommand{\Feild}[1]{\gdef\@feild{#1}}
\newcommand{\Tutor}[3]{\gdef\@tutorcn{#1} \gdef\@tutoren{#2} \gdef\@tutordegree{#3}}
\newcommand{\Cotutor}[3]{%
  \gdef\@cotutorcn{#1}
  \gdef\@cotutoren{#2}
  \gdef\@cotutordegree{#3}}
\newcommand{\Author}[2]{\gdef\@authorcn{#1} \gdef\@authoren{#2}}
\newcommand{\StudentID}[1]{\gdef\@studentid{#1}}

\newcommand{\CLC}[1]{\gdef\@clc{#1}}
\newcommand{\DateEnroll}[3]{%
  \gdef\@dateenrollm{#1}
  \gdef\@dateenrolld{#2}
  \gdef\@dateenrolly{#3}}
\newcommand{\DateGraduate}[3]{%
  \gdef\@dategraduatem{#1}
  \gdef\@dategraduated{#2}
  \gdef\@dategraduatey{#3}}
\newcommand{\DateSubmit}[3]{%
  \gdef\@datesubmitm{#1}
  \gdef\@datesubmitd{#2}
  \gdef\@datesubmity{#3}}
\newcommand{\DateDefence}[3]{%
  \gdef\@datedefencem{#1}
  \gdef\@datedefenced{#2}
  \gdef\@datedefencey{#3}}

\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/bi/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% A4纸页边距均25mm
% 打印留边平移5mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=25mm,bottom=25mm,inner=30mm,outer=20mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhead[r]{\includegraphics[width=3.33cm,height=0.7cm]{pic/logo-HBPU.png} 毕业设计(论文)}
\renewcommand{\headrulewidth}{0pt}

% 设置目录格式

\titlecontents{chapter}[0pt]{\settowidth{\hangindent}{\thecontentslabel}\heiti\zihao{-4}}
{\thecontentslabel}{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{section}[2em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{-4}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{subsection}[3em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{5}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}


\titlecontents{figure}[0pt]{\settowidth{\hangindent}{图~\thecontentslabel\ \ }\songti\zihao{-4}}
{图~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{table}[0pt]{\settowidth{\hangindent}{表~\thecontentslabel\ \ }\songti\zihao{-4}}
{表~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{figureEng}[0pt]{\settowidth{\hangindent}{Fig.~\thecontentslabel\ \ }\songti\zihao{-4}}
{Fig.~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{tableEng}[0pt]{\settowidth{\hangindent}{Tab.~\thecontentslabel\ \ }\songti\zihao{-4}}
{Tab.~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

% 设置行间距
\setlength{\parskip}{0pt}

% 列表间接设置
\setlist{
  topsep=0pt, % 列表环境与上文距离
  itemsep=0pt, % 条目间距离
  parsep=\parskip, % 条目内段落距离
  partopsep=0pt % 列表环境与下文距离
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 工具函数
\newcommand{\checkinput}{%检测输入元素
  \ifthenelse{\isundefined{\@titlecn}}{\errmessage{%
    Please set title by 'Title'.}}{}
  \ifthenelse{\isundefined{\@department}}{\errmessage{%
    Please set department by 'Department'.}}{}
  \ifthenelse{\isundefined{\@major}}{\errmessage{%
    Please set major by 'Major'.}}{}
  \ifthenelse{\isundefined{\@feild}}{\errmessage{%
    Please set feild by 'Feild'.}}{}
  \ifthenelse{\isundefined{\@tutorcn}}{\errmessage{%
    Please set tutor name by 'Tutor'.}}{}
  \ifthenelse{\isundefined{\@authorcn}}{\errmessage{%
    Please set author name by 'Author'.}}{}
  \ifthenelse{\isundefined{\@studentid}}{\errmessage{%
    Please set student ID date by 'StudentID'.}}{}
  \ifthenelse{\isundefined{\@dateenrolly}}{\errmessage{%
    Please set enroll date by 'DateEnroll'.}}{}
  \ifthenelse{\isundefined{\@dategraduatey}}{\errmessage{%
    Please set graduate date by 'DateGraduate'.}}{}
  \ifthenelse{\isundefined{\@datesubmity}}{\errmessage{%
    Please set submite date by 'DateSubmit'.}}{}
  \ifthenelse{\isundefined{\@datedefencey}}{\errmessage{%
    Please set defence date by 'DateDefence'.}}{}
  \ifthenelse{\equal{\@refcolor}{\empty}}{}{%
    \ifthenelse{\equal{\@refcolor}{on} \OR \equal{\@refcolor}{off}}{}{
    \errmessage{Please use 'on' or 'off' for refcolor.}}
  }
  \ifthenelse{\equal{\@beginright}{\empty}}{}{%
    \ifthenelse{\equal{\@beginright}{on} \OR \equal{\@beginright}{off}}{}{
    \errmessage{Please use 'on' or 'off' for beginright.}}
  }
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on} \OR \equal{\@listfigtab}{bi} \OR \equal{\@listfigtab}{off}}{}{
    \errmessage{Please use 'on' or 'bi' or 'off' for listfigtab.}}
  }
}
\newcommand{\clearautopage}{%右侧起新页
  \clearpage
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面
    \ifodd\c@page
    \else
      \hbox{}
      \vspace*{\fill}
      \begin{center}
        {\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
      \end{center}
      \vspace{\fill}
      \thispagestyle{empty}
      \newpage
      \if@twocolumn \hbox{} \newpage \fi
    \fi
  }{}
}
\newcommand{\sethyper}{%设置链接引用颜色
  \hypersetup{%
    pdftitle={\@titlecn},
    pdfkeywords={\@keywordcn},
    pdfauthor={\@authorcn}
  }
  \ifthenelse{\equal{\@refcolor}{on}}{%
    \hypersetup{
      allcolors=blue,
    }
  }{%
    \hypersetup{
      allcolors=black,
    }
  }
}


%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
    punct=quanjiao, % 全角
    autoindent=2,  % 缩进
    linestretch=2, % 行伸缩
}

% 标题样式修改
\ctexset{%
    chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
        format=\zihao{3} \heiti \centering \thispagestyle{fancy},
        fixskip=true,
        beforeskip=19.27pt,
        afterskip=22.48pt,
        break=\clearautopage,
    },
    section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
        format=\zihao{4} \heiti \raggedright,
        beforeskip=8.43pt,
        afterskip=11.24pt,
    },
    subsection={%条标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
        format=\zihao{-4} \heiti \raggedright,
        beforeskip=3.61pt,
        afterskip=3.61pt,
    },
    subsubsection={% 附加4级标题 : 小四号宋体加粗居左
        format=\zihao{-4} \songti \raggedright \bfseries,
        nameformat=\mdseries,
        beforeskip = 0bp, afterskip = 0bp,
    },
    paragraph={% 附加5级标题 : 小四号宋体居左
        format=\zihao{-4} \songti \raggedright,
        beforeskip = 0bp, afterskip = 0bp,
    },
    subparagraph={% 附加6级标题 : 小四号宋体居左
        format=\zihao{-4} \songti \raggedright,
        beforeskip = 0bp, afterskip = 0bp,
    }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{   %表示在文档开始时执行以下命令
  \checkinput       %命令用于检查输入文件是否存在
  \sethyper         %命令用于设置超链接
}
\AfterEndPreamble{  %表示在导言区结束后执行以下命令
  \makecovercn      %生成中文封面
  %\makecoveren      %生成英文封面
  \makecoverinner   %生成内部封面
  \makestatementhbpu%生成声明页

  \fancyfoot[C]{\zihao{5} \uppercase\expandafter{\romannumeral \thepage}}
  \setcounter{page}{1}
  \abstructkeyword
  \makecontextlist
  \denotation
                    %\fancyfoot 命令用于设置页脚
                    %\zihao{5} 表示字号为五号
                    %\uppercase 命令用于将小写字母转换为大写字母，
                    %\expandafter 命令用于展开 \romannumeral 命令的结果，从而得到罗马数字
                    %\setcounter{page}{1} 命令用于将页码计数器设置为 1
                    %\abstructkeyword 命令用于生成摘要关键词
                    %\makecontextlist 命令用于生成目录
                    %\denotation 命令用于生成术语表

  \renewcommand{\headrulewidth}{0.4pt}
  \fancyfoot{}
  \fancyfoot[R]{\zihao{5} \thepage}
  \fancyhead[LE]{\zihao{-5} \leftmark}
  \fancyhead[RE]{\zihao{-5} \includegraphics[width=3.33cm,height=0.7cm]{pic/logo-HBPU.png} 毕业设计(论文)}

  \setcounter{page}{1}
}
                    %\fancyhead 命令用于设置页眉
                    %\leftmark 命令用于获取当前章节的名称。
                    %\ifthenelse 命令用于判断论文类型，如果是硕士或专业学位，
                    %\setcounter{page}{1} 命令用于将页码计数器设置为 1



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
{\pdfbookmark[0]{中文封面}{makecovercn}

{\zihao{5} \heiti \noindent
\makebox[5\ccwd][s]{中图分类号}：{\bfseries \@clc}%
\\
\makebox[5\ccwd][s]{论文编号}：{\bfseries 12420200420085223G\@studentid}%
}

\vspace{60pt}

  \begin{figure}[h]
    \centering
    \includegraphics{pic/logo-HBPU.png}
  \end{figure}
  \vspace{-10pt}
  \centering
  \textbf{\zihao{-0} \heiti 毕\quad 业\quad 设\quad 计\quad (论文)}

  \centering
  \vspace{20pt}
  \begin{spacing}{1.2}
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \zihao{-2} \heiti \bfseries 题目：\underline{ \@titlecn}
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{-2} \@subtitlecn
   }
  \end{spacing}

  \vspace{100pt}

  \begin{spacing}{1.8}
    \ziju{0.2} \zihao{-3} \heiti
    \begin{tabular}{cll}
      教\quad 学\quad 院  & \multicolumn{2}{l}{\@department} \\
      学科专业  & \multicolumn{2}{l}{\@major} \\
      作者姓名  & \@authorcn \\
      指导教师  & \@tutorcn   & \@tutordegree \\
      \ifthenelse{\isundefined{\@cotutorcn}}{}{%
                & \@cotutorcn & \@cotutordegree
      }
      
    \end{tabular}
  \end{spacing}

  \thispagestyle{empty}

  \clearautopage
}}
\newcommand{\makecoveren}{% 英文封面
{\pdfbookmark[0]{英文封面}{makecoveren}
  \centering

  \ \vspace{100pt}

  \begin{spacing}{1.2}

    {\begin{spacing}{1.2}
      \zihao{-2} \bfseries
      \ifthenelse{\isundefined{\@subtitleen}}{\vspace{20pt}}{}
      \@titleen
      \ifthenelse{\isundefined{\@subtitleen}}{\vspace{20pt}}{%
        \\ \vspace{10pt}
        \zihao{3} \@subtitleen}
    \end{spacing}}

    \vspace{100pt}

  \end{spacing}

  \vspace{50pt}

  \begin{spacing}{2.2}
    {\zihao{-3}
      Hu Li University, HuBei, China
    }
  \end{spacing}

  \thispagestyle{empty}

  \clearautopage
}}
\newcommand{\makecoverinner}{% 封面内页
{\pdfbookmark[0]{题目页}{makecoverinner}

  {\zihao{5} \heiti \noindent
    \makebox[5\ccwd][s]{中图分类号}：{\bfseries \@clc}
    \makebox[5\ccwd][s]{论文编号}：{\bfseries 12420200420085223G\@studentid}
  }

  \centering
  \vspace{150pt}

    {\begin{spacing}{1.2}
    \zihao{-1} \heiti
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \@titlecn
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{2} \@subtitlecn}
    \end{spacing}
    }

   
  \vspace{50pt}
  \begin{spacing}{2.3}
    \zihao{-4} \songti
    \begin{tabular}{lrrrlrrr}
      作者姓名     &          \multicolumn{3}{l}{\@authorcn}                   & 申请学位级别        &   \multicolumn{3}{l}{
        \@branch

      }       \\
      指导教师姓名 &          \multicolumn{3}{l}{\@tutorcn}                    & 职\hspace{2\ccwd}称 &                        \multicolumn{3}{l}{\@tutordegree}                      \\
      学科专业     &          \multicolumn{3}{l}{\@major}                      & 研究方向            &                        \multicolumn{3}{l}{\@feild}                            \\
      学习时间自   & \@dateenrolly\ 年 & \@dateenrollm\ 月 & \@dateenrolld\ 日 & \hspace{2\ccwd}起至 & \@dategraduatey\ 年 & \@dategraduatem\ 月 & \@dategraduated\ 日止             \\
      论文提交日期 & \@datesubmity\ 年 & \@datesubmitm\ 月 & \@datesubmitd\ 日 & 论文答辩日期        & \@datedefencey \ 年 & \@datedefencem \ 月 & \@datedefenced \ 日\hspace{\ccwd} \\
      学位授予单位 &          \multicolumn{3}{l}{湖北理工学院}             & 学位授予日期        &                  年 &                  月 &                  日\hspace{\ccwd} \\
    \end{tabular}
  \end{spacing}

  \thispagestyle{empty}

    \clearautopage
}}
\newcommand{\makestatementhbpu}{% 湖理声明
{\pdfbookmark[0]{湖理声明}{makestatementhbpu}

  \begin{spacing}{1.7}%1.5+0.2
    {\zihao{3} \heiti \centerline{原创性声明}}
    {\zihao{-4} \songti ~\par
    本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。
    除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品或成果。
    对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。
    本声明的法律结果由本人承担。 \\

      {\zihao{5}\ \ 论文作者签名：\underline{\hspace{7\ccwd}} \hspace{4\ccwd}
      日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}
    }

    \vspace{50pt}

    {\zihao{3} \heiti \centerline{学位论文版权使用授权}}
    {\zihao{-4} \songti ~\par
    本学位论文作者完全了解学校有关保留、使用学位论文的规定，
    即：学校有权保留并向国家有关部门或机构送交论文的复印件和电子版，
    允许论文被查阅和借阅。本人授权湖北理工学院可以将本学位论文的全部或部分内容编入有关数据库进行检索，
    可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。
    \\

        {\zihao{5}\ \ 学位论文作者签名：\underline{\hspace{7\ccwd}} \hspace{4\ccwd}
        日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}

        {\zihao{5}\ \ 指导教师签名：\underline{\hspace{9\ccwd}}    \hspace{4\ccwd}
        日期：\hspace{3\ccwd}年\hspace{2\ccwd}月\hspace{2\ccwd}日}
    }

  \end{spacing}
  \thispagestyle{empty}
  \clearautopage
}}


\newcommand{\abstructkeyword}{% 摘要
{\pdfbookmark[0]{中英摘要}{abstructkeyword}

  \begin{spacing}{1.7}%1.5+0.2

    {\zihao{3} \heiti  \centerline{摘~~~~要}}
    {\zihao{-4} \songti ~\par
      \@abstrctcn \par ~\par
      {\bfseries \heiti 关键词：} \heiti \@keywordcn
    }

    \clearpage
    %\ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}

    {\zihao{3} \bfseries  \centerline{Abstract}}
    {\zihao{-4} ~\par
      \@abstrcten \par ~\par
      {\bfseries Key words:} \@keyworden
    }

  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\makecontextlist}{% 目录
{\pdfbookmark[-3]{目录}{makecontextlist}
  \tableofcontents
  \renewcommand\addvspace[1]{}
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on}}{%
      \renewcommand{\addvspace}[1]{}
      \clearpage
      \pdfbookmark[0]{图目录}{listoffigures}
      \listoffigures
      \clearpage
      \pdfbookmark[0]{表目录}{listoftables}
      \listoftables
    }{}
    \ifthenelse{\equal{\@listfigtab}{bi}}{%
      \renewcommand{\addvspace}[1]{}
      \clearpage
      \pdfbookmark[0]{图目录}{listoffigures}
      \listoffigures
      \clearpage
      \pdfbookmark[0]{List of Figures}{listoffigureEnges}
      \listoffigureEnges
      \clearpage
      \pdfbookmark[0]{表目录}{listoftables}
      \listoftables
      \clearpage
      \pdfbookmark[0]{List of Tables}{listoftableEnges}
      \listoftableEnges
    }{}
  }
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\denotation}{% 缩写定义
{\ifthenelse{\isundefined{\@abbreviations}}{}{%
    \pdfbookmark[0]{主要符号表}{denotation}
    \chapter*{主要符号表}
    %\centering
    %\begin{tabular}{cl}
      \@abbreviations
    %\end{tabular}%
    \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
  }
}}



% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}}
{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}

\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\p@subfigure}{\thefigure}

% Define the new floating environment type "figureEng"
\DeclareFloatingEnvironment[fileext=lof2]{figureEng}[Figure][\sc List of Figures]
% Define the new floating environment type "tableEng"
\DeclareFloatingEnvironment[fileext=lot2]{tableEng}[Table][\sc List of Tables]

\DeclareCaptionFormat{tabfigformat}{\bf\songti\zihao{5}{#1~~#3}}

\captionsetup[figure]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

\captionsetup[figure][bi-first]{name=图}      %设置图的中文前缀
\captionsetup[table][bi-first]{name=表}       %设置表的中文前缀
\captionsetup[figure][bi-second]{name=Fig.}   %设置图的英文前缀
\captionsetup[table][bi-second]{name=Tab.}   %设置表的英文前缀

\captionsetup[figure][bi]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table][bi]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}


  \newcommand{\Bib}[2]{%参考文献
  \bibliographystyle{#1}
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{参考文献}
  \bibliography{#2}
}



  \newcommand{\acknowledgments}{%致谢
  \ctexset{chapter/numbering=false}
  \chapter{致~~~~谢}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}




% 设置参考文献格式
\usepackage{notoccite}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}






%% --END--
\endinput
