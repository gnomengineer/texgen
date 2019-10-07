#!/bin/bash

if test -d "testing" || mkdir "testing"
then
    pushd "testing"
    rm -rf doc/ test_beamer/ test_layout/ \
        test_nolib test_plain test_science \
        test_science_doc test_beamer_doc

    echo "beamer"
    texgen -b test_beamer
    echo ""
    echo "beamer as project"
    texgen -b -p test_beamer
    mv "doc/" "test_beamer_doc"
    echo ""
    echo "science"
    texgen -s -L test_science
    echo ""
    echo "science as project"
    texgen -s -L -p test_science
    mv "doc/" "test_science_doc"
    echo ""
    echo "plain"
    texgen --plain test_plain
    echo ""
    echo "project"
    texgen -p test_project
    echo ""
    echo "layout"
    texgen -L test_layout
    echo ""
    echo "nolib"
    texgen --no-library test_nolib
    popd
fi
