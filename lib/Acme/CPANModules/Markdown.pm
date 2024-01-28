package Acme::CPANModules::Markdown;

use strict;
use warnings;

use Acme::CPANModulesUtil::Misc;

# AUTHORITY
# DATE
# DIST
# VERSION

my $text = <<'_';
**Basics**

Markdown is a text markup language that was created in 2004. It began in the
Perl world, as a Perl script that converts Markdown to XHTML/HTML. Since it was
underspecified *and* got really popular, different flavors have emerged. Some of
these include: GFM (Github-flavored Markdown), MultiMarkdown, Markdown Extra, R
Markdown, Python Markdown, and Pandoc Markdown. In 2012, a standardization
effort led to the CommonMark specification.

This list catalogs various modules that work with the Markdown formats.

**Generic parser**

<pm:Markdown::Parser>. Flavors: original Markdown.

<pm:Markdent>. Flavors: original, GitHub, Theory. Can output to various formats.


**Converter to HTML**

<pm:Text::Markdown::Hoedown>, binding to the hoedown library. Flavors: original
Markdown.

<pm:Markdent::Simple::Document>. Flavors: original, GitHub, Theory (uses
Markdent parser).

<pm:Text::Markdown>. Flavors: original.

<pm:Text::Markdown::Discount>. Flavors: original (uses binding to C-based
Discount library).

<pm:Markdown::Render>. Flavors: original (uses binding to C-based
Discount library). Can also call GitHub API to do the rendering.


**Converter to POD**

<pm:Markdown::POD>. Flavors: original, GitHub, Theory (uses Markdent parser).


**Converter to other formats**

ODF: <pm:Markdown::ODF>. Flavors: original (uses Markdown::Parser).

phpBB: <pm:Markdown::phpBB>. Flavors: original, GitHub, Theory (uses Markdent
parser).


**API Clients**

<pm:Pithub::Markdown>, client for GitHub v3 Markdown API.


**CLI**

<prog:markdent-html> (from <pm:Markdent>) to convert Markdown to HTML. Flavors:
original, GitHub, Theory (uses Markdent parser).


**GUI**

<pm:Tk::Markdown>, a Tk widget to render Markdown in a Tk::Text widget.


**Others**

<pm:Markdown::TOC>, create HTML a table of contents from Markdown.

<pm:Kwiki::Markdown>, just a thin wrapper/bridge for Text::Markdown.

<pm:Markdown::Table> parses tables in Markdown and return the data structure, or
print a table data into Markdown format.

_

our $LIST = {
    summary => 'List of modules related to Markdown',
    description => $text,
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:

=head1 SEE ALSO

L<https://daringfireball.net/projects/markdown/>

L<https://en.wikipedia.org/wiki/Markdown>
