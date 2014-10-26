#!/usr/bin/python
# -*- coding: latin-1 -*-
import cgitb;cgitb.enable()
import cgi,sys
from mako.template import Template
from mako.lookup import TemplateLookup
from mako import exceptions
import MySQLdb
import datetime, locale
import calendar
import time
import re
import os
import socket, sys
print "Content-Type: text/html\n\n"
print


con = MySQLdb.connect(host="localhost", db="gestcodir",user="root",passwd="ulysse")
tplookup = TemplateLookup(directories=['./templates'],output_encoding='utf-8', encoding_errors='replace')
mytemplate = tplookup.get_template("gestcodir-dev.mako")

def getcursor():
	return con.cursor ()
def index():
	agent = os.environ['HTTP_USER_AGENT']
	cpt=agent.count('Firefox')
	cpt=cpt + agent.count('Chrome')
	mytemplate = tplookup.get_template('gestcodir-dev.mako')	
	try:
		print mytemplate.render_unicode(logon=True).encode('utf-8', 'replace')
	except:
		print exceptions.html_error_template().render()

		
#----------------------------
#-----GESTION DES URL's------
#----------------------------
		
form = cgi.FieldStorage()
if form.has_key('page'):
	page=form['page'].value
	if page=="historique":
		if form.has_key('pers'):
			pers=form['pers'].value
			pers=(pers.strip(' ')).replace('"',' ')
		else:
			index()	
else:
	index()
		