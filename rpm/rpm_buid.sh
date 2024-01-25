rm -f /root/rpmbuild/SOURCES/daq-2.0.4.tar.gz
( cd .. && make clean )
( cd /root/projects && tar --exclude='.git' -zcvf /root/rpmbuild/SOURCES/daq-2.0.4.tar.gz daq-2.0.4/ )
rpmbuild -ba --target x86_64 daq.spec
