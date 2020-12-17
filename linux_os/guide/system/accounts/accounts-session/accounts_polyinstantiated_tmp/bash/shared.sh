# platform = multi_platform_fedora,Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8
if ! [ -d /tmp-inst ] ; then
    mkdir --mode 000 /tmp-inst
fi
chmod 000 /tmp-inst
chcon --reference=/tmp /tmp-inst

if ! grep -Eq '^\s*/tmp\s+/tmp-inst/\s+level\s+root,adm$' /etc/security/namespace.conf ; then
    if grep -Eq '^\s*/tmp\s+' /etc/security/namespace.conf ; then
        sed -i '/^\s*\/tmp/d' /etc/security/namespace.conf
    fi
    echo "/tmp     /tmp-inst/            level      root,adm" >> /etc/security/namespace.conf
fi