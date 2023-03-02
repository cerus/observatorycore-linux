#/bin/sh

# -- Clone the repo
if [[ $1 == "" ]]
then
  # Build official repo
  echo "Building Xjph/ObservatoryCore"
  git clone https://github.com/Xjph/ObservatoryCore
else
  # Build fork
  echo "Building $1/ObservatoryCore"
  git clone https://github.com/$1/ObservatoryCore
fi
cd ObservatoryCore
if [[ $2 != "" ]]
then
  # Build custom branch
  git fetch
  git checkout $2
fi

# -- Build the repo
# Build everything
./buildAllComponents -c Release
# ..and publish
dotnet publish ObservatoryCore/ObservatoryCore.csproj /property:GenerateFullPaths=true /consoleloggerparameters:NoSummary -c Release

# -- Cleanup
# Zip everything
cd ObservatoryCore/bin/Release/net6.0/publish/
cp -r ../plugins .
tar -czvf ../../../../../../linux64.tar.gz .
cd ../../../../../../
rm -rf ObservatoryCore

echo ""
echo "Done! Compiled and zipped to linux64.tar.gz"
