set -e

POST="$1"  # name of .qmd file

quarto render "${POST}.qmd"
cp "${POST}.md" ../quartz/mathema/
[ -d "${POST}_files" ] && cp -r "${POST}_files" ../quartz/mathema/

echo "Published ${POST} to mathema/"
