#    Mundus
#    Copyright (C) 2012  sebikul <sebikul@gmail.com
#
#   This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

DESTDIR ?= 

PREFIX ?= /usr
bindir = $(PREFIX)/bin#Default: /usr/bin
libdir = /opt
datadir = $(PREFIX)/share#Default: /usr/share

build: clean
	gbc3 -a -t -p -g .
	gba3 .
#mv mundus*.gambas mundus-bin

install: build
#install -d -m 755 $(DESTDIR)$(libdir)/mundus/
	install -d -m 755 $(DESTDIR)$(bindir)
	install -d -m 755 $(DESTDIR)$(datadir)/pixmaps
	install -d -m 755 $(DESTDIR)/usr/share/applications
	install -d -m 755 $(DESTDIR)$(datadir)/man/man1
	install -m 755 -T mundus*.gambas $(DESTDIR)$(bindir)/mundus
#install -m 755 -T debian/mundus-tool $(DESTDIR)$(bindir)/mundus
	install -m 644 stock/mundus.svg $(DESTDIR)$(datadir)/pixmaps
	install -m 644 debian/mundus.desktop $(DESTDIR)/usr/share/applications
	install -m 644 debian/mundus.1 $(DESTDIR)$(datadir)/man/man1

clean:
	rm -f mundus*.gambas
	rm -f .gambas/*
	rm -f .lang/*.pot
	cd docs && make clean

uninstall:
	rm -f $(DESTDIR)$(bindir)/mundus
#rm -f $(DESTDIR)/opt/mundus/mundus-bin
	rm -f $(DESTDIR)$(datadir)/pixmaps/mundus.svg
	rm -f $(DESTDIR)$(datadir)/applications/mundus.desktop
	rm -f $(DESTDIR)$(datadir)/man/man1/mundus.1
