#/bin/sh

# -- Clone the repo
git clone https://github.com/Xjph/ObservatoryCore
cd ObservatoryCore

# -- Build the repo
# Build the framework
./buildAllComponents -c Release
# Copy the required dll
cp ObservatoryFramework/bin/Release/net6.0/linux-x64/ObservatoryFramework.dll ObservatoryFramework/bin/Release/net6.0
# Now build everything
./buildAllComponents -c Release
# ..and finally publish
dotnet publish ObservatoryCore/ObservatoryCore.csproj /property:GenerateFullPaths=true /consoleloggerparameters:NoSummary -c Release

# -- Cleanup
# Zip everything
cd ObservatoryCore/bin/Release/net6.0/publish/
cp -r ../plugins .
tar -czvf ../../../../../../linux64.tar.gz .
cd ../../../../../../
rm -rf ObservatoryCore

echo "Done! Compiled and zipped to linux64.tar.gz"
