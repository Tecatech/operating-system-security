Name:       c-b19-515-13
Version:    1.0
Release:    1%{?dist}
Summary:    Dmitriy Rodionov's program
Group:      Testing
License:    GPL
URL:        https://github.com/tecatech/c-rpm-package
Source:     %{name}-%{version}.tar.gz
BuildRequires: gcc

%global debug_package %{nil}

%description
A test package

%prep
%setup -q

%build
gcc -O2 -o c-b19-515-13 c-b19-515-13.c

%install
mkdir -p %{buildroot}%{_bindir}
cp c-b19-515-13 %{buildroot}%{_bindir}
sudo rpm -i ~/rpmbuild/RPMS/noarch/b19-515-13-1.0-1.el8.noarch.rpm --force

%files
%{_bindir}/c-b19-515-13

%changelog
* Thu Mar 31 2022 Rodionov
- Added %{_bindir}/c-b19-515-13