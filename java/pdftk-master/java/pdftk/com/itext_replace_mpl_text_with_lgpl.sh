#!/bin/sh
#
# The original iText (itext-paulo-155) library files included these sections:

#* The contents of this file are subject to the Mozilla Public License Version 1.1
#* (the "License"); you may not use this file except in compliance with the License.
#* You may obtain a copy of the License at http://www.mozilla.org/MPL/
#*
#* Software distributed under the License is distributed on an "AS IS" basis,
#* WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
#* for the specific language governing rights and limitations under the License.

#* Alternatively, the contents of this file may be used under the terms of the
#* LGPL license (the "GNU LIBRARY GENERAL PUBLIC LICENSE"), in which case the
#* provisions of LGPL are applicable instead of those above.  If you wish to
#* allow use of your version of this file only under the terms of the LGPL
#* License and not to allow others to use your version of this file under
#* the MPL, indicate your decision by deleting the provisions above and
#* replace them with the notice and other provisions required by the LGPL.
#* If you do not delete the provisions above, a recipient may use your version
#* of this file under either the MPL or the GNU LIBRARY GENERAL PUBLIC LICENSE.
#*
#* This library is free software; you can redistribute it and/or modify it
#* under the terms of the MPL as stated above or under the terms of the GNU
#* Library General Public License as published by the Free Software Foundation;
#* either version 2 of the License, or any later version.
#*
#* This library is distributed in the hope that it will be useful, but WITHOUT
#* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#* FOR A PARTICULAR PURPOSE. See the GNU Library general Public License for more
#* details.

# The pdftk code is distributed with a GPL, and it links with the iText library.
# What is more, I have read many places that the GPL is incompatible with the
# MPL.  So I have replaced the above MPL/LGPL boilerplate with LGPL boilerplate
# in all iText java files as described in this original MPL/LGPL boilerplate.
#
# This is the script I used for that purpose.  You can find the LGPL boilerplate
# I used in itext_lgpl_header.txt.  This was copied from:
# http://www.gnu.org/licenses/lgpl-2.0.html#SEC4
#
# If you have any questions, please contact me, Sid Steward, at:
# sid.steward (at) pdflabs (dot) com
#

for file in `find . -name "*.java"`
do
echo $file
sed -n -e '/ * The contents of this file are subject to the Mozilla Public License Version 1.1/,/limitations under the License.$/!p' $file | \
sed -n -e '/ * Alternatively, the contents of this file may be used under the terms of the/,/ * details.$/!p' | \
sed '/ * where applicable./r itext_lgpl_header.txt' > $file.foo
mv $file.foo $file
done
