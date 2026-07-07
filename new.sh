#!/bin/bash

DEFAULT_POST_DATE=`date "+%Y-%m-%d"`
POST_CREATED=`date "+%Y-%m-%d %H:%M:%S"`
echo -n "Date of blog post [$DEFAULT_POST_DATE]: "
read POST_DATE

if [ "$POST_DATE" == "" ]; then
    POST_DATE=$DEFAULT_POST_DATE
fi

echo -n "Title of blog post: "
read POST_TITLE

POST_DEFAULT_SLUG=`echo "$POST_TITLE" | iconv -t ascii//TRANSLIT | sed -E s/[^a-zA-Z0-9]+/-/g | sed -E s/^-+\|-+$//g | tr A-Z a-z`

echo -n "Slug for post [$POST_DEFAULT_SLUG]: "
read POST_SLUG

if [ -z "$POST_SLUG" ]; then
    POST_SLUG="$POST_DEFAULT_SLUG"
fi

POST_FILENAME="source/_posts/$POST_DATE-$POST_SLUG.md"

if [ -f "$POST_FILENAME" ]; then
    echo "This post already exists"
    exit 1
fi

echo -n "Post Author shortname (e.g., kevin or beau or chris): "
read POST_AUTHOR_SHORTNAME

if [ ! -f "source/authors/$POST_AUTHOR_SHORTNAME.html" ]; then
    echo "The provided author does not have a Bio page!"
    echo
    echo "  TIP: Create ./source/authors/$POST_AUTHOR_SHORTNAME.html to fix this message."
    echo
    echo "Continuing new post creation flow."
fi

echo -n "Author's full name or chosen handle: "
read POST_AUTHOR_NAME

echo -n "Author's mastodon handle (e.g., @kboyd@phpc.social): "
read POST_AUTHOR_MASTODON

echo "---" > $POST_FILENAME
echo "title: \"$POST_TITLE\"" >> $POST_FILENAME
echo "author:" >> $POST_FILENAME
echo "  shortname: \"$POST_AUTHOR_SHORTNAME\"" >> $POST_FILENAME
echo "  name: \"$POST_AUTHOR_NAME\"" >> $POST_FILENAME
echo "  mastodon: \"$POST_AUTHOR_MASTODON\"" >> $POST_FILENAME
echo "---" >> $POST_FILENAME

echo "Created $POST_FILENAME"
