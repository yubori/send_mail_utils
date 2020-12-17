#!/bin/sh
LIST=mail.to.txt

# for check
#cat $LIST | perl -ne 'chomp; @b=split "="; print "perl dicomo.payment.mail.pl $b[0] $b[1] $b[2]\n"'

cat $LIST | perl -ne 'chomp; @b=split "="; print "perl build.mail.pl $b[0] $b[1] $b[2] | sendmail -i -t; sleep 1\n"'
