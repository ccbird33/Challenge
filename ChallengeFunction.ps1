{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww15920\viewh10820\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ###########################\
# Function - FindFirstDuplicate\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 #\
# Goal: Pass variable to Function to find first duplicated character - return if duplicate found or not found\
#\
# Author: Chad Cummings\
# Created: 11-03-20\
###########################\
\
Function FindFirstDuplicate\
\{\
	Param ($String)\
\
	# Convert variable to Array\
	$CompareArray1 = $String.ToCharArray()\
\
	# Copy Array and select unique elements\
	$CompareArrays = Compare-Object -ReferenceObject $CompareArray1 -DifferenceObject $CompareArray2\
\
	IF ($CompareArrays)\
	\{\
		# Get first element from array that contains first duplicate value\
		$FirstDuplicate = $CompareArrays[0].inputobject\
\
		# Return first duplicate character\
		Return \'93First Duplicate: $FirstDuplicate\'94\
	\}\
	ELSE\
	\{\
		Return \'93No Duplicate\'94\
	\}\
\}\
\
FindFirstDuplicate -String \'93aijnedomdinbanz\'92\
}