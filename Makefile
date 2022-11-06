# .PHONY: examples

# CC = xelatex
# EXAMPLES_DIR = examples
# RESUME_DIR = examples/resume
# CV_DIR = examples/cv
# RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
# CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

# examples: $(foreach x, coverletter cv resume, $x.pdf)

# resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# clean:
# 	rm -rf $(EXAMPLES_DIR)/*.pdf

.PHONY: resume

CC = xelatex
EXAMPLES_DIR = resume
RESUME_DIR = resume/input
# CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
# CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

resume: $(foreach x, resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -f $(EXAMPLES_DIR)/resume.aux $(EXAMPLES_DIR)/resume.fls $(EXAMPLES_DIR)/resume.log $(EXAMPLES_DIR)/resume.fdb_latexmk