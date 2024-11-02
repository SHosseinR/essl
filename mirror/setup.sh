mkdir -p /tmp/mirrorTool/mirror /tmp/mirrorTool/mirrorTemp

chmod -R 755 /tmp/mirrorTool/mirror
chmod -R 755 /tmp/mirrorTool/mirrorTemp

chmod +x MirrorTool


./MirrorTool --mirrorType regular \
--intermediateUpdateDirectory /tmp/mirrorTool/mirrorTemp \
--offlineLicenseFilename /tmp/mirrorTool/licence.lf \
--outputDirectory /tmp/mirrorTool/mirror    \
--filterFilePath /tmp/mirrorTool/filter.txt \
--updateServer http://update.eset.com/eset_upd/serverlinux

