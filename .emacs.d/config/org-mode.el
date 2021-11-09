(use-package org
  :ensure t
  :mode ("\\.org" . org-mode)
  :bind
  (([f12] . org-agenda)
   ("C-c l" . org-store-link)
   ("C-c c" . org-capture)
   ("<f9> i" . org-agenda-clock-in)
   ("<f9> o" . org-agenda-clock-out))
  :hook (org-mode-hook . visual-line-mode)
  :config
  ;; Configuring task types
  (setq org-todo-keywords
        '((sequence "TODO(t!)" "IN PROGRESS(p!)" "BLOCKED(b@/!)" "IN REVIEW(r!)" "|" "DONE(d!)")
          (sequence  "|" "CANCELLED(c@/!)")))
  (setq org-log-into-drawer "LOGBOOK")
  ;; Configuring agenda files
  (setq org-agenda-files (directory-files "~/.org-agenda/gtd" t "^.*\\.org$"))
  (setq org-refile-targets '(("~/.org-agenda/gtd/planned.org" :maxlevel . 3)
                               ("~/.org-agenda/gtd/someday.org" :maxlevel . 3)
                               ("~/.org-agenda/gtd/completed.org" :maxlevel . 3)
                               ("~/.org-agenda/journal/interviews.org" :maxlevel . 3)
                               ("~/.org-agenda/journal/recurrent_meetings.org" :maxlevel . 4)))
  ;; Configuring org-capture
  (setq org-default-notes-file "~/.org-agenda/capture.org")
  (setq org-capture-templates
        `(
          ("i" "Inbox task" entry (file "~/.org-agenda/gtd/inbox.org")
           "* TODO %? %^G
:LOGBOOK:
- State \"TODO\"        FROM \"NEW\"         %U
:END:"
           :empty-lines 1)
          ("j" "Journal" entry (file+datetree "~/.org-agenda/journal/journal.org")
           "* %U %?"
           :empty-lines 1))))

