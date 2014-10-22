<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: monokai-theme.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=monokai-theme.el" /><link type="text/css" rel="stylesheet" href="/emacs/wiki.css" /><meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: monokai-theme.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=monokai-theme.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for monokai-theme.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=monokai-theme.el" /><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><body class="http://www.emacswiki.org/emacs"><div class="header"><a class="logo" href="http://www.emacswiki.org/emacs/SiteMap"><img class="logo" src="/emacs_logo.png" alt="[Home]" /></a><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22monokai-theme.el%22">monokai-theme.el</a></h1></div><div class="wrapper"><div class="wrapper"><div class="content browse"><p class="download"><a href="http://www.emacswiki.org/emacs/download/monokai-theme.el">Download</a></p><pre class="code"><span class="linecomment">;;; color-theme-monokai.el --- TextMate theme Monokai port for Emacs color-theme.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Copyright (C) 2010 Operator &lt;rectifier04@gmail.com&gt;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This program is free software; you can redistribute it and/or</span>
<span class="linecomment">;; modify it under the terms of the GNU General Public License as</span>
<span class="linecomment">;; published by the Free Software Foundation; either version 3 of</span>
<span class="linecomment">;; the License, or (at your option) any later version.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This program is distributed in the hope that it will be</span>
<span class="linecomment">;; useful, but WITHOUT ANY WARRANTY; without even the implied</span>
<span class="linecomment">;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR</span>
<span class="linecomment">;; PURPOSE.  See the GNU General Public License for more details.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; You should have received a copy of the GNU General Public</span>
<span class="linecomment">;; License along with this program; if not, write to the Free</span>
<span class="linecomment">;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,</span>
<span class="linecomment">;; MA 02111-1307 USA</span>

(require 'color-theme)

(defun color-theme-monokai ()
  "<span class="quote">Monokai color theme for Emacs by Operator.
Based on the TextMate theme Monokai</span>"
  (interactive)
  (color-theme-install
   '(color-theme-monokai
     ((foreground-color . "<span class="quote">#F8F8F2</span>")
      (background-color . "<span class="quote">#272822</span>")
      (background-mode . dark)
      (cursor-color . "<span class="quote">#73d216</span>") <span class="linecomment">; medium chameleon</span>
      (mouse-color . "<span class="quote">#73d216</span>"))

     <span class="linecomment">;;; Standard font lock faces</span>
     (default ((t (nil))))
     (font-lock-comment-face ((t (:foreground "<span class="quote">#75715E</span>")))) <span class="linecomment">; dark aluminum</span>
     (font-lock-comment-delimiter-face ((t (:foreground "<span class="quote">#75715E</span>")))) <span class="linecomment">; dark aluminum</span>
     (font-lock-doc-face ((t (:foreground "<span class="quote">#75715E</span>")))) <span class="linecomment">; plum</span>
     (font-lock-doc-string-face ((t (:foreground "<span class="quote">#75715E</span>")))) <span class="linecomment">; plum</span>
     (font-lock-string-face ((t (:foreground "<span class="quote">#E6DB74</span>")))) <span class="linecomment">; plum</span>
     (font-lock-keyword-face ((t (:foreground "<span class="quote">#F92672</span>")))) <span class="linecomment">; light sky blue</span>
     (font-lock-builtin-face ((t (:foreground "<span class="quote">#855c1b</span>")))) <span class="linecomment">; med-dark chocolate</span>
     (font-lock-function-name-face ((t (:foreground "<span class="quote">#A6E22E</span>")))) <span class="linecomment">; dark butter</span>
     (font-lock-variable-name-face ((t (:foreground "<span class="quote">#FD971F</span>"))))
     (font-lock-preprocessor-face ((t (:foreground "<span class="quote">#66D9EF</span>")))) <span class="linecomment">; aluminum</span>
     (font-lock-constant-face ((t (:foreground "<span class="quote">#4e9a06</span>")))) <span class="linecomment">; dark chameleon</span>
     (font-lock-type-face ((t (:foreground "<span class="quote">#66D9EF</span>")))) <span class="linecomment">; light plum</span>
     (font-lock-warning-face ((t (:bold t :foreground "<span class="quote">#cc0000</span>")))) <span class="linecomment">; scarlet red</span>

     <span class="linecomment">;; Search</span>
     (isearch ((t (:foreground "<span class="quote">#080808</span>" :background "<span class="quote">#edd400</span>"))))
     (isearch-lazy-highlight-face ((t (:foreground "<span class="quote">#080808</span>" :background "<span class="quote">#75715E</span>"))))

     <span class="linecomment">;; Emacs Interface</span>
     (fringe ((t (:background "<span class="quote">#0f0f0f</span>"))))
     (border ((t (:background "<span class="quote">#0f0f0f</span>"))))
     (mode-line ((t (:background "<span class="quote">#1f1f1f</span>" :foreground "<span class="quote">#eeeeec</span>"))))
     (mode-line-buffer-id ((t (:background "<span class="quote">#1f1f1f</span>" :foreground "<span class="quote">#eeeeec</span>"))))
     (mode-line-inactive ((t (:background "<span class="quote">#1f1f1f</span>" :foreground "<span class="quote">#888a85</span>"))))
     (minibuffer-prompt ((t (:foreground "<span class="quote">#729fcf</span>")))) <span class="linecomment">; light sky blue</span>
     (region ((t (:background "<span class="quote">#49483E</span>"))))

     <span class="linecomment">;; Parenthesis matching</span>
     (show-paren-match-face ((t (:foreground "<span class="quote">#2e3436</span>" :background "<span class="quote">#3E3D32</span>"))))
     (show-paren-mismatch-face ((t (:foreground "<span class="quote">#2e3436</span>" :background "<span class="quote">#ef2929</span>"))))

     <span class="linecomment">;; Calendar</span>
     (holiday-face ((t (:foreground "<span class="quote">#cc0000</span>")))) <span class="linecomment">; dark scarlet red</span>

     <span class="linecomment">;; Info</span>
     (info-xref ((t (:foreground "<span class="quote">#729fcf</span>")))) <span class="linecomment">; light sky blue</span>
     (info-xref-visited ((t (:foreground "<span class="quote">#ad7fa8</span>")))) <span class="linecomment">; light plum</span>

     <span class="linecomment">;;; AUCTeX</span>
     (font-latex-sectioning-5-face ((t (:foreground "<span class="quote">#c4a000</span>" :bold t)))) <span class="linecomment">; dark butter</span>
     (font-latex-bold-face ((t (:foreground "<span class="quote">#4e9a06</span>" :bold t)))) <span class="linecomment">; dark chameleon</span>
     (font-latex-italic-face ((t (:foreground "<span class="quote">#4e9a06</span>" :italic t)))) <span class="linecomment">; dark chameleon</span>
     (font-latex-math-face ((t (:foreground "<span class="quote">#855c1b</span>")))) <span class="linecomment">; med-dark chocolate</span>
     (font-latex-string-face ((t (:foreground "<span class="quote">#77507b</span>")))) <span class="linecomment">; plum</span>
     (font-latex-warning-face ((t (:foreground "<span class="quote">#cc0000</span>")))) <span class="linecomment">; dark scarlet red</span>
     (font-latex-slide-title-face ((t (:foreground "<span class="quote">#c4a000</span>")))) <span class="linecomment">; dark butter</span>
     )))

(provide 'color-theme-monokai)</pre></div><div class="wrapper close"></div></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=monokai-theme.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="comment local" href="http://www.emacswiki.org/emacs/Comments_on_monokai-theme.el">Talk</a> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=monokai-theme.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=monokai-theme.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=monokai-theme.el">Administration</a></span><!-- test --><span class="time"><br /> Last edited 2012-05-05 14:26 UTC by <a class="author" title="from 95.56.185.249" href="http://www.emacswiki.org/emacs/sindikat">sindikat</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=monokai-theme.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
