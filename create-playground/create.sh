#!/bin/bash

project_name=""
project_name_placeholder="{{Project}}"
project_name_placeholder_2="__Project__"
root_path=$PWD

get_project_name() {
    read -p "enter project name: " project_name
    if [ -z "$project_name" ]; then
        get_project_name
    fi
}

# 获取工程名
get_project_name

cp -rf Playground_Template $project_name

cd $project_name

render_directory() {
    for file in $1/*
    do
        local newFile="${file/$project_name_placeholder/$project_name}"
        newFile="${newFile/$project_name_placeholder_2/$project_name}"
        echo $newFile

        if [ "$file" != "$newFile" ]; then
            mv $file $newFile
            file=$newFile
        fi

        if [ -d "$file" ]; then
            render_directory $file
        elif test -f $file; then
            sed -i "" "s/$project_name_placeholder/$project_name/g" $file
            sed -i "" "s/$project_name_placeholder_2/$project_name/g" $file
            if (( $? > 0 )); then
                s="s/$project_name_placeholder/$project_name/g"
                echo "rename $file fail: $s"
            fi
        fi

    done
}

# 替换名字
render_directory .

# 安装依赖
# pod install

cd $root_path

mv $project_name ../
