// LaTeX Workshop 插件需要先安装
// 实际应为.json格式的code配置文件，但github渲染错误，修改为.js格式以便阅读
//
//
// latex-workshop.latex.tools LaTeX工具，用于配置环境内的所有工具参数；
// VSCode缺少的主要是xelatex工具，在latex-workshop插件配置代码中增加相关配置；
// {
//     "name": "xelatex",       // 在tools内，定义命令名称叫xelatex（可被调用）
//     "command": "xelatex",    // 实际执行的命令为xelatex
//     "args": [                // 编译时的参数
//         "-synctex=1",
//         "-interaction=nonstopmode",
//         "-file-line-error",
//         "%DOC%"
//     ],
//     "env": {}
// },
//
//
// latex-workshop.latex.recipes LaTeX食谱，用于调用工具配置编译链；
// 默认使用第一个配置，"tools":[]中需要包含完整的工具链，如：
// {
//     "name": "pdflatex ➞ bibtex ➞ pdflatex × 2",
//     "tools": [
//         "pdflatex",
//         "bibtex",
//         "pdflatex",
//         "pdflatex"
//     ]
// },
// 但上述是pdflatex编译工具链（包含bibtex），可以借鉴并配置xelatex的工具链；
// {
//     "name": "xelatex ➞ bibtex ➞ xelatex × 2",  // 工具链名称（仅作为显示）
//     "tools": [               // 实际的工具链（依次调用/编译）
//         "xelatex",           // 初次编辑，生成PDF
//         "bibtex",            // 填补bib引用信息
//         "xelatex",           // 重新生成带有引用信息的PDF（引用编号仍为？）
//         "xelatex"            // 再次编译PDF
//     ]
// },


// latex-workshop.latex.tools 配置中加入：
{
    "name": "xelatex",       // 在tools内，定义命令名称叫xelatex（可被调用）
    "command": "xelatex",    // 实际执行的命令为xelatex
    "args": [                // 编译时的参数
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOC%"
    ],
    "env": {}
},
// latex-workshop.latex.recipes 配置中加入：
{
    "name": "xelatex ➞ bibtex ➞ xelatex × 2",  // 工具链名称（仅作为显示）
    "tools": [               // 实际的工具链（依次调用/编译）
        "xelatex",           // 初次编辑，生成PDF
        "bibtex",            // 填补bib引用信息
        "xelatex",           // 重新生成带有引用信息的PDF（引用编号仍为？）
        "xelatex"            // 再次编译PDF
    ]
},
