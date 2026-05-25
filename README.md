# Statistical Models

Notes of the Statistical Models course (Statistics for Data Science Mod. 2) @ University of Trento.

## How to Use This Repository

You can view the compiled PDF of the notes directly on GitHub by navigating to the `main.pdf` file in the repository. Click on it to open and read the notes online.

## How to Clone and Compile Locally with LaTeX

### Cloning the Repository

To clone this repository to your local machine, use the following command:

```bash
git clone <repository-url>
cd "Statistical Models"
```

Replace `<repository-url>` with the actual URL of the repository.

### Compiling with LaTeX

#### Prerequisites

Ensure you have a LaTeX distribution installed:
- **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
- **macOS**: [MacTeX](https://www.tug.org/mactex/)
- **Linux**: TeX Live (install via package manager)

#### Compilation Steps

1. Navigate to the project directory:
```bash
cd "Statistical Models"
```

2. Compile the LaTeX document using one of the following commands:

**Using pdfLaTeX:**
```bash
pdflatex main.tex
```

**Using XeLaTeX (for advanced font support):**
```bash
xelatex main.tex
```

**Using LuaLaTeX:**
```bash
lualatex main.tex
```

3. For table of contents and cross-references to work properly, compile twice:
```bash
pdflatex main.tex
pdflatex main.tex
```

### Output

The compiled PDF file will be generated as `main.pdf` in the project directory.
