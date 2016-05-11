;;; sk-cpp.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; For C++

;;; Code:

;; Multiple compilation commands
(defun sk/compile-cpp-omp-math ()
  "Compiles the file with OpenMP and math libraries"
  (interactive)
  (compile
   (concat "g++ -Wall -fopenmp -lgsl -lcblas -llapack -O2 -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-omp-simple ()
  "Compiles the file with OpenMP"
  (interactive)
  (compile
   (concat "g++ -Wall -fopenmp -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-mpi-math ()
  "Compiles the file with MPI and math libraries"
  (interactive)
  (compile
   (concat "/usr/local/openmpi/bin/mpic++ -Wall -lgsl -lcblas -llapack -larmadillo -O2 -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-mpi-simple ()
  "Compiles the file with MPI"
  (interactive)
  (compile
   (concat "/usr/local/openmpi/bin/c++ -Wall -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-hybrid-math ()
  "Compiles the file with OpenMP, MPI and math libraries"
  (interactive)
  (compile
   (concat "/usr/local/openmpi/bin/c++ -Wall -fopenmp -lgsl -lcblas -llapack -larmadillo -O2 -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-hybrid-simple ()
  "Compiles the file with OpenMP and MPI"
  (interactive)
  (compile
   (concat "/usr/local/openmpi/bin/c++ -Wall -fopenmp -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-math ()
  "Compiles the file with math libraries"
  (interactive)
  (compile
   (concat "g++ -Wall -lgsl -lcblas -llapack -larmadillo -O2 -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))
(defun sk/compile-cpp-simple ()
  "Compiles the file"
  (interactive)
  (compile
   (concat "g++ -Wall -g -std=c++11 " (buffer-file-name) " -o " (file-name-sans-extension buffer-file-name) ".out")
   ))

;; Rtags
(use-package rtags
  :ensure t
  :defer 2
  :init
  (setq rtags-autostart-diagnostics t)
  (setq rtags-completions-enabled t))

;; Cmake ide - for cmake projects
(use-package cmake-ide
  :ensure t
  :defer 2
  :config
  (cmake-ide-setup))

;; aux requirements
(require 'sk-cpp-hydra)

(provide 'sk-cpp)
;;; sk-cpp.el ends here
