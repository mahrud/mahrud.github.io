---
layout: default
title: Remote Servers
---

- Math servers
  - `math-vinh270d-1.math.umn.edu` and `math-vinh270d-2.math.umn.edu` have [Magma](http://magma.maths.usyd.edu.au/magma/)
  - `remote.math.umn.edu` (recently only accessible via VPN)
- [CSE Servers](https://cse.umn.edu/cseit/classrooms-labs/servers)
- [Access tutorial](https://www-users.cse.umn.edu/~kauffman/tutorials/unix-environment.html#org6073df2)
  - `loginXX.cselabs.umn.edu` for `XX` between `01` and `07`.
  - `atlas.cselabs.umn.ed` (sometimes this one is down).
  - `apollo.cselabs.umn.edu` (I cannot access this one).
- [Storage info](https://cse.umn.edu/cseit/self-help-guides/disk-quota-free-your-space#unix)
  - You have 5GiB in `/home/<username>` and 10GiB in `/xtra/<username>`.
  - Check available storage with `csequota -s`:
```
Quota report for: mahrud (cached at 20230328T1600CDT)
On primary homes directory server cse-fs-home-11.cse.umn.edu: 189.61 MiB/5 GiB (3%)
On primary xtra directory server cse-fs-xtra-11.cse.umn.edu: 164.3 MiB/10 GiB (1%)
```
