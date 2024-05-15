
_mounttest:     file format elf32-i386


Disassembly of section .text:

00000000 <umounta>:

  return 0;
}

static int
umounta(void) {
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 ec 14             	sub    $0x14,%esp
  int res = umount("a");
       6:	68 81 18 00 00       	push   $0x1881
       b:	e8 c0 12 00 00       	call   12d0 <umount>
  if (res != 0) {
      10:	83 c4 10             	add    $0x10,%esp
      13:	85 c0                	test   %eax,%eax
      15:	75 09                	jne    20 <umounta+0x20>
    printf(1, "umounta: umount returned %d\n", res);
    return -1;
  }

  return 0;
      17:	31 c0                	xor    %eax,%eax
}
      19:	c9                   	leave  
      1a:	c3                   	ret    
      1b:	90                   	nop
      1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

static int
umounta(void) {
  int res = umount("a");
  if (res != 0) {
    printf(1, "umounta: umount returned %d\n", res);
      20:	83 ec 04             	sub    $0x4,%esp
      23:	50                   	push   %eax
      24:	68 58 18 00 00       	push   $0x1858
      29:	6a 01                	push   $0x1
      2b:	e8 b0 13 00 00       	call   13e0 <printf>
    return -1;
      30:	83 c4 10             	add    $0x10,%esp
      33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }

  return 0;
}
      38:	c9                   	leave  
      39:	c3                   	ret    
      3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000040 <mounta>:

  return 0;
}

static int
mounta(void) {
      40:	55                   	push   %ebp
      41:	89 e5                	mov    %esp,%ebp
      43:	83 ec 14             	sub    $0x14,%esp
  mkdir("a");
      46:	68 81 18 00 00       	push   $0x1881
      4b:	e8 40 12 00 00       	call   1290 <mkdir>
  int res = mount("internal_fs_a", "a", 0);
      50:	83 c4 0c             	add    $0xc,%esp
      53:	6a 00                	push   $0x0
      55:	68 81 18 00 00       	push   $0x1881
      5a:	68 75 18 00 00       	push   $0x1875
      5f:	e8 64 12 00 00       	call   12c8 <mount>
  if (res != 0) {
      64:	83 c4 10             	add    $0x10,%esp
      67:	85 c0                	test   %eax,%eax
      69:	75 05                	jne    70 <mounta+0x30>
    printf(1, "mounta: mount returned %d\n", res);
    return -1;
  }

  return 0;
      6b:	31 c0                	xor    %eax,%eax
}
      6d:	c9                   	leave  
      6e:	c3                   	ret    
      6f:	90                   	nop
static int
mounta(void) {
  mkdir("a");
  int res = mount("internal_fs_a", "a", 0);
  if (res != 0) {
    printf(1, "mounta: mount returned %d\n", res);
      70:	83 ec 04             	sub    $0x4,%esp
      73:	50                   	push   %eax
      74:	68 83 18 00 00       	push   $0x1883
      79:	6a 01                	push   $0x1
      7b:	e8 60 13 00 00       	call   13e0 <printf>
    return -1;
      80:	83 c4 10             	add    $0x10,%esp
      83:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }

  return 0;
}
      88:	c9                   	leave  
      89:	c3                   	ret    
      8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000090 <verifyfilecontents>:

  return 0;
}

static int
verifyfilecontents(char *path, char *contents) {
      90:	55                   	push   %ebp
      91:	89 e5                	mov    %esp,%ebp
      93:	57                   	push   %edi
      94:	56                   	push   %esi
      95:	53                   	push   %ebx
      96:	89 d6                	mov    %edx,%esi
      98:	81 ec a4 00 00 00    	sub    $0xa4,%esp
      9e:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
  int fd;
  struct stat st;
  if((fd = open(path, 0)) < 0){
      a4:	6a 00                	push   $0x0
      a6:	50                   	push   %eax
      a7:	e8 bc 11 00 00       	call   1268 <open>
      ac:	83 c4 10             	add    $0x10,%esp
      af:	85 c0                	test   %eax,%eax
      b1:	0f 88 c9 00 00 00    	js     180 <verifyfilecontents+0xf0>
      b7:	89 c3                	mov    %eax,%ebx
    printf(1, "verifyfilecontents: cannot open %s\n", path);
    return -1;
  }

  if(fstat(fd, &st) < 0){
      b9:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
      bf:	83 ec 08             	sub    $0x8,%esp
      c2:	50                   	push   %eax
      c3:	53                   	push   %ebx
      c4:	e8 b7 11 00 00       	call   1280 <fstat>
      c9:	83 c4 10             	add    $0x10,%esp
      cc:	85 c0                	test   %eax,%eax
      ce:	0f 88 cc 00 00 00    	js     1a0 <verifyfilecontents+0x110>
    printf(1, "verifyfilecontents: cannot stat %s\n", path);
    close(fd);
    return -1;
  }

  int contentlen = strlen(contents);
      d4:	83 ec 0c             	sub    $0xc,%esp
      d7:	56                   	push   %esi
      d8:	e8 c3 0d 00 00       	call   ea0 <strlen>
      dd:	89 c2                	mov    %eax,%edx


  if (st.size != contentlen) {
      df:	8b 45 80             	mov    -0x80(%ebp),%eax
      e2:	83 c4 10             	add    $0x10,%esp
      e5:	39 c2                	cmp    %eax,%edx
      e7:	75 57                	jne    140 <verifyfilecontents+0xb0>
    return -1;
  }

  char buf[100];
  int res;
  if ((res = read(fd, buf, contentlen)) != contentlen) {
      e9:	8d 7d 84             	lea    -0x7c(%ebp),%edi
      ec:	83 ec 04             	sub    $0x4,%esp
      ef:	89 95 64 ff ff ff    	mov    %edx,-0x9c(%ebp)
      f5:	52                   	push   %edx
      f6:	57                   	push   %edi
      f7:	53                   	push   %ebx
      f8:	e8 43 11 00 00       	call   1240 <read>
      fd:	8b 95 64 ff ff ff    	mov    -0x9c(%ebp),%edx
     103:	83 c4 10             	add    $0x10,%esp
     106:	39 c2                	cmp    %eax,%edx
     108:	75 66                	jne    170 <verifyfilecontents+0xe0>
    printf(1, "verifyfilecontents: incorrect length read (%d) for file %s\n", res, path);
    close(fd);
    return -1;
  }
  buf[contentlen] = '\0';
  close(fd);
     10a:	83 ec 0c             	sub    $0xc,%esp
  if ((res = read(fd, buf, contentlen)) != contentlen) {
    printf(1, "verifyfilecontents: incorrect length read (%d) for file %s\n", res, path);
    close(fd);
    return -1;
  }
  buf[contentlen] = '\0';
     10d:	c6 44 15 84 00       	movb   $0x0,-0x7c(%ebp,%edx,1)
  close(fd);
     112:	53                   	push   %ebx
     113:	e8 38 11 00 00       	call   1250 <close>

  if ((res = strcmp(contents, buf)) != 0) {
     118:	58                   	pop    %eax
     119:	5a                   	pop    %edx
     11a:	57                   	push   %edi
     11b:	56                   	push   %esi
     11c:	e8 9f 0c 00 00       	call   dc0 <strcmp>
     121:	83 c4 10             	add    $0x10,%esp
     124:	85 c0                	test   %eax,%eax
     126:	0f 85 84 00 00 00    	jne    1b0 <verifyfilecontents+0x120>
    printf(1, "verifyfilecontents: incorrect content read (%s) for file %s\n", buf, path); 
    return -1;
  }

  return 0;
     12c:	31 c0                	xor    %eax,%eax
}
     12e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     131:	5b                   	pop    %ebx
     132:	5e                   	pop    %esi
     133:	5f                   	pop    %edi
     134:	5d                   	pop    %ebp
     135:	c3                   	ret    
     136:	8d 76 00             	lea    0x0(%esi),%esi
     139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

  int contentlen = strlen(contents);


  if (st.size != contentlen) {
    printf(1, "verifyfilecontents: incorrect length (%d) for file %s\n", st.size, path);
     140:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
     146:	50                   	push   %eax
     147:	68 d0 1a 00 00       	push   $0x1ad0
  }

  char buf[100];
  int res;
  if ((res = read(fd, buf, contentlen)) != contentlen) {
    printf(1, "verifyfilecontents: incorrect length read (%d) for file %s\n", res, path);
     14c:	6a 01                	push   $0x1
     14e:	e8 8d 12 00 00       	call   13e0 <printf>
    close(fd);
     153:	89 1c 24             	mov    %ebx,(%esp)
     156:	e8 f5 10 00 00       	call   1250 <close>
    return -1;
     15b:	83 c4 10             	add    $0x10,%esp
    printf(1, "verifyfilecontents: incorrect content read (%s) for file %s\n", buf, path); 
    return -1;
  }

  return 0;
}
     15e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  char buf[100];
  int res;
  if ((res = read(fd, buf, contentlen)) != contentlen) {
    printf(1, "verifyfilecontents: incorrect length read (%d) for file %s\n", res, path);
    close(fd);
    return -1;
     161:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    printf(1, "verifyfilecontents: incorrect content read (%s) for file %s\n", buf, path); 
    return -1;
  }

  return 0;
}
     166:	5b                   	pop    %ebx
     167:	5e                   	pop    %esi
     168:	5f                   	pop    %edi
     169:	5d                   	pop    %ebp
     16a:	c3                   	ret    
     16b:	90                   	nop
     16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }

  char buf[100];
  int res;
  if ((res = read(fd, buf, contentlen)) != contentlen) {
    printf(1, "verifyfilecontents: incorrect length read (%d) for file %s\n", res, path);
     170:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
     176:	50                   	push   %eax
     177:	68 08 1b 00 00       	push   $0x1b08
     17c:	eb ce                	jmp    14c <verifyfilecontents+0xbc>
     17e:	66 90                	xchg   %ax,%ax
static int
verifyfilecontents(char *path, char *contents) {
  int fd;
  struct stat st;
  if((fd = open(path, 0)) < 0){
    printf(1, "verifyfilecontents: cannot open %s\n", path);
     180:	83 ec 04             	sub    $0x4,%esp
     183:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
     189:	68 88 1a 00 00       	push   $0x1a88
     18e:	6a 01                	push   $0x1
     190:	e8 4b 12 00 00       	call   13e0 <printf>
    return -1;
     195:	83 c4 10             	add    $0x10,%esp
     198:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     19d:	eb 8f                	jmp    12e <verifyfilecontents+0x9e>
     19f:	90                   	nop
  }

  if(fstat(fd, &st) < 0){
    printf(1, "verifyfilecontents: cannot stat %s\n", path);
     1a0:	83 ec 04             	sub    $0x4,%esp
     1a3:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
     1a9:	68 ac 1a 00 00       	push   $0x1aac
     1ae:	eb 9c                	jmp    14c <verifyfilecontents+0xbc>
  }
  buf[contentlen] = '\0';
  close(fd);

  if ((res = strcmp(contents, buf)) != 0) {
    printf(1, "verifyfilecontents: incorrect content read (%s) for file %s\n", buf, path); 
     1b0:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
     1b6:	57                   	push   %edi
     1b7:	68 44 1b 00 00       	push   $0x1b44
     1bc:	6a 01                	push   $0x1
     1be:	e8 1d 12 00 00       	call   13e0 <printf>
    return -1;
     1c3:	83 c4 10             	add    $0x10,%esp
     1c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     1cb:	e9 5e ff ff ff       	jmp    12e <verifyfilecontents+0x9e>

000001d0 <cdinthenouttest>:
    return 0;
  }
}

static int
cdinthenouttest(void) {
     1d0:	55                   	push   %ebp
     1d1:	89 e5                	mov    %esp,%ebp
     1d3:	53                   	push   %ebx
  if (mounta() != 0) {
    return 1;
     1d4:	bb 01 00 00 00       	mov    $0x1,%ebx
    return 0;
  }
}

static int
cdinthenouttest(void) {
     1d9:	83 ec 24             	sub    $0x24,%esp
  if (mounta() != 0) {
     1dc:	e8 5f fe ff ff       	call   40 <mounta>
     1e1:	85 c0                	test   %eax,%eax
     1e3:	74 0b                	je     1f0 <cdinthenouttest+0x20>
  if (res != 0) {
    printf(1, "cdinthenouttest: unmount returned %d\n", res);
    return 1;
  }
  return 0;
}
     1e5:	89 d8                	mov    %ebx,%eax
     1e7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1ea:	c9                   	leave  
     1eb:	c3                   	ret    
     1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
cdinthenouttest(void) {
  if (mounta() != 0) {
    return 1;
  }

  chdir("a");
     1f0:	83 ec 0c             	sub    $0xc,%esp
     1f3:	89 c3                	mov    %eax,%ebx
     1f5:	68 81 18 00 00       	push   $0x1881
     1fa:	e8 99 10 00 00       	call   1298 <chdir>
  chdir("..");
     1ff:	c7 04 24 9e 18 00 00 	movl   $0x189e,(%esp)
     206:	e8 8d 10 00 00       	call   1298 <chdir>

  // tmp replacment of pwd - checking if the wd contains the "a" dir
  struct stat st;
  if(stat("a", &st) < 0) {
     20b:	58                   	pop    %eax
     20c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     20f:	5a                   	pop    %edx
     210:	50                   	push   %eax
     211:	68 81 18 00 00       	push   $0x1881
     216:	e8 75 0d 00 00       	call   f90 <stat>
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	78 36                	js     258 <cdinthenouttest+0x88>
    printf(1, "cdinthenouttest: not in root or couldnt find a dir\n");
    return 1;
  }

  int res = umount("a");
     222:	83 ec 0c             	sub    $0xc,%esp
     225:	68 81 18 00 00       	push   $0x1881
     22a:	e8 a1 10 00 00       	call   12d0 <umount>
  if (res != 0) {
     22f:	83 c4 10             	add    $0x10,%esp
     232:	85 c0                	test   %eax,%eax
     234:	74 af                	je     1e5 <cdinthenouttest+0x15>
    printf(1, "cdinthenouttest: unmount returned %d\n", res);
     236:	83 ec 04             	sub    $0x4,%esp
    return 1;
     239:	bb 01 00 00 00       	mov    $0x1,%ebx
    return 1;
  }

  int res = umount("a");
  if (res != 0) {
    printf(1, "cdinthenouttest: unmount returned %d\n", res);
     23e:	50                   	push   %eax
     23f:	68 b8 1b 00 00       	push   $0x1bb8
     244:	6a 01                	push   $0x1
     246:	e8 95 11 00 00       	call   13e0 <printf>
    return 1;
  }
  return 0;
}
     24b:	89 d8                	mov    %ebx,%eax
  }

  int res = umount("a");
  if (res != 0) {
    printf(1, "cdinthenouttest: unmount returned %d\n", res);
    return 1;
     24d:	83 c4 10             	add    $0x10,%esp
  }
  return 0;
}
     250:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     253:	c9                   	leave  
     254:	c3                   	ret    
     255:	8d 76 00             	lea    0x0(%esi),%esi
  chdir("..");

  // tmp replacment of pwd - checking if the wd contains the "a" dir
  struct stat st;
  if(stat("a", &st) < 0) {
    printf(1, "cdinthenouttest: not in root or couldnt find a dir\n");
     258:	83 ec 08             	sub    $0x8,%esp
     25b:	bb 01 00 00 00       	mov    $0x1,%ebx
     260:	68 84 1b 00 00       	push   $0x1b84
     265:	6a 01                	push   $0x1
     267:	e8 74 11 00 00       	call   13e0 <printf>
     26c:	83 c4 10             	add    $0x10,%esp
     26f:	e9 71 ff ff ff       	jmp    1e5 <cdinthenouttest+0x15>
     274:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     27a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000280 <doublemounttest>:

  return 0;
}

static int
doublemounttest(void) {
     280:	55                   	push   %ebp
     281:	89 e5                	mov    %esp,%ebp
     283:	53                   	push   %ebx
     284:	83 ec 04             	sub    $0x4,%esp
  if (mounta() != 0) {
     287:	e8 b4 fd ff ff       	call   40 <mounta>
     28c:	85 c0                	test   %eax,%eax
     28e:	74 10                	je     2a0 <doublemounttest+0x20>
  }

  res = umount("b");
  if (res != 0) {
    printf(1, "doublemounttest: umount returned %d\n", res);
    return 1;
     290:	bb 01 00 00 00       	mov    $0x1,%ebx
  }

  return 0;
}
     295:	89 d8                	mov    %ebx,%eax
     297:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     29a:	c9                   	leave  
     29b:	c3                   	ret    
     29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
doublemounttest(void) {
  if (mounta() != 0) {
    return 1;
  }

  mkdir("b");
     2a0:	83 ec 0c             	sub    $0xc,%esp
     2a3:	68 42 19 00 00       	push   $0x1942
     2a8:	e8 e3 0f 00 00       	call   1290 <mkdir>
  int res = mount("internal_fs_a", "b", 0);
     2ad:	83 c4 0c             	add    $0xc,%esp
     2b0:	6a 00                	push   $0x0
     2b2:	68 42 19 00 00       	push   $0x1942
     2b7:	68 75 18 00 00       	push   $0x1875
     2bc:	e8 07 10 00 00       	call   12c8 <mount>
  if (res != 0) {
     2c1:	83 c4 10             	add    $0x10,%esp
     2c4:	85 c0                	test   %eax,%eax
     2c6:	75 38                	jne    300 <doublemounttest+0x80>
    printf(1, "doublemounttest: mount returned %d\n", res);
    return 1;
  }

  if (umounta() != 0) {
     2c8:	e8 33 fd ff ff       	call   0 <umounta>
     2cd:	85 c0                	test   %eax,%eax
     2cf:	89 c3                	mov    %eax,%ebx
     2d1:	75 bd                	jne    290 <doublemounttest+0x10>
    return 1;
  }

  res = umount("b");
     2d3:	83 ec 0c             	sub    $0xc,%esp
     2d6:	68 42 19 00 00       	push   $0x1942
     2db:	e8 f0 0f 00 00       	call   12d0 <umount>
  if (res != 0) {
     2e0:	83 c4 10             	add    $0x10,%esp
     2e3:	85 c0                	test   %eax,%eax
     2e5:	74 ae                	je     295 <doublemounttest+0x15>
    printf(1, "doublemounttest: umount returned %d\n", res);
     2e7:	83 ec 04             	sub    $0x4,%esp
     2ea:	50                   	push   %eax
     2eb:	68 04 1c 00 00       	push   $0x1c04
     2f0:	6a 01                	push   $0x1
     2f2:	e8 e9 10 00 00       	call   13e0 <printf>
     2f7:	83 c4 10             	add    $0x10,%esp
     2fa:	eb 94                	jmp    290 <doublemounttest+0x10>
     2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }

  mkdir("b");
  int res = mount("internal_fs_a", "b", 0);
  if (res != 0) {
    printf(1, "doublemounttest: mount returned %d\n", res);
     300:	83 ec 04             	sub    $0x4,%esp
    return 1;
     303:	bb 01 00 00 00       	mov    $0x1,%ebx
  }

  mkdir("b");
  int res = mount("internal_fs_a", "b", 0);
  if (res != 0) {
    printf(1, "doublemounttest: mount returned %d\n", res);
     308:	50                   	push   %eax
     309:	68 e0 1b 00 00       	push   $0x1be0
     30e:	6a 01                	push   $0x1
     310:	e8 cb 10 00 00       	call   13e0 <printf>
    printf(1, "doublemounttest: umount returned %d\n", res);
    return 1;
  }

  return 0;
}
     315:	89 d8                	mov    %ebx,%eax

  mkdir("b");
  int res = mount("internal_fs_a", "b", 0);
  if (res != 0) {
    printf(1, "doublemounttest: mount returned %d\n", res);
    return 1;
     317:	83 c4 10             	add    $0x10,%esp
    printf(1, "doublemounttest: umount returned %d\n", res);
    return 1;
  }

  return 0;
}
     31a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     31d:	c9                   	leave  
     31e:	c3                   	ret    
     31f:	90                   	nop

00000320 <namespacetest>:

  return 0;
}

static int
namespacetest(void) {
     320:	55                   	push   %ebp
     321:	89 e5                	mov    %esp,%ebp
     323:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     326:	e8 15 fd ff ff       	call   40 <mounta>
     32b:	85 c0                	test   %eax,%eax
     32d:	ba 01 00 00 00       	mov    $0x1,%edx
     332:	74 0c                	je     340 <namespacetest+0x20>
      return 1;
    }

    return 0;
  }
}
     334:	89 d0                	mov    %edx,%eax
     336:	c9                   	leave  
     337:	c3                   	ret    
     338:	90                   	nop
     339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
namespacetest(void) {
  if (mounta() != 0) {
    return 1;
  }

  int pid = fork();
     340:	e8 db 0e 00 00       	call   1220 <fork>
  if (pid == 0) {
     345:	85 c0                	test   %eax,%eax
     347:	74 1d                	je     366 <namespacetest+0x46>

    umounta();

    exit(0);
  } else {
    wait(0);
     349:	83 ec 0c             	sub    $0xc,%esp
     34c:	6a 00                	push   $0x0
     34e:	e8 dd 0e 00 00       	call   1230 <wait>
    if (umounta() != 0) {
     353:	e8 a8 fc ff ff       	call   0 <umounta>
}

static int
namespacetest(void) {
  if (mounta() != 0) {
    return 1;
     358:	83 c4 10             	add    $0x10,%esp
     35b:	31 d2                	xor    %edx,%edx
     35d:	85 c0                	test   %eax,%eax
     35f:	0f 95 c2             	setne  %dl
      return 1;
    }

    return 0;
  }
}
     362:	c9                   	leave  
     363:	89 d0                	mov    %edx,%eax
     365:	c3                   	ret    
    return 1;
  }

  int pid = fork();
  if (pid == 0) {
    unshare(MOUNT_NS);
     366:	83 ec 0c             	sub    $0xc,%esp
     369:	6a 01                	push   $0x1
     36b:	e8 78 0f 00 00       	call   12e8 <unshare>

    umounta();
     370:	e8 8b fc ff ff       	call   0 <umounta>

    exit(0);
     375:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     37c:	e8 a7 0e 00 00       	call   1228 <exit>
     381:	eb 0d                	jmp    390 <umountwithopenfiletest>
     383:	90                   	nop
     384:	90                   	nop
     385:	90                   	nop
     386:	90                   	nop
     387:	90                   	nop
     388:	90                   	nop
     389:	90                   	nop
     38a:	90                   	nop
     38b:	90                   	nop
     38c:	90                   	nop
     38d:	90                   	nop
     38e:	90                   	nop
     38f:	90                   	nop

00000390 <umountwithopenfiletest>:

  return 0;
}

static int
umountwithopenfiletest(void) {
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	56                   	push   %esi
     394:	53                   	push   %ebx
  if (mounta() != 0) {
    return 1;
     395:	bb 01 00 00 00       	mov    $0x1,%ebx
  return 0;
}

static int
umountwithopenfiletest(void) {
  if (mounta() != 0) {
     39a:	e8 a1 fc ff ff       	call   40 <mounta>
     39f:	85 c0                	test   %eax,%eax
     3a1:	74 0d                	je     3b0 <umountwithopenfiletest+0x20>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     3a3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     3a6:	89 d8                	mov    %ebx,%eax
     3a8:	5b                   	pop    %ebx
     3a9:	5e                   	pop    %esi
     3aa:	5d                   	pop    %ebp
     3ab:	c3                   	ret    
     3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if (mounta() != 0) {
    return 1;
  }

  int fd;
  if((fd = open("a/umountwithop", O_WRONLY|O_CREATE)) < 0){
     3b0:	83 ec 08             	sub    $0x8,%esp
     3b3:	68 01 02 00 00       	push   $0x201
     3b8:	68 a1 18 00 00       	push   $0x18a1
     3bd:	e8 a6 0e 00 00       	call   1268 <open>
     3c2:	83 c4 10             	add    $0x10,%esp
     3c5:	85 c0                	test   %eax,%eax
     3c7:	89 c6                	mov    %eax,%esi
     3c9:	78 5d                	js     428 <umountwithopenfiletest+0x98>
    printf(1, "umountwithopenfiletest: cannot open file\n");
    return 1;
  }

  int res = umount("a");
     3cb:	83 ec 0c             	sub    $0xc,%esp
     3ce:	68 81 18 00 00       	push   $0x1881
     3d3:	e8 f8 0e 00 00       	call   12d0 <umount>
  if (res != -1) {
     3d8:	83 c4 10             	add    $0x10,%esp
     3db:	83 f8 ff             	cmp    $0xffffffff,%eax
     3de:	74 20                	je     400 <umountwithopenfiletest+0x70>
    printf(1, "umountwithopenfiletest: umount did not fail as expected %d\n", res);
     3e0:	83 ec 04             	sub    $0x4,%esp
     3e3:	50                   	push   %eax
     3e4:	68 58 1c 00 00       	push   $0x1c58
     3e9:	6a 01                	push   $0x1
     3eb:	e8 f0 0f 00 00       	call   13e0 <printf>
    return 1;
     3f0:	83 c4 10             	add    $0x10,%esp
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     3f3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     3f6:	89 d8                	mov    %ebx,%eax
     3f8:	5b                   	pop    %ebx
     3f9:	5e                   	pop    %esi
     3fa:	5d                   	pop    %ebp
     3fb:	c3                   	ret    
     3fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if (res != -1) {
    printf(1, "umountwithopenfiletest: umount did not fail as expected %d\n", res);
    return 1;
  }

  close(fd);
     400:	83 ec 0c             	sub    $0xc,%esp
}

static int
umountwithopenfiletest(void) {
  if (mounta() != 0) {
    return 1;
     403:	31 db                	xor    %ebx,%ebx
  if (res != -1) {
    printf(1, "umountwithopenfiletest: umount did not fail as expected %d\n", res);
    return 1;
  }

  close(fd);
     405:	56                   	push   %esi
     406:	e8 45 0e 00 00       	call   1250 <close>

  if (umounta() != 0) {
     40b:	e8 f0 fb ff ff       	call   0 <umounta>
}

static int
umountwithopenfiletest(void) {
  if (mounta() != 0) {
    return 1;
     410:	83 c4 10             	add    $0x10,%esp
     413:	85 c0                	test   %eax,%eax
     415:	0f 95 c3             	setne  %bl
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     418:	8d 65 f8             	lea    -0x8(%ebp),%esp
     41b:	89 d8                	mov    %ebx,%eax
     41d:	5b                   	pop    %ebx
     41e:	5e                   	pop    %esi
     41f:	5d                   	pop    %ebp
     420:	c3                   	ret    
     421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return 1;
  }

  int fd;
  if((fd = open("a/umountwithop", O_WRONLY|O_CREATE)) < 0){
    printf(1, "umountwithopenfiletest: cannot open file\n");
     428:	83 ec 08             	sub    $0x8,%esp
     42b:	68 2c 1c 00 00       	push   $0x1c2c
     430:	6a 01                	push   $0x1
     432:	e8 a9 0f 00 00       	call   13e0 <printf>
     437:	83 c4 10             	add    $0x10,%esp
     43a:	e9 64 ff ff ff       	jmp    3a3 <umountwithopenfiletest+0x13>
     43f:	90                   	nop

00000440 <createfile>:
#include "ns_types.h"
#include "tester.h"


static int
createfile(char *path, char *contents) {
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	57                   	push   %edi
     444:	56                   	push   %esi
     445:	53                   	push   %ebx
     446:	89 c7                	mov    %eax,%edi
     448:	89 d6                	mov    %edx,%esi
     44a:	83 ec 14             	sub    $0x14,%esp
  int fd;
  if((fd = open(path, O_WRONLY|O_CREATE)) < 0){
     44d:	68 01 02 00 00       	push   $0x201
     452:	50                   	push   %eax
     453:	e8 10 0e 00 00       	call   1268 <open>
     458:	83 c4 10             	add    $0x10,%esp
     45b:	85 c0                	test   %eax,%eax
     45d:	78 39                	js     498 <createfile+0x58>
    printf(1, "createfile: cannot open %s\n", path);
    return -1;
  }

  if (write(fd, contents, strlen(contents)) < 0) {
     45f:	83 ec 0c             	sub    $0xc,%esp
     462:	89 c3                	mov    %eax,%ebx
     464:	56                   	push   %esi
     465:	e8 36 0a 00 00       	call   ea0 <strlen>
     46a:	83 c4 0c             	add    $0xc,%esp
     46d:	50                   	push   %eax
     46e:	56                   	push   %esi
     46f:	53                   	push   %ebx
     470:	e8 d3 0d 00 00       	call   1248 <write>
     475:	83 c4 10             	add    $0x10,%esp
     478:	85 c0                	test   %eax,%eax
     47a:	78 3c                	js     4b8 <createfile+0x78>
    printf(1, "createfile: failed writing\n", path);
    close(fd);
    return -1;
  }

  close(fd);
     47c:	83 ec 0c             	sub    $0xc,%esp
     47f:	53                   	push   %ebx
     480:	e8 cb 0d 00 00       	call   1250 <close>

  return 0;
     485:	83 c4 10             	add    $0x10,%esp
     488:	31 c0                	xor    %eax,%eax
}
     48a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     48d:	5b                   	pop    %ebx
     48e:	5e                   	pop    %esi
     48f:	5f                   	pop    %edi
     490:	5d                   	pop    %ebp
     491:	c3                   	ret    
     492:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

static int
createfile(char *path, char *contents) {
  int fd;
  if((fd = open(path, O_WRONLY|O_CREATE)) < 0){
    printf(1, "createfile: cannot open %s\n", path);
     498:	83 ec 04             	sub    $0x4,%esp
     49b:	57                   	push   %edi
     49c:	68 b0 18 00 00       	push   $0x18b0
     4a1:	6a 01                	push   $0x1
     4a3:	e8 38 0f 00 00       	call   13e0 <printf>
     4a8:	83 c4 10             	add    $0x10,%esp
     4ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     4b0:	eb d8                	jmp    48a <createfile+0x4a>
     4b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return -1;
  }

  if (write(fd, contents, strlen(contents)) < 0) {
    printf(1, "createfile: failed writing\n", path);
     4b8:	83 ec 04             	sub    $0x4,%esp
     4bb:	57                   	push   %edi
     4bc:	68 cc 18 00 00       	push   $0x18cc
     4c1:	6a 01                	push   $0x1
     4c3:	e8 18 0f 00 00       	call   13e0 <printf>
    close(fd);
     4c8:	89 1c 24             	mov    %ebx,(%esp)
     4cb:	e8 80 0d 00 00       	call   1250 <close>
    return -1;
     4d0:	83 c4 10             	add    $0x10,%esp
     4d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     4d8:	eb b0                	jmp    48a <createfile+0x4a>
     4da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004e0 <testfile>:

  return 0;
}

static int
testfile(char *path) {
     4e0:	55                   	push   %ebp
  if (createfile(path, "aaa") != 0) {
     4e1:	ba e8 18 00 00       	mov    $0x18e8,%edx

  return 0;
}

static int
testfile(char *path) {
     4e6:	89 e5                	mov    %esp,%ebp
     4e8:	53                   	push   %ebx
     4e9:	89 c3                	mov    %eax,%ebx
     4eb:	83 ec 04             	sub    $0x4,%esp
  if (createfile(path, "aaa") != 0) {
     4ee:	e8 4d ff ff ff       	call   440 <createfile>
     4f3:	85 c0                	test   %eax,%eax
     4f5:	75 21                	jne    518 <testfile+0x38>
    return -1;
  }

  if (verifyfilecontents(path, "aaa") != 0) {
     4f7:	ba e8 18 00 00       	mov    $0x18e8,%edx
     4fc:	89 d8                	mov    %ebx,%eax
     4fe:	e8 8d fb ff ff       	call   90 <verifyfilecontents>
     503:	85 c0                	test   %eax,%eax
     505:	0f 95 c0             	setne  %al
     508:	0f b6 c0             	movzbl %al,%eax
     50b:	f7 d8                	neg    %eax
    return -1;
  }

  return 0;
}
     50d:	83 c4 04             	add    $0x4,%esp
     510:	5b                   	pop    %ebx
     511:	5d                   	pop    %ebp
     512:	c3                   	ret    
     513:	90                   	nop
     514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

static int
testfile(char *path) {
  if (createfile(path, "aaa") != 0) {
    return -1;
     518:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     51d:	eb ee                	jmp    50d <testfile+0x2d>
     51f:	90                   	nop

00000520 <namespacefiletest>:
    return 0;
  }
}

static int
namespacefiletest(void) {
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	53                   	push   %ebx
     524:	83 ec 04             	sub    $0x4,%esp
  if (mounta() != 0) {
     527:	e8 14 fb ff ff       	call   40 <mounta>
     52c:	85 c0                	test   %eax,%eax
     52e:	74 10                	je     540 <namespacefiletest+0x20>
    close(fd);

    res = umount("b");
    if (res != 0) {
      printf(1, "namespacefiletest: umount returned %d\n", res);
      return 1;
     530:	bb 01 00 00 00       	mov    $0x1,%ebx
    }

    return 0;
  }
}
     535:	89 d8                	mov    %ebx,%eax
     537:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     53a:	c9                   	leave  
     53b:	c3                   	ret    
     53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
namespacefiletest(void) {
  if (mounta() != 0) {
    return 1;
  }

  int pid = fork();
     540:	e8 db 0c 00 00       	call   1220 <fork>
  if (pid == 0) {
     545:	85 c0                	test   %eax,%eax
     547:	75 57                	jne    5a0 <namespacefiletest+0x80>
    unshare(MOUNT_NS);
     549:	83 ec 0c             	sub    $0xc,%esp
     54c:	6a 01                	push   $0x1
     54e:	e8 95 0d 00 00       	call   12e8 <unshare>
    mkdir("b");
     553:	c7 04 24 42 19 00 00 	movl   $0x1942,(%esp)
     55a:	e8 31 0d 00 00       	call   1290 <mkdir>
    int res = mount("internal_fs_b", "b", 0);
     55f:	83 c4 0c             	add    $0xc,%esp
     562:	6a 00                	push   $0x0
     564:	68 42 19 00 00       	push   $0x1942
     569:	68 ec 18 00 00       	push   $0x18ec
     56e:	e8 55 0d 00 00       	call   12c8 <mount>
    if (res != 0) {
     573:	83 c4 10             	add    $0x10,%esp
     576:	85 c0                	test   %eax,%eax
     578:	0f 84 fb 00 00 00    	je     679 <namespacefiletest+0x159>
      return 1;
    }

    int res = mount("internal_fs_b", "b", 0);
    if (res != 0) {
      printf(1, "namespacefiletest: mount returned %d\n", res);
     57e:	83 ec 04             	sub    $0x4,%esp
      return 1;
     581:	bb 01 00 00 00       	mov    $0x1,%ebx
      return 1;
    }

    int res = mount("internal_fs_b", "b", 0);
    if (res != 0) {
      printf(1, "namespacefiletest: mount returned %d\n", res);
     586:	50                   	push   %eax
     587:	68 94 1c 00 00       	push   $0x1c94
     58c:	6a 01                	push   $0x1
     58e:	e8 4d 0e 00 00       	call   13e0 <printf>
      return 1;
    }

    return 0;
  }
}
     593:	89 d8                	mov    %ebx,%eax
      return 1;
    }

    int res = mount("internal_fs_b", "b", 0);
    if (res != 0) {
      printf(1, "namespacefiletest: mount returned %d\n", res);
     595:	83 c4 10             	add    $0x10,%esp
      return 1;
    }

    return 0;
  }
}
     598:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     59b:	c9                   	leave  
     59c:	c3                   	ret    
     59d:	8d 76 00             	lea    0x0(%esi),%esi
    }

    createfile("b/nsfiletest", "aaa");
    exit(0);
  } else {
    wait(0);
     5a0:	83 ec 0c             	sub    $0xc,%esp
     5a3:	6a 00                	push   $0x0
     5a5:	e8 86 0c 00 00       	call   1230 <wait>

    if (umounta() != 0) {
     5aa:	e8 51 fa ff ff       	call   0 <umounta>
     5af:	83 c4 10             	add    $0x10,%esp
     5b2:	85 c0                	test   %eax,%eax
     5b4:	89 c3                	mov    %eax,%ebx
     5b6:	0f 85 74 ff ff ff    	jne    530 <namespacefiletest+0x10>
      return 1;
    }
    if (open("b/nsfiletest", 0) >= 0) {
     5bc:	83 ec 08             	sub    $0x8,%esp
     5bf:	6a 00                	push   $0x0
     5c1:	68 fa 18 00 00       	push   $0x18fa
     5c6:	e8 9d 0c 00 00       	call   1268 <open>
     5cb:	83 c4 10             	add    $0x10,%esp
     5ce:	85 c0                	test   %eax,%eax
     5d0:	78 1e                	js     5f0 <namespacefiletest+0xd0>
      printf(1, "namespacefiletest: should not have been able to open file\n");
     5d2:	83 ec 08             	sub    $0x8,%esp
      return 1;
     5d5:	bb 01 00 00 00       	mov    $0x1,%ebx

    if (umounta() != 0) {
      return 1;
    }
    if (open("b/nsfiletest", 0) >= 0) {
      printf(1, "namespacefiletest: should not have been able to open file\n");
     5da:	68 bc 1c 00 00       	push   $0x1cbc
     5df:	6a 01                	push   $0x1
     5e1:	e8 fa 0d 00 00       	call   13e0 <printf>
     5e6:	83 c4 10             	add    $0x10,%esp
     5e9:	e9 47 ff ff ff       	jmp    535 <namespacefiletest+0x15>
     5ee:	66 90                	xchg   %ax,%ax
      return 1;
    }

    int res = mount("internal_fs_b", "b", 0);
     5f0:	83 ec 04             	sub    $0x4,%esp
     5f3:	6a 00                	push   $0x0
     5f5:	68 42 19 00 00       	push   $0x1942
     5fa:	68 ec 18 00 00       	push   $0x18ec
     5ff:	e8 c4 0c 00 00       	call   12c8 <mount>
    if (res != 0) {
     604:	83 c4 10             	add    $0x10,%esp
     607:	85 c0                	test   %eax,%eax
     609:	0f 85 6f ff ff ff    	jne    57e <namespacefiletest+0x5e>
      printf(1, "namespacefiletest: mount returned %d\n", res);
      return 1;
    }

    int fd;
    if ((fd = open("b/nsfiletest", 0)) < 0) {
     60f:	83 ec 08             	sub    $0x8,%esp
     612:	6a 00                	push   $0x0
     614:	68 fa 18 00 00       	push   $0x18fa
     619:	e8 4a 0c 00 00       	call   1268 <open>
     61e:	83 c4 10             	add    $0x10,%esp
     621:	85 c0                	test   %eax,%eax
     623:	78 38                	js     65d <namespacefiletest+0x13d>
      printf(1, "namespacefiletest: failed to open file after mount\n");
      return 1;
    }

    close(fd);
     625:	83 ec 0c             	sub    $0xc,%esp
     628:	50                   	push   %eax
     629:	e8 22 0c 00 00       	call   1250 <close>

    res = umount("b");
     62e:	c7 04 24 42 19 00 00 	movl   $0x1942,(%esp)
     635:	e8 96 0c 00 00       	call   12d0 <umount>
    if (res != 0) {
     63a:	83 c4 10             	add    $0x10,%esp
     63d:	85 c0                	test   %eax,%eax
     63f:	0f 84 f0 fe ff ff    	je     535 <namespacefiletest+0x15>
      printf(1, "namespacefiletest: umount returned %d\n", res);
     645:	83 ec 04             	sub    $0x4,%esp
     648:	50                   	push   %eax
     649:	68 2c 1d 00 00       	push   $0x1d2c
     64e:	6a 01                	push   $0x1
     650:	e8 8b 0d 00 00       	call   13e0 <printf>
     655:	83 c4 10             	add    $0x10,%esp
     658:	e9 d3 fe ff ff       	jmp    530 <namespacefiletest+0x10>
      return 1;
    }

    int fd;
    if ((fd = open("b/nsfiletest", 0)) < 0) {
      printf(1, "namespacefiletest: failed to open file after mount\n");
     65d:	83 ec 08             	sub    $0x8,%esp
      return 1;
     660:	bb 01 00 00 00       	mov    $0x1,%ebx
      return 1;
    }

    int fd;
    if ((fd = open("b/nsfiletest", 0)) < 0) {
      printf(1, "namespacefiletest: failed to open file after mount\n");
     665:	68 f8 1c 00 00       	push   $0x1cf8
     66a:	6a 01                	push   $0x1
     66c:	e8 6f 0d 00 00       	call   13e0 <printf>
     671:	83 c4 10             	add    $0x10,%esp
     674:	e9 bc fe ff ff       	jmp    535 <namespacefiletest+0x15>
    if (res != 0) {
      printf(1, "namespacefiletest: mount returned %d\n", res);
      return 1;
    }

    createfile("b/nsfiletest", "aaa");
     679:	ba e8 18 00 00       	mov    $0x18e8,%edx
     67e:	b8 fa 18 00 00       	mov    $0x18fa,%eax
     683:	e8 b8 fd ff ff       	call   440 <createfile>
    exit(0);
     688:	83 ec 0c             	sub    $0xc,%esp
     68b:	6a 00                	push   $0x0
     68d:	e8 96 0b 00 00       	call   1228 <exit>
     692:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006a0 <devicefilestoretest>:

  return 0;
}

static int
devicefilestoretest(void) {
     6a0:	55                   	push   %ebp
     6a1:	89 e5                	mov    %esp,%ebp
     6a3:	53                   	push   %ebx
     6a4:	83 ec 04             	sub    $0x4,%esp
  if (mounta() != 0) {
     6a7:	e8 94 f9 ff ff       	call   40 <mounta>
     6ac:	85 c0                	test   %eax,%eax
     6ae:	74 10                	je     6c0 <devicefilestoretest+0x20>

  mkdir("ccc");
  int res = mount("internal_fs_a", "ccc", 0);
  if (res != 0) {
    printf(1, "devicefilestoretest: mount returned %d\n", res);
    return 1;
     6b0:	bb 01 00 00 00       	mov    $0x1,%ebx
  }

  unlink("ccc");

  return 0;
}
     6b5:	89 d8                	mov    %ebx,%eax
     6b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     6ba:	c9                   	leave  
     6bb:	c3                   	ret    
     6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
devicefilestoretest(void) {
  if (mounta() != 0) {
    return 1;
  }

  if (createfile("a/devicefilestoretest", "ababab") != 0) {
     6c0:	ba 07 19 00 00       	mov    $0x1907,%edx
     6c5:	b8 0e 19 00 00       	mov    $0x190e,%eax
     6ca:	e8 71 fd ff ff       	call   440 <createfile>
     6cf:	85 c0                	test   %eax,%eax
     6d1:	75 dd                	jne    6b0 <devicefilestoretest+0x10>
    return 1;
  }

  if (umounta() != 0) {
     6d3:	e8 28 f9 ff ff       	call   0 <umounta>
     6d8:	85 c0                	test   %eax,%eax
     6da:	75 d4                	jne    6b0 <devicefilestoretest+0x10>
    return 1;
  }

  mkdir("ccc");
     6dc:	83 ec 0c             	sub    $0xc,%esp
     6df:	68 24 19 00 00       	push   $0x1924
     6e4:	e8 a7 0b 00 00       	call   1290 <mkdir>
  int res = mount("internal_fs_a", "ccc", 0);
     6e9:	83 c4 0c             	add    $0xc,%esp
     6ec:	6a 00                	push   $0x0
     6ee:	68 24 19 00 00       	push   $0x1924
     6f3:	68 75 18 00 00       	push   $0x1875
     6f8:	e8 cb 0b 00 00       	call   12c8 <mount>
  if (res != 0) {
     6fd:	83 c4 10             	add    $0x10,%esp
     700:	85 c0                	test   %eax,%eax
     702:	75 44                	jne    748 <devicefilestoretest+0xa8>
    printf(1, "devicefilestoretest: mount returned %d\n", res);
    return 1;
  }

  if (verifyfilecontents("ccc/devicefilestoretest", "ababab") != 0) {
     704:	ba 07 19 00 00       	mov    $0x1907,%edx
     709:	b8 28 19 00 00       	mov    $0x1928,%eax
     70e:	e8 7d f9 ff ff       	call   90 <verifyfilecontents>
     713:	85 c0                	test   %eax,%eax
     715:	89 c3                	mov    %eax,%ebx
     717:	75 97                	jne    6b0 <devicefilestoretest+0x10>
    return 1;
  }

  res = umount("ccc");
     719:	83 ec 0c             	sub    $0xc,%esp
     71c:	68 24 19 00 00       	push   $0x1924
     721:	e8 aa 0b 00 00       	call   12d0 <umount>
  if (res != 0) {
     726:	83 c4 10             	add    $0x10,%esp
     729:	85 c0                	test   %eax,%eax
     72b:	75 33                	jne    760 <devicefilestoretest+0xc0>
    printf(1, "devicefilestoretest: umount did not fail as expected %d\n", res);
    return 1;
  }

  unlink("ccc");
     72d:	83 ec 0c             	sub    $0xc,%esp
     730:	68 24 19 00 00       	push   $0x1924
     735:	e8 3e 0b 00 00       	call   1278 <unlink>
     73a:	83 c4 10             	add    $0x10,%esp
     73d:	e9 73 ff ff ff       	jmp    6b5 <devicefilestoretest+0x15>
     742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }

  mkdir("ccc");
  int res = mount("internal_fs_a", "ccc", 0);
  if (res != 0) {
    printf(1, "devicefilestoretest: mount returned %d\n", res);
     748:	83 ec 04             	sub    $0x4,%esp
     74b:	50                   	push   %eax
     74c:	68 54 1d 00 00       	push   $0x1d54
     751:	6a 01                	push   $0x1
     753:	e8 88 0c 00 00       	call   13e0 <printf>
    return 1;
     758:	83 c4 10             	add    $0x10,%esp
     75b:	e9 50 ff ff ff       	jmp    6b0 <devicefilestoretest+0x10>
    return 1;
  }

  res = umount("ccc");
  if (res != 0) {
    printf(1, "devicefilestoretest: umount did not fail as expected %d\n", res);
     760:	83 ec 04             	sub    $0x4,%esp
    return 1;
     763:	bb 01 00 00 00       	mov    $0x1,%ebx
    return 1;
  }

  res = umount("ccc");
  if (res != 0) {
    printf(1, "devicefilestoretest: umount did not fail as expected %d\n", res);
     768:	50                   	push   %eax
     769:	68 7c 1d 00 00       	push   $0x1d7c
     76e:	6a 01                	push   $0x1
     770:	e8 6b 0c 00 00       	call   13e0 <printf>
     775:	83 c4 10             	add    $0x10,%esp
     778:	e9 38 ff ff ff       	jmp    6b5 <devicefilestoretest+0x15>
     77d:	8d 76 00             	lea    0x0(%esi),%esi

00000780 <nestedmounttest>:

  return 0;
}

static int
nestedmounttest(void) {
     780:	55                   	push   %ebp
     781:	89 e5                	mov    %esp,%ebp
     783:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     786:	e8 b5 f8 ff ff       	call   40 <mounta>
     78b:	85 c0                	test   %eax,%eax
     78d:	74 11                	je     7a0 <nestedmounttest+0x20>
  }

  res = umount("a");
  if (res != -1) {
    printf(1, "nestedmounttest: umount did not fail as expected %d\n", res);
    return 1;
     78f:	b8 01 00 00 00       	mov    $0x1,%eax
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     794:	c9                   	leave  
     795:	c3                   	ret    
     796:	8d 76 00             	lea    0x0(%esi),%esi
     799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
nestedmounttest(void) {
  if (mounta() != 0) {
    return 1;
  }

  mkdir("a/b");
     7a0:	83 ec 0c             	sub    $0xc,%esp
     7a3:	68 40 19 00 00       	push   $0x1940
     7a8:	e8 e3 0a 00 00       	call   1290 <mkdir>
  int res = mount("internal_fs_b", "a/b", 0);
     7ad:	83 c4 0c             	add    $0xc,%esp
     7b0:	6a 00                	push   $0x0
     7b2:	68 40 19 00 00       	push   $0x1940
     7b7:	68 ec 18 00 00       	push   $0x18ec
     7bc:	e8 07 0b 00 00       	call   12c8 <mount>
  if (res != 0) {
     7c1:	83 c4 10             	add    $0x10,%esp
     7c4:	85 c0                	test   %eax,%eax
     7c6:	75 38                	jne    800 <nestedmounttest+0x80>
    printf(1, "nestedmounttest: mount returned %d\n", res);
    return 1;
  }

  if (testfile("a/b/test1") != 0) {
     7c8:	b8 44 19 00 00       	mov    $0x1944,%eax
     7cd:	e8 0e fd ff ff       	call   4e0 <testfile>
     7d2:	85 c0                	test   %eax,%eax
     7d4:	75 b9                	jne    78f <nestedmounttest+0xf>
    return 1;
  }

  res = umount("a");
     7d6:	83 ec 0c             	sub    $0xc,%esp
     7d9:	68 81 18 00 00       	push   $0x1881
     7de:	e8 ed 0a 00 00       	call   12d0 <umount>
  if (res != -1) {
     7e3:	83 c4 10             	add    $0x10,%esp
     7e6:	83 f8 ff             	cmp    $0xffffffff,%eax
     7e9:	74 35                	je     820 <nestedmounttest+0xa0>
    printf(1, "nestedmounttest: umount did not fail as expected %d\n", res);
     7eb:	83 ec 04             	sub    $0x4,%esp
     7ee:	50                   	push   %eax
     7ef:	68 dc 1d 00 00       	push   $0x1ddc
     7f4:	6a 01                	push   $0x1
     7f6:	e8 e5 0b 00 00       	call   13e0 <printf>
    return 1;
     7fb:	83 c4 10             	add    $0x10,%esp
     7fe:	eb 8f                	jmp    78f <nestedmounttest+0xf>
  }

  mkdir("a/b");
  int res = mount("internal_fs_b", "a/b", 0);
  if (res != 0) {
    printf(1, "nestedmounttest: mount returned %d\n", res);
     800:	83 ec 04             	sub    $0x4,%esp
     803:	50                   	push   %eax
     804:	68 b8 1d 00 00       	push   $0x1db8
     809:	6a 01                	push   $0x1
     80b:	e8 d0 0b 00 00       	call   13e0 <printf>
    return 1;
     810:	83 c4 10             	add    $0x10,%esp
     813:	b8 01 00 00 00       	mov    $0x1,%eax
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     818:	c9                   	leave  
     819:	c3                   	ret    
     81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if (res != -1) {
    printf(1, "nestedmounttest: umount did not fail as expected %d\n", res);
    return 1;
  }

  res = umount("a/b");
     820:	83 ec 0c             	sub    $0xc,%esp
     823:	68 40 19 00 00       	push   $0x1940
     828:	e8 a3 0a 00 00       	call   12d0 <umount>
  if (res != 0) {
     82d:	83 c4 10             	add    $0x10,%esp
     830:	85 c0                	test   %eax,%eax
     832:	75 14                	jne    848 <nestedmounttest+0xc8>
    printf(1, "nestedmounttest: umount returned %d\n", res);
    return 1;
  }

  if (umounta() != 0) {
     834:	e8 c7 f7 ff ff       	call   0 <umounta>
}

static int
nestedmounttest(void) {
  if (mounta() != 0) {
    return 1;
     839:	85 c0                	test   %eax,%eax
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     83b:	c9                   	leave  
}

static int
nestedmounttest(void) {
  if (mounta() != 0) {
    return 1;
     83c:	0f 95 c0             	setne  %al
     83f:	0f b6 c0             	movzbl %al,%eax
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     842:	c3                   	ret    
     843:	90                   	nop
     844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return 1;
  }

  res = umount("a/b");
  if (res != 0) {
    printf(1, "nestedmounttest: umount returned %d\n", res);
     848:	83 ec 04             	sub    $0x4,%esp
     84b:	50                   	push   %eax
     84c:	68 14 1e 00 00       	push   $0x1e14
     851:	6a 01                	push   $0x1
     853:	e8 88 0b 00 00       	call   13e0 <printf>
     858:	83 c4 10             	add    $0x10,%esp
    return 1;
     85b:	b8 01 00 00 00       	mov    $0x1,%eax
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     860:	c9                   	leave  
     861:	c3                   	ret    
     862:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000870 <directorywithintest.part.12>:
  }
  return 0;
}

static int
writefiletest(void) {
     870:	55                   	push   %ebp
     871:	89 e5                	mov    %esp,%ebp
     873:	83 ec 08             	sub    $0x8,%esp

  if (testfile("a/test1") != 0) {
    return 1;
  }

  if (umounta() != 0) {
     876:	e8 85 f7 ff ff       	call   0 <umounta>
     87b:	85 c0                	test   %eax,%eax
    return 1;
  }

  return 0;
}
     87d:	c9                   	leave  
     87e:	0f 95 c0             	setne  %al
     881:	0f b6 c0             	movzbl %al,%eax
     884:	c3                   	ret    
     885:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     889:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000890 <directorywithintest>:

  return 0;
}

static int
directorywithintest(void) {
     890:	55                   	push   %ebp
     891:	89 e5                	mov    %esp,%ebp
     893:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     896:	e8 a5 f7 ff ff       	call   40 <mounta>
     89b:	85 c0                	test   %eax,%eax
     89d:	74 11                	je     8b0 <directorywithintest+0x20>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     89f:	b8 01 00 00 00       	mov    $0x1,%eax
     8a4:	c9                   	leave  
     8a5:	c3                   	ret    
     8a6:	8d 76 00             	lea    0x0(%esi),%esi
     8a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
directorywithintest(void) {
  if (mounta() != 0) {
    return 1;
  }

  mkdir ("a/ttt");
     8b0:	83 ec 0c             	sub    $0xc,%esp
     8b3:	68 4e 19 00 00       	push   $0x194e
     8b8:	e8 d3 09 00 00       	call   1290 <mkdir>
  if (testfile("a/ttt/test1") != 0) {
     8bd:	b8 54 19 00 00       	mov    $0x1954,%eax
     8c2:	e8 19 fc ff ff       	call   4e0 <testfile>
     8c7:	83 c4 10             	add    $0x10,%esp
     8ca:	85 c0                	test   %eax,%eax
     8cc:	75 d1                	jne    89f <directorywithintest+0xf>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     8ce:	c9                   	leave  
     8cf:	eb 9f                	jmp    870 <directorywithintest.part.12>
     8d1:	eb 0d                	jmp    8e0 <invalidpathtest>
     8d3:	90                   	nop
     8d4:	90                   	nop
     8d5:	90                   	nop
     8d6:	90                   	nop
     8d7:	90                   	nop
     8d8:	90                   	nop
     8d9:	90                   	nop
     8da:	90                   	nop
     8db:	90                   	nop
     8dc:	90                   	nop
     8dd:	90                   	nop
     8de:	90                   	nop
     8df:	90                   	nop

000008e0 <invalidpathtest>:

  return 0;
}

static int
invalidpathtest(void) {
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 0c             	sub    $0xc,%esp
  int res = mount("internal_fs_a", "AAA", 0);
     8e6:	6a 00                	push   $0x0
     8e8:	68 60 19 00 00       	push   $0x1960
     8ed:	68 75 18 00 00       	push   $0x1875
     8f2:	e8 d1 09 00 00       	call   12c8 <mount>
  if (res != -1) {
     8f7:	83 c4 10             	add    $0x10,%esp
     8fa:	83 f8 ff             	cmp    $0xffffffff,%eax
     8fd:	74 21                	je     920 <invalidpathtest+0x40>
    printf(1, "invalidpathtest: mount did not fail as expected %d\n", res);
     8ff:	83 ec 04             	sub    $0x4,%esp
     902:	50                   	push   %eax
     903:	68 3c 1e 00 00       	push   $0x1e3c
     908:	6a 01                	push   $0x1
     90a:	e8 d1 0a 00 00       	call   13e0 <printf>
    return 1;
     90f:	83 c4 10             	add    $0x10,%esp
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     912:	b8 01 00 00 00       	mov    $0x1,%eax
     917:	c9                   	leave  
     918:	c3                   	ret    
     919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if (res != -1) {
    printf(1, "invalidpathtest: mount did not fail as expected %d\n", res);
    return 1;
  }

  if (mounta() != 0) {
     920:	e8 1b f7 ff ff       	call   40 <mounta>
     925:	85 c0                	test   %eax,%eax
     927:	75 e9                	jne    912 <invalidpathtest+0x32>
    return 1;
  }

  res = umount("b");
     929:	83 ec 0c             	sub    $0xc,%esp
     92c:	68 42 19 00 00       	push   $0x1942
     931:	e8 9a 09 00 00       	call   12d0 <umount>
  if (res != -1) {
     936:	83 c4 10             	add    $0x10,%esp
     939:	83 f8 ff             	cmp    $0xffffffff,%eax
     93c:	74 22                	je     960 <invalidpathtest+0x80>
  }

  mkdir("b");
  res = umount("b");
  if (res != -1) {
    printf(1, "invalidpathtest: umount did not fail as expected %d\n", res);
     93e:	83 ec 04             	sub    $0x4,%esp
     941:	50                   	push   %eax
     942:	68 70 1e 00 00       	push   $0x1e70
     947:	6a 01                	push   $0x1
     949:	e8 92 0a 00 00       	call   13e0 <printf>
    return 1;
     94e:	83 c4 10             	add    $0x10,%esp
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     951:	b8 01 00 00 00       	mov    $0x1,%eax
     956:	c9                   	leave  
     957:	c3                   	ret    
     958:	90                   	nop
     959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if (res != -1) {
    printf(1, "invalidpathtest: umount did not fail as expected %d\n", res);
    return 1;
  }

  mkdir("b");
     960:	83 ec 0c             	sub    $0xc,%esp
     963:	68 42 19 00 00       	push   $0x1942
     968:	e8 23 09 00 00       	call   1290 <mkdir>
  res = umount("b");
     96d:	c7 04 24 42 19 00 00 	movl   $0x1942,(%esp)
     974:	e8 57 09 00 00       	call   12d0 <umount>
  if (res != -1) {
     979:	83 c4 10             	add    $0x10,%esp
     97c:	83 f8 ff             	cmp    $0xffffffff,%eax
     97f:	75 bd                	jne    93e <invalidpathtest+0x5e>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     981:	c9                   	leave  
     982:	e9 e9 fe ff ff       	jmp    870 <directorywithintest.part.12>
     987:	89 f6                	mov    %esi,%esi
     989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000990 <samedirectorytest>:

  return 0;
}

static int
samedirectorytest(void) {
     990:	55                   	push   %ebp
     991:	89 e5                	mov    %esp,%ebp
     993:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     996:	e8 a5 f6 ff ff       	call   40 <mounta>
     99b:	85 c0                	test   %eax,%eax
     99d:	74 11                	je     9b0 <samedirectorytest+0x20>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     99f:	b8 01 00 00 00       	mov    $0x1,%eax
     9a4:	c9                   	leave  
     9a5:	c3                   	ret    
     9a6:	8d 76 00             	lea    0x0(%esi),%esi
     9a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
samedirectorytest(void) {
  if (mounta() != 0) {
    return 1;
  }

  int res = mount("internal_fs_b", "a", 0);
     9b0:	83 ec 04             	sub    $0x4,%esp
     9b3:	6a 00                	push   $0x0
     9b5:	68 81 18 00 00       	push   $0x1881
     9ba:	68 ec 18 00 00       	push   $0x18ec
     9bf:	e8 04 09 00 00       	call   12c8 <mount>
  if (res != -1) {
     9c4:	83 c4 10             	add    $0x10,%esp
     9c7:	83 f8 ff             	cmp    $0xffffffff,%eax
     9ca:	74 24                	je     9f0 <samedirectorytest+0x60>
    printf(1, "samedirectorytest: mount did not fail as expected %d\n", res);
     9cc:	83 ec 04             	sub    $0x4,%esp
     9cf:	50                   	push   %eax
     9d0:	68 a8 1e 00 00       	push   $0x1ea8
     9d5:	6a 01                	push   $0x1
     9d7:	e8 04 0a 00 00       	call   13e0 <printf>
    return 1;
     9dc:	83 c4 10             	add    $0x10,%esp
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     9df:	b8 01 00 00 00       	mov    $0x1,%eax
     9e4:	c9                   	leave  
     9e5:	c3                   	ret    
     9e6:	8d 76 00             	lea    0x0(%esi),%esi
     9e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     9f0:	c9                   	leave  
     9f1:	e9 7a fe ff ff       	jmp    870 <directorywithintest.part.12>
     9f6:	8d 76 00             	lea    0x0(%esi),%esi
     9f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a00 <mounttest>:

  return 0;
}

static int
mounttest(void) {
     a00:	55                   	push   %ebp
     a01:	89 e5                	mov    %esp,%ebp
     a03:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     a06:	e8 35 f6 ff ff       	call   40 <mounta>
     a0b:	85 c0                	test   %eax,%eax
     a0d:	74 11                	je     a20 <mounttest+0x20>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     a0f:	b8 01 00 00 00       	mov    $0x1,%eax
     a14:	c9                   	leave  
     a15:	c3                   	ret    
     a16:	8d 76 00             	lea    0x0(%esi),%esi
     a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     a20:	c9                   	leave  
     a21:	e9 4a fe ff ff       	jmp    870 <directorywithintest.part.12>
     a26:	8d 76 00             	lea    0x0(%esi),%esi
     a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a30 <errorondeletedevicetest>:

  return 0;
}

static int
errorondeletedevicetest(void) {
     a30:	55                   	push   %ebp
     a31:	89 e5                	mov    %esp,%ebp
     a33:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     a36:	e8 05 f6 ff ff       	call   40 <mounta>
     a3b:	85 c0                	test   %eax,%eax
     a3d:	74 11                	je     a50 <errorondeletedevicetest+0x20>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     a3f:	b8 01 00 00 00       	mov    $0x1,%eax
     a44:	c9                   	leave  
     a45:	c3                   	ret    
     a46:	8d 76 00             	lea    0x0(%esi),%esi
     a49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
errorondeletedevicetest(void) {
  if (mounta() != 0) {
    return 1;
  }

  int res = unlink("internal_fs_a");
     a50:	83 ec 0c             	sub    $0xc,%esp
     a53:	68 75 18 00 00       	push   $0x1875
     a58:	e8 1b 08 00 00       	call   1278 <unlink>
  if (res != -1) {
     a5d:	83 c4 10             	add    $0x10,%esp
     a60:	83 f8 ff             	cmp    $0xffffffff,%eax
     a63:	74 1b                	je     a80 <errorondeletedevicetest+0x50>
    printf(1, "errorondeletedevicetest: unlink did not fail as expected %d\n", res);
     a65:	83 ec 04             	sub    $0x4,%esp
     a68:	50                   	push   %eax
     a69:	68 e0 1e 00 00       	push   $0x1ee0
     a6e:	6a 01                	push   $0x1
     a70:	e8 6b 09 00 00       	call   13e0 <printf>
    return 1;
     a75:	83 c4 10             	add    $0x10,%esp
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     a78:	b8 01 00 00 00       	mov    $0x1,%eax
     a7d:	c9                   	leave  
     a7e:	c3                   	ret    
     a7f:	90                   	nop
     a80:	c9                   	leave  
     a81:	e9 ea fd ff ff       	jmp    870 <directorywithintest.part.12>
     a86:	8d 76 00             	lea    0x0(%esi),%esi
     a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a90 <writefiletest>:
  }
  return 0;
}

static int
writefiletest(void) {
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	83 ec 08             	sub    $0x8,%esp
  if (mounta() != 0) {
     a96:	e8 a5 f5 ff ff       	call   40 <mounta>
     a9b:	85 c0                	test   %eax,%eax
     a9d:	74 11                	je     ab0 <writefiletest+0x20>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     a9f:	b8 01 00 00 00       	mov    $0x1,%eax
     aa4:	c9                   	leave  
     aa5:	c3                   	ret    
     aa6:	8d 76 00             	lea    0x0(%esi),%esi
     aa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
writefiletest(void) {
  if (mounta() != 0) {
    return 1;
  }

  if (testfile("a/test1") != 0) {
     ab0:	b8 64 19 00 00       	mov    $0x1964,%eax
     ab5:	e8 26 fa ff ff       	call   4e0 <testfile>
     aba:	85 c0                	test   %eax,%eax
     abc:	75 e1                	jne    a9f <writefiletest+0xf>
  if (umounta() != 0) {
    return 1;
  }

  return 0;
}
     abe:	c9                   	leave  
     abf:	e9 ac fd ff ff       	jmp    870 <directorywithintest.part.12>
     ac4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     aca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000ad0 <check.part.14>:

typedef int(*test_func_t)(void);
int testsPassed = 0; /*In case all tests passed, this value will remain 0, else
			it will become 1*/

int check(int r, const char *msg) {
     ad0:	55                   	push   %ebp
     ad1:	89 e5                	mov    %esp,%ebp
     ad3:	83 ec 0c             	sub    $0xc,%esp
  if (r < 0) {
    printf(stderr, "%s\n", (char *)msg);
     ad6:	50                   	push   %eax
     ad7:	68 c8 18 00 00       	push   $0x18c8
     adc:	6a 02                	push   $0x2
     ade:	e8 fd 08 00 00       	call   13e0 <printf>
    exit(1);
     ae3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     aea:	e8 39 07 00 00       	call   1228 <exit>
     aef:	90                   	nop

00000af0 <child_exit_status>:
  }

  return r;
}

static int child_exit_status(int pid) {
     af0:	55                   	push   %ebp
     af1:	89 e5                	mov    %esp,%ebp
     af3:	56                   	push   %esi
     af4:	53                   	push   %ebx
     af5:	8d 5d f4             	lea    -0xc(%ebp),%ebx
     af8:	89 c6                	mov    %eax,%esi
     afa:	83 ec 10             	sub    $0x10,%esp
     afd:	8d 76 00             	lea    0x0(%esi),%esi
  int changed_pid = -1;
  int wstatus;
  do {
    changed_pid = check(wait(&wstatus), "failed to waitpid");
     b00:	83 ec 0c             	sub    $0xc,%esp
     b03:	53                   	push   %ebx
     b04:	e8 27 07 00 00       	call   1230 <wait>
typedef int(*test_func_t)(void);
int testsPassed = 0; /*In case all tests passed, this value will remain 0, else
			it will become 1*/

int check(int r, const char *msg) {
  if (r < 0) {
     b09:	83 c4 10             	add    $0x10,%esp
     b0c:	85 c0                	test   %eax,%eax
     b0e:	78 11                	js     b21 <child_exit_status+0x31>
static int child_exit_status(int pid) {
  int changed_pid = -1;
  int wstatus;
  do {
    changed_pid = check(wait(&wstatus), "failed to waitpid");
  } while (changed_pid != pid);
     b10:	39 f0                	cmp    %esi,%eax
     b12:	75 ec                	jne    b00 <child_exit_status+0x10>

  return WEXITSTATUS(wstatus);
     b14:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
     b17:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b1a:	5b                   	pop    %ebx
  int wstatus;
  do {
    changed_pid = check(wait(&wstatus), "failed to waitpid");
  } while (changed_pid != pid);

  return WEXITSTATUS(wstatus);
     b1b:	c1 f8 08             	sar    $0x8,%eax
}
     b1e:	5e                   	pop    %esi
     b1f:	5d                   	pop    %ebp
     b20:	c3                   	ret    
     b21:	b8 6c 19 00 00       	mov    $0x196c,%eax
     b26:	e8 a5 ff ff ff       	call   ad0 <check.part.14>
     b2b:	90                   	nop
     b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000b30 <statroottest>:

  return 0;
}

static int
statroottest(void) {
     b30:	55                   	push   %ebp
     b31:	89 e5                	mov    %esp,%ebp
     b33:	83 ec 28             	sub    $0x28,%esp
  int pid = fork();
     b36:	e8 e5 06 00 00       	call   1220 <fork>

  if (pid < 0) {
     b3b:	85 c0                	test   %eax,%eax
     b3d:	78 3b                	js     b7a <statroottest+0x4a>
    return 1; // exit on error in fork
  }

  if (pid == 0) {
     b3f:	75 0f                	jne    b50 <statroottest+0x20>
    // in child, only mount
    if (mounta() != 0) {
     b41:	e8 fa f4 ff ff       	call   40 <mounta>
static int
statroottest(void) {
  int pid = fork();

  if (pid < 0) {
    return 1; // exit on error in fork
     b46:	85 c0                	test   %eax,%eax

  if (umounta() != 0) {
    return 1;
  }
  return 0;
}
     b48:	c9                   	leave  
static int
statroottest(void) {
  int pid = fork();

  if (pid < 0) {
    return 1; // exit on error in fork
     b49:	0f 95 c0             	setne  %al
     b4c:	0f b6 c0             	movzbl %al,%eax

  if (umounta() != 0) {
    return 1;
  }
  return 0;
}
     b4f:	c3                   	ret    
      return 1;
    }
    return 0;
  }

  int ret_val = child_exit_status(pid); // get child exit status
     b50:	e8 9b ff ff ff       	call   af0 <child_exit_status>
  if (ret_val != 0) {
     b55:	85 c0                	test   %eax,%eax
     b57:	75 21                	jne    b7a <statroottest+0x4a>
    return 1;
  }

  struct stat st;
  stat("a", &st);
     b59:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     b5c:	83 ec 08             	sub    $0x8,%esp
     b5f:	50                   	push   %eax
     b60:	68 81 18 00 00       	push   $0x1881
     b65:	e8 26 04 00 00       	call   f90 <stat>
  if (st.type != T_DIR || st.ino != 1 || st.size != BSIZE) {
     b6a:	83 c4 10             	add    $0x10,%esp
     b6d:	66 83 7d e4 01       	cmpw   $0x1,-0x1c(%ebp)
     b72:	75 06                	jne    b7a <statroottest+0x4a>
     b74:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
     b78:	74 0e                	je     b88 <statroottest+0x58>
static int
statroottest(void) {
  int pid = fork();

  if (pid < 0) {
    return 1; // exit on error in fork
     b7a:	b8 01 00 00 00       	mov    $0x1,%eax

  if (umounta() != 0) {
    return 1;
  }
  return 0;
}
     b7f:	c9                   	leave  
     b80:	c3                   	ret    
     b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return 1;
  }

  struct stat st;
  stat("a", &st);
  if (st.type != T_DIR || st.ino != 1 || st.size != BSIZE) {
     b88:	81 7d f4 00 04 00 00 	cmpl   $0x400,-0xc(%ebp)
     b8f:	75 e9                	jne    b7a <statroottest+0x4a>
    return 1;
  }

  if (umounta() != 0) {
     b91:	e8 6a f4 ff ff       	call   0 <umounta>
static int
statroottest(void) {
  int pid = fork();

  if (pid < 0) {
    return 1; // exit on error in fork
     b96:	85 c0                	test   %eax,%eax

  if (umounta() != 0) {
    return 1;
  }
  return 0;
}
     b98:	c9                   	leave  
static int
statroottest(void) {
  int pid = fork();

  if (pid < 0) {
    return 1; // exit on error in fork
     b99:	0f 95 c0             	setne  %al
     b9c:	0f b6 c0             	movzbl %al,%eax

  if (umounta() != 0) {
    return 1;
  }
  return 0;
}
     b9f:	c3                   	ret    

00000ba0 <check>:

typedef int(*test_func_t)(void);
int testsPassed = 0; /*In case all tests passed, this value will remain 0, else
			it will become 1*/

int check(int r, const char *msg) {
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	83 ec 08             	sub    $0x8,%esp
     ba6:	8b 45 08             	mov    0x8(%ebp),%eax
  if (r < 0) {
     ba9:	85 c0                	test   %eax,%eax
     bab:	78 02                	js     baf <check+0xf>
    printf(stderr, "%s\n", (char *)msg);
    exit(1);
  }

  return r;
}
     bad:	c9                   	leave  
     bae:	c3                   	ret    
     baf:	8b 45 0c             	mov    0xc(%ebp),%eax
     bb2:	e8 19 ff ff ff       	call   ad0 <check.part.14>
     bb7:	89 f6                	mov    %esi,%esi
     bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000bc0 <run_test>:
}


/*This function runs the test, if a test fails, it will print which test failed,
and set the variable testsPassed to be 1*/
void run_test(test_func_t func, const char *name) {
     bc0:	55                   	push   %ebp
     bc1:	89 e5                	mov    %esp,%ebp
     bc3:	83 ec 08             	sub    $0x8,%esp
  int pid = -1;

  int ret = check(fork(), "fork failed");
     bc6:	e8 55 06 00 00       	call   1220 <fork>
typedef int(*test_func_t)(void);
int testsPassed = 0; /*In case all tests passed, this value will remain 0, else
			it will become 1*/

int check(int r, const char *msg) {
  if (r < 0) {
     bcb:	85 c0                	test   %eax,%eax
     bcd:	78 3e                	js     c0d <run_test+0x4d>
and set the variable testsPassed to be 1*/
void run_test(test_func_t func, const char *name) {
  int pid = -1;

  int ret = check(fork(), "fork failed");
  if (ret == 0) {
     bcf:	74 30                	je     c01 <run_test+0x41>
    exit(func());
  }

  pid = ret;
  if (child_exit_status(pid) != 0) { /*Test failed*/
     bd1:	e8 1a ff ff ff       	call   af0 <child_exit_status>
     bd6:	85 c0                	test   %eax,%eax
     bd8:	75 06                	jne    be0 <run_test+0x20>
    printf(stderr, "failed test - '%s'\n", name);
    testsPassed = 1; /*Denotes some test has failed to pass*/
  }
     bda:	c9                   	leave  
     bdb:	c3                   	ret    
     bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(func());
  }

  pid = ret;
  if (child_exit_status(pid) != 0) { /*Test failed*/
    printf(stderr, "failed test - '%s'\n", name);
     be0:	83 ec 04             	sub    $0x4,%esp
     be3:	ff 75 0c             	pushl  0xc(%ebp)
     be6:	68 8a 19 00 00       	push   $0x198a
     beb:	6a 02                	push   $0x2
     bed:	e8 ee 07 00 00       	call   13e0 <printf>
    testsPassed = 1; /*Denotes some test has failed to pass*/
     bf2:	c7 05 00 40 00 00 01 	movl   $0x1,0x4000
     bf9:	00 00 00 
     bfc:	83 c4 10             	add    $0x10,%esp
  }
     bff:	c9                   	leave  
     c00:	c3                   	ret    
void run_test(test_func_t func, const char *name) {
  int pid = -1;

  int ret = check(fork(), "fork failed");
  if (ret == 0) {
    exit(func());
     c01:	ff 55 08             	call   *0x8(%ebp)
     c04:	83 ec 0c             	sub    $0xc,%esp
     c07:	50                   	push   %eax
     c08:	e8 1b 06 00 00       	call   1228 <exit>
     c0d:	b8 7e 19 00 00       	mov    $0x197e,%eax
     c12:	e8 b9 fe ff ff       	call   ad0 <check.part.14>
     c17:	66 90                	xchg   %ax,%ax
     c19:	66 90                	xchg   %ax,%ax
     c1b:	66 90                	xchg   %ax,%ax
     c1d:	66 90                	xchg   %ax,%ax
     c1f:	90                   	nop

00000c20 <main>:



int
main(int argc, char *argv[])
{
     c20:	8d 4c 24 04          	lea    0x4(%esp),%ecx
     c24:	83 e4 f0             	and    $0xfffffff0,%esp
     c27:	ff 71 fc             	pushl  -0x4(%ecx)
     c2a:	55                   	push   %ebp
     c2b:	89 e5                	mov    %esp,%ebp
     c2d:	51                   	push   %ecx
     c2e:	83 ec 0c             	sub    $0xc,%esp
  printf(stderr, "Running all mounttest\n");
     c31:	68 9e 19 00 00       	push   $0x199e
     c36:	6a 02                	push   $0x2
     c38:	e8 a3 07 00 00       	call   13e0 <printf>
  run_test(mounttest, "mounttest");
     c3d:	59                   	pop    %ecx
     c3e:	58                   	pop    %eax
     c3f:	68 1c 1a 00 00       	push   $0x1a1c
     c44:	68 00 0a 00 00       	push   $0xa00
     c49:	e8 72 ff ff ff       	call   bc0 <run_test>
  run_test(statroottest, "statroottest");
     c4e:	58                   	pop    %eax
     c4f:	5a                   	pop    %edx
     c50:	68 b5 19 00 00       	push   $0x19b5
     c55:	68 30 0b 00 00       	push   $0xb30
     c5a:	e8 61 ff ff ff       	call   bc0 <run_test>
  run_test(invalidpathtest, "invalidpathtest");
     c5f:	59                   	pop    %ecx
     c60:	58                   	pop    %eax
     c61:	68 c2 19 00 00       	push   $0x19c2
     c66:	68 e0 08 00 00       	push   $0x8e0
     c6b:	e8 50 ff ff ff       	call   bc0 <run_test>
  run_test(doublemounttest, "doublemounttest");
     c70:	58                   	pop    %eax
     c71:	5a                   	pop    %edx
     c72:	68 d2 19 00 00       	push   $0x19d2
     c77:	68 80 02 00 00       	push   $0x280
     c7c:	e8 3f ff ff ff       	call   bc0 <run_test>
  run_test(samedirectorytest, "samedirectorytest");
     c81:	59                   	pop    %ecx
     c82:	58                   	pop    %eax
     c83:	68 e2 19 00 00       	push   $0x19e2
     c88:	68 90 09 00 00       	push   $0x990
     c8d:	e8 2e ff ff ff       	call   bc0 <run_test>
  run_test(writefiletest, "writefiletest");
     c92:	58                   	pop    %eax
     c93:	5a                   	pop    %edx
     c94:	68 f4 19 00 00       	push   $0x19f4
     c99:	68 90 0a 00 00       	push   $0xa90
     c9e:	e8 1d ff ff ff       	call   bc0 <run_test>
  run_test(directorywithintest, "directorywithintest");
     ca3:	59                   	pop    %ecx
     ca4:	58                   	pop    %eax
     ca5:	68 02 1a 00 00       	push   $0x1a02
     caa:	68 90 08 00 00       	push   $0x890
     caf:	e8 0c ff ff ff       	call   bc0 <run_test>
  run_test(nestedmounttest, "nestedmounttest");
     cb4:	58                   	pop    %eax
     cb5:	5a                   	pop    %edx
     cb6:	68 16 1a 00 00       	push   $0x1a16
     cbb:	68 80 07 00 00       	push   $0x780
     cc0:	e8 fb fe ff ff       	call   bc0 <run_test>
  run_test(devicefilestoretest, "devicefilestoretest");
     cc5:	59                   	pop    %ecx
     cc6:	58                   	pop    %eax
     cc7:	68 10 19 00 00       	push   $0x1910
     ccc:	68 a0 06 00 00       	push   $0x6a0
     cd1:	e8 ea fe ff ff       	call   bc0 <run_test>
  run_test(umountwithopenfiletest, "umountwithopenfiletest");
     cd6:	58                   	pop    %eax
     cd7:	5a                   	pop    %edx
     cd8:	68 26 1a 00 00       	push   $0x1a26
     cdd:	68 90 03 00 00       	push   $0x390
     ce2:	e8 d9 fe ff ff       	call   bc0 <run_test>
  run_test(errorondeletedevicetest, "errorondeletedevicetest");
     ce7:	59                   	pop    %ecx
     ce8:	58                   	pop    %eax
     ce9:	68 3d 1a 00 00       	push   $0x1a3d
     cee:	68 30 0a 00 00       	push   $0xa30
     cf3:	e8 c8 fe ff ff       	call   bc0 <run_test>
  run_test(namespacetest, "namespacetest");
     cf8:	58                   	pop    %eax
     cf9:	5a                   	pop    %edx
     cfa:	68 55 1a 00 00       	push   $0x1a55
     cff:	68 20 03 00 00       	push   $0x320
     d04:	e8 b7 fe ff ff       	call   bc0 <run_test>
  run_test(namespacefiletest, "namespacefiletest");
     d09:	59                   	pop    %ecx
     d0a:	58                   	pop    %eax
     d0b:	68 63 1a 00 00       	push   $0x1a63
     d10:	68 20 05 00 00       	push   $0x520
     d15:	e8 a6 fe ff ff       	call   bc0 <run_test>
  run_test(cdinthenouttest, "cdinthenouttest");
     d1a:	58                   	pop    %eax
     d1b:	5a                   	pop    %edx
     d1c:	68 75 1a 00 00       	push   $0x1a75
     d21:	68 d0 01 00 00       	push   $0x1d0
     d26:	e8 95 fe ff ff       	call   bc0 <run_test>

  unlink("a");
     d2b:	c7 04 24 81 18 00 00 	movl   $0x1881,(%esp)
     d32:	e8 41 05 00 00       	call   1278 <unlink>
  unlink("b");
     d37:	c7 04 24 42 19 00 00 	movl   $0x1942,(%esp)
     d3e:	e8 35 05 00 00       	call   1278 <unlink>

  if (testsPassed == 0) {
     d43:	8b 0d 00 40 00 00    	mov    0x4000,%ecx
     d49:	83 c4 10             	add    $0x10,%esp
     d4c:	85 c9                	test   %ecx,%ecx
     d4e:	75 1a                	jne    d6a <main+0x14a>
    printf(stderr, "mounttest tests passed successfully\n");
     d50:	52                   	push   %edx
     d51:	52                   	push   %edx
     d52:	68 20 1f 00 00       	push   $0x1f20
     d57:	6a 02                	push   $0x2
     d59:	e8 82 06 00 00       	call   13e0 <printf>
    exit(0);
     d5e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d65:	e8 be 04 00 00       	call   1228 <exit>
  }
  else {
    printf(stderr, "mounttest tests failed to pass\n");
     d6a:	50                   	push   %eax
     d6b:	50                   	push   %eax
     d6c:	68 48 1f 00 00       	push   $0x1f48
     d71:	6a 02                	push   $0x2
     d73:	e8 68 06 00 00       	call   13e0 <printf>
    exit(1);
     d78:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d7f:	e8 a4 04 00 00       	call   1228 <exit>
     d84:	66 90                	xchg   %ax,%ax
     d86:	66 90                	xchg   %ax,%ax
     d88:	66 90                	xchg   %ax,%ax
     d8a:	66 90                	xchg   %ax,%ax
     d8c:	66 90                	xchg   %ax,%ax
     d8e:	66 90                	xchg   %ax,%ax

00000d90 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	53                   	push   %ebx
     d94:	8b 45 08             	mov    0x8(%ebp),%eax
     d97:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     d9a:	89 c2                	mov    %eax,%edx
     d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     da0:	83 c1 01             	add    $0x1,%ecx
     da3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     da7:	83 c2 01             	add    $0x1,%edx
     daa:	84 db                	test   %bl,%bl
     dac:	88 5a ff             	mov    %bl,-0x1(%edx)
     daf:	75 ef                	jne    da0 <strcpy+0x10>
    ;
  return os;
}
     db1:	5b                   	pop    %ebx
     db2:	5d                   	pop    %ebp
     db3:	c3                   	ret    
     db4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     dba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000dc0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     dc0:	55                   	push   %ebp
     dc1:	89 e5                	mov    %esp,%ebp
     dc3:	56                   	push   %esi
     dc4:	53                   	push   %ebx
     dc5:	8b 55 08             	mov    0x8(%ebp),%edx
     dc8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     dcb:	0f b6 02             	movzbl (%edx),%eax
     dce:	0f b6 19             	movzbl (%ecx),%ebx
     dd1:	84 c0                	test   %al,%al
     dd3:	75 1e                	jne    df3 <strcmp+0x33>
     dd5:	eb 29                	jmp    e00 <strcmp+0x40>
     dd7:	89 f6                	mov    %esi,%esi
     dd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     de0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     de3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     de6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     de9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     ded:	84 c0                	test   %al,%al
     def:	74 0f                	je     e00 <strcmp+0x40>
     df1:	89 f1                	mov    %esi,%ecx
     df3:	38 d8                	cmp    %bl,%al
     df5:	74 e9                	je     de0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
     df7:	29 d8                	sub    %ebx,%eax
}
     df9:	5b                   	pop    %ebx
     dfa:	5e                   	pop    %esi
     dfb:	5d                   	pop    %ebp
     dfc:	c3                   	ret    
     dfd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     e00:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     e02:	29 d8                	sub    %ebx,%eax
}
     e04:	5b                   	pop    %ebx
     e05:	5e                   	pop    %esi
     e06:	5d                   	pop    %ebp
     e07:	c3                   	ret    
     e08:	90                   	nop
     e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e10 <strncmp>:

int
strncmp(const char *p, const char *q, int n)
{
     e10:	55                   	push   %ebp
     e11:	89 e5                	mov    %esp,%ebp
     e13:	57                   	push   %edi
     e14:	56                   	push   %esi
     e15:	8b 55 08             	mov    0x8(%ebp),%edx
     e18:	53                   	push   %ebx
     e19:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q && --n)
     e1c:	0f b6 32             	movzbl (%edx),%esi
     e1f:	89 f0                	mov    %esi,%eax
     e21:	84 c0                	test   %al,%al
     e23:	74 67                	je     e8c <strncmp+0x7c>
     e25:	0f b6 19             	movzbl (%ecx),%ebx
     e28:	89 f0                	mov    %esi,%eax
     e2a:	38 d8                	cmp    %bl,%al
     e2c:	75 65                	jne    e93 <strncmp+0x83>
     e2e:	8b 5d 10             	mov    0x10(%ebp),%ebx
     e31:	89 f0                	mov    %esi,%eax
     e33:	0f b6 f0             	movzbl %al,%esi
     e36:	89 f0                	mov    %esi,%eax
     e38:	83 eb 01             	sub    $0x1,%ebx
     e3b:	75 14                	jne    e51 <strncmp+0x41>
     e3d:	eb 25                	jmp    e64 <strncmp+0x54>
     e3f:	90                   	nop
     e40:	0f b6 71 01          	movzbl 0x1(%ecx),%esi
     e44:	89 f1                	mov    %esi,%ecx
     e46:	38 c8                	cmp    %cl,%al
     e48:	75 26                	jne    e70 <strncmp+0x60>
     e4a:	83 eb 01             	sub    $0x1,%ebx
     e4d:	89 f9                	mov    %edi,%ecx
     e4f:	74 2f                	je     e80 <strncmp+0x70>
    p++, q++;
     e51:	83 c2 01             	add    $0x1,%edx
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
     e54:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     e57:	8d 79 01             	lea    0x1(%ecx),%edi
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
     e5a:	84 c0                	test   %al,%al
     e5c:	75 e2                	jne    e40 <strncmp+0x30>
     e5e:	0f b6 71 01          	movzbl 0x1(%ecx),%esi
     e62:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
}
     e64:	5b                   	pop    %ebx
int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    p++, q++;
  return (uchar)*p - (uchar)*q;
     e65:	29 f0                	sub    %esi,%eax
}
     e67:	5e                   	pop    %esi
     e68:	5f                   	pop    %edi
     e69:	5d                   	pop    %ebp
     e6a:	c3                   	ret    
     e6b:	90                   	nop
     e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e70:	0f b6 f1             	movzbl %cl,%esi
     e73:	5b                   	pop    %ebx
int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    p++, q++;
  return (uchar)*p - (uchar)*q;
     e74:	29 f0                	sub    %esi,%eax
}
     e76:	5e                   	pop    %esi
     e77:	5f                   	pop    %edi
     e78:	5d                   	pop    %ebp
     e79:	c3                   	ret    
     e7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e80:	0f b6 f0             	movzbl %al,%esi
     e83:	89 f0                	mov    %esi,%eax
     e85:	5b                   	pop    %ebx
int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    p++, q++;
  return (uchar)*p - (uchar)*q;
     e86:	29 f0                	sub    %esi,%eax
}
     e88:	5e                   	pop    %esi
     e89:	5f                   	pop    %edi
     e8a:	5d                   	pop    %ebp
     e8b:	c3                   	ret    
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
     e8c:	31 c0                	xor    %eax,%eax
     e8e:	0f b6 31             	movzbl (%ecx),%esi
     e91:	eb d1                	jmp    e64 <strncmp+0x54>
     e93:	0f b6 c0             	movzbl %al,%eax
     e96:	0f b6 f3             	movzbl %bl,%esi
     e99:	eb c9                	jmp    e64 <strncmp+0x54>
     e9b:	90                   	nop
     e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ea0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(const char *s)
{
     ea0:	55                   	push   %ebp
     ea1:	89 e5                	mov    %esp,%ebp
     ea3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     ea6:	80 39 00             	cmpb   $0x0,(%ecx)
     ea9:	74 12                	je     ebd <strlen+0x1d>
     eab:	31 d2                	xor    %edx,%edx
     ead:	8d 76 00             	lea    0x0(%esi),%esi
     eb0:	83 c2 01             	add    $0x1,%edx
     eb3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     eb7:	89 d0                	mov    %edx,%eax
     eb9:	75 f5                	jne    eb0 <strlen+0x10>
    ;
  return n;
}
     ebb:	5d                   	pop    %ebp
     ebc:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     ebd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     ebf:	5d                   	pop    %ebp
     ec0:	c3                   	ret    
     ec1:	eb 0d                	jmp    ed0 <memset>
     ec3:	90                   	nop
     ec4:	90                   	nop
     ec5:	90                   	nop
     ec6:	90                   	nop
     ec7:	90                   	nop
     ec8:	90                   	nop
     ec9:	90                   	nop
     eca:	90                   	nop
     ecb:	90                   	nop
     ecc:	90                   	nop
     ecd:	90                   	nop
     ece:	90                   	nop
     ecf:	90                   	nop

00000ed0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     ed0:	55                   	push   %ebp
     ed1:	89 e5                	mov    %esp,%ebp
     ed3:	57                   	push   %edi
     ed4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     ed7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     eda:	8b 45 0c             	mov    0xc(%ebp),%eax
     edd:	89 d7                	mov    %edx,%edi
     edf:	fc                   	cld    
     ee0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     ee2:	89 d0                	mov    %edx,%eax
     ee4:	5f                   	pop    %edi
     ee5:	5d                   	pop    %ebp
     ee6:	c3                   	ret    
     ee7:	89 f6                	mov    %esi,%esi
     ee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ef0 <strchr>:

char*
strchr(const char *s, char c)
{
     ef0:	55                   	push   %ebp
     ef1:	89 e5                	mov    %esp,%ebp
     ef3:	53                   	push   %ebx
     ef4:	8b 45 08             	mov    0x8(%ebp),%eax
     ef7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     efa:	0f b6 10             	movzbl (%eax),%edx
     efd:	84 d2                	test   %dl,%dl
     eff:	74 1d                	je     f1e <strchr+0x2e>
    if(*s == c)
     f01:	38 d3                	cmp    %dl,%bl
     f03:	89 d9                	mov    %ebx,%ecx
     f05:	75 0d                	jne    f14 <strchr+0x24>
     f07:	eb 17                	jmp    f20 <strchr+0x30>
     f09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f10:	38 ca                	cmp    %cl,%dl
     f12:	74 0c                	je     f20 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     f14:	83 c0 01             	add    $0x1,%eax
     f17:	0f b6 10             	movzbl (%eax),%edx
     f1a:	84 d2                	test   %dl,%dl
     f1c:	75 f2                	jne    f10 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     f1e:	31 c0                	xor    %eax,%eax
}
     f20:	5b                   	pop    %ebx
     f21:	5d                   	pop    %ebp
     f22:	c3                   	ret    
     f23:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     f29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000f30 <gets>:

char*
gets(char *buf, int max)
{
     f30:	55                   	push   %ebp
     f31:	89 e5                	mov    %esp,%ebp
     f33:	57                   	push   %edi
     f34:	56                   	push   %esi
     f35:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     f36:	8d 75 e7             	lea    -0x19(%ebp),%esi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     f39:	31 db                	xor    %ebx,%ebx
     f3b:	bf 01 00 00 00       	mov    $0x1,%edi
  return 0;
}

char*
gets(char *buf, int max)
{
     f40:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     f43:	3b 7d 0c             	cmp    0xc(%ebp),%edi
     f46:	7d 30                	jge    f78 <gets+0x48>
    cc = read(0, &c, 1);
     f48:	83 ec 04             	sub    $0x4,%esp
     f4b:	6a 01                	push   $0x1
     f4d:	56                   	push   %esi
     f4e:	6a 00                	push   $0x0
     f50:	e8 eb 02 00 00       	call   1240 <read>
    if(cc < 1)
     f55:	83 c4 10             	add    $0x10,%esp
     f58:	85 c0                	test   %eax,%eax
     f5a:	7e e7                	jle    f43 <gets+0x13>
      continue;
    buf[i++] = c;
     f5c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     f60:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
     f63:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      continue;
    buf[i++] = c;
     f65:	88 04 1a             	mov    %al,(%edx,%ebx,1)
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     f68:	89 fb                	mov    %edi,%ebx
    cc = read(0, &c, 1);
    if(cc < 1)
      continue;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
     f6a:	74 0c                	je     f78 <gets+0x48>
     f6c:	3c 0d                	cmp    $0xd,%al
     f6e:	74 08                	je     f78 <gets+0x48>
     f70:	83 c7 01             	add    $0x1,%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     f73:	3b 7d 0c             	cmp    0xc(%ebp),%edi
     f76:	7c d0                	jl     f48 <gets+0x18>
      continue;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     f78:	8b 45 08             	mov    0x8(%ebp),%eax
     f7b:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     f7f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f82:	5b                   	pop    %ebx
     f83:	5e                   	pop    %esi
     f84:	5f                   	pop    %edi
     f85:	5d                   	pop    %ebp
     f86:	c3                   	ret    
     f87:	89 f6                	mov    %esi,%esi
     f89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000f90 <stat>:

int
stat(const char *n, struct stat *st)
{
     f90:	55                   	push   %ebp
     f91:	89 e5                	mov    %esp,%ebp
     f93:	56                   	push   %esi
     f94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     f95:	83 ec 08             	sub    $0x8,%esp
     f98:	6a 00                	push   $0x0
     f9a:	ff 75 08             	pushl  0x8(%ebp)
     f9d:	e8 c6 02 00 00       	call   1268 <open>
  if(fd < 0)
     fa2:	83 c4 10             	add    $0x10,%esp
     fa5:	85 c0                	test   %eax,%eax
     fa7:	78 27                	js     fd0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     fa9:	83 ec 08             	sub    $0x8,%esp
     fac:	ff 75 0c             	pushl  0xc(%ebp)
     faf:	89 c3                	mov    %eax,%ebx
     fb1:	50                   	push   %eax
     fb2:	e8 c9 02 00 00       	call   1280 <fstat>
     fb7:	89 c6                	mov    %eax,%esi
  close(fd);
     fb9:	89 1c 24             	mov    %ebx,(%esp)
     fbc:	e8 8f 02 00 00       	call   1250 <close>
  return r;
     fc1:	83 c4 10             	add    $0x10,%esp
     fc4:	89 f0                	mov    %esi,%eax
}
     fc6:	8d 65 f8             	lea    -0x8(%ebp),%esp
     fc9:	5b                   	pop    %ebx
     fca:	5e                   	pop    %esi
     fcb:	5d                   	pop    %ebp
     fcc:	c3                   	ret    
     fcd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     fd0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     fd5:	eb ef                	jmp    fc6 <stat+0x36>
     fd7:	89 f6                	mov    %esi,%esi
     fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000fe0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     fe0:	55                   	push   %ebp
     fe1:	89 e5                	mov    %esp,%ebp
     fe3:	53                   	push   %ebx
     fe4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     fe7:	0f be 11             	movsbl (%ecx),%edx
     fea:	8d 42 d0             	lea    -0x30(%edx),%eax
     fed:	3c 09                	cmp    $0x9,%al
     fef:	b8 00 00 00 00       	mov    $0x0,%eax
     ff4:	77 1f                	ja     1015 <atoi+0x35>
     ff6:	8d 76 00             	lea    0x0(%esi),%esi
     ff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1000:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1003:	83 c1 01             	add    $0x1,%ecx
    1006:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    100a:	0f be 11             	movsbl (%ecx),%edx
    100d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1010:	80 fb 09             	cmp    $0x9,%bl
    1013:	76 eb                	jbe    1000 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    1015:	5b                   	pop    %ebx
    1016:	5d                   	pop    %ebp
    1017:	c3                   	ret    
    1018:	90                   	nop
    1019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001020 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	56                   	push   %esi
    1024:	53                   	push   %ebx
    1025:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1028:	8b 45 08             	mov    0x8(%ebp),%eax
    102b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    102e:	85 db                	test   %ebx,%ebx
    1030:	7e 14                	jle    1046 <memmove+0x26>
    1032:	31 d2                	xor    %edx,%edx
    1034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1038:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    103c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    103f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1042:	39 da                	cmp    %ebx,%edx
    1044:	75 f2                	jne    1038 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    1046:	5b                   	pop    %ebx
    1047:	5e                   	pop    %esi
    1048:	5d                   	pop    %ebp
    1049:	c3                   	ret    
    104a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001050 <itoa>:

/*
 * Set buf to string representation of number in int.
 */
int itoa(char * buf, int n)
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	57                   	push   %edi
    1054:	56                   	push   %esi
    1055:	53                   	push   %ebx
    1056:	83 ec 04             	sub    $0x4,%esp
    1059:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    int i = n;
    int length = 0;

    while (i > 0) {
    105c:	83 f9 00             	cmp    $0x0,%ecx
    105f:	7e 76                	jle    10d7 <itoa+0x87>
    1061:	89 cb                	mov    %ecx,%ebx
    1063:	31 f6                	xor    %esi,%esi
        length++;
        i /= 10;
    1065:	bf 67 66 66 66       	mov    $0x66666667,%edi
    106a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1070:	89 d8                	mov    %ebx,%eax
    1072:	c1 fb 1f             	sar    $0x1f,%ebx
{
    int i = n;
    int length = 0;

    while (i > 0) {
        length++;
    1075:	83 c6 01             	add    $0x1,%esi
        i /= 10;
    1078:	f7 ef                	imul   %edi
    107a:	c1 fa 02             	sar    $0x2,%edx
int itoa(char * buf, int n)
{
    int i = n;
    int length = 0;

    while (i > 0) {
    107d:	29 da                	sub    %ebx,%edx
    107f:	89 d3                	mov    %edx,%ebx
    1081:	75 ed                	jne    1070 <itoa+0x20>
        length++;
    1083:	89 f3                	mov    %esi,%ebx
    1085:	89 75 f0             	mov    %esi,-0x10(%ebp)
    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
        buf[i - 1] = (n % 10) + '0';
    1088:	bf 67 66 66 66       	mov    $0x66666667,%edi
    108d:	8b 75 08             	mov    0x8(%ebp),%esi
    1090:	eb 0a                	jmp    109c <itoa+0x4c>
    1092:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
    1098:	85 db                	test   %ebx,%ebx
    109a:	7e 25                	jle    10c1 <itoa+0x71>
        buf[i - 1] = (n % 10) + '0';
    109c:	89 c8                	mov    %ecx,%eax
    109e:	f7 ef                	imul   %edi
    10a0:	89 c8                	mov    %ecx,%eax
    10a2:	c1 f8 1f             	sar    $0x1f,%eax
    10a5:	c1 fa 02             	sar    $0x2,%edx
    10a8:	29 c2                	sub    %eax,%edx
    10aa:	8d 04 92             	lea    (%edx,%edx,4),%eax
    10ad:	01 c0                	add    %eax,%eax
    10af:	29 c1                	sub    %eax,%ecx
    10b1:	83 c1 30             	add    $0x30,%ecx
    10b4:	88 4c 1e ff          	mov    %cl,-0x1(%esi,%ebx,1)

    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
    10b8:	83 eb 01             	sub    $0x1,%ebx
    10bb:	85 d2                	test   %edx,%edx
        buf[i - 1] = (n % 10) + '0';
        n /= 10;
    10bd:	89 d1                	mov    %edx,%ecx

    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
    10bf:	7f d7                	jg     1098 <itoa+0x48>
    10c1:	8b 75 f0             	mov    -0x10(%ebp),%esi
    10c4:	89 f0                	mov    %esi,%eax
        buf[i - 1] = (n % 10) + '0';
        n /= 10;
    }
    buf[length] = '\0';
    10c6:	8b 7d 08             	mov    0x8(%ebp),%edi
    10c9:	c6 04 07 00          	movb   $0x0,(%edi,%eax,1)
    return length;
}
    10cd:	83 c4 04             	add    $0x4,%esp
    10d0:	89 f0                	mov    %esi,%eax
    10d2:	5b                   	pop    %ebx
    10d3:	5e                   	pop    %esi
    10d4:	5f                   	pop    %edi
    10d5:	5d                   	pop    %ebp
    10d6:	c3                   	ret    
    while (i > 0) {
        length++;
        i /= 10;
    }

    if (n == 0) {
    10d7:	75 12                	jne    10eb <itoa+0x9b>
        buf[0] = '0';
    10d9:	8b 45 08             	mov    0x8(%ebp),%eax
        length++;
    10dc:	be 01 00 00 00       	mov    $0x1,%esi
        length++;
        i /= 10;
    }

    if (n == 0) {
        buf[0] = '0';
    10e1:	c6 00 30             	movb   $0x30,(%eax)
    10e4:	b8 01 00 00 00       	mov    $0x1,%eax
    10e9:	eb db                	jmp    10c6 <itoa+0x76>
    while (i > 0) {
        length++;
        i /= 10;
    }

    if (n == 0) {
    10eb:	31 c0                	xor    %eax,%eax
 * Set buf to string representation of number in int.
 */
int itoa(char * buf, int n)
{
    int i = n;
    int length = 0;
    10ed:	31 f6                	xor    %esi,%esi
    10ef:	eb d5                	jmp    10c6 <itoa+0x76>
    10f1:	eb 0d                	jmp    1100 <strcat>
    10f3:	90                   	nop
    10f4:	90                   	nop
    10f5:	90                   	nop
    10f6:	90                   	nop
    10f7:	90                   	nop
    10f8:	90                   	nop
    10f9:	90                   	nop
    10fa:	90                   	nop
    10fb:	90                   	nop
    10fc:	90                   	nop
    10fd:	90                   	nop
    10fe:	90                   	nop
    10ff:	90                   	nop

00001100 <strcat>:
    buf[length] = '\0';
    return length;
}

char* strcat(char* dest, const char* source)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	57                   	push   %edi
    1104:	56                   	push   %esi
    1105:	8b 45 08             	mov    0x8(%ebp),%eax
    1108:	53                   	push   %ebx
    1109:	8b 75 0c             	mov    0xc(%ebp),%esi
        int i, j;

        for (i = 0; dest[i] != '\0'; i++);
    110c:	80 38 00             	cmpb   $0x0,(%eax)
    110f:	74 38                	je     1149 <strcat+0x49>
    1111:	31 c9                	xor    %ecx,%ecx
    1113:	90                   	nop
    1114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1118:	83 c1 01             	add    $0x1,%ecx
    111b:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
    111f:	89 ca                	mov    %ecx,%edx
    1121:	75 f5                	jne    1118 <strcat+0x18>

        for (j = 0; source[j] != '\0'; j++)
    1123:	0f b6 1e             	movzbl (%esi),%ebx
    1126:	84 db                	test   %bl,%bl
    1128:	74 16                	je     1140 <strcat+0x40>
    112a:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
    112d:	31 d2                	xor    %edx,%edx
    112f:	90                   	nop
                dest[i + j] = source[j];
    1130:	88 1c 17             	mov    %bl,(%edi,%edx,1)
{
        int i, j;

        for (i = 0; dest[i] != '\0'; i++);

        for (j = 0; source[j] != '\0'; j++)
    1133:	83 c2 01             	add    $0x1,%edx
    1136:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
    113a:	84 db                	test   %bl,%bl
    113c:	75 f2                	jne    1130 <strcat+0x30>
    113e:	01 ca                	add    %ecx,%edx
                dest[i + j] = source[j];

        dest[i + j] = '\0';
    1140:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)

        return dest;
}
    1144:	5b                   	pop    %ebx
    1145:	5e                   	pop    %esi
    1146:	5f                   	pop    %edi
    1147:	5d                   	pop    %ebp
    1148:	c3                   	ret    

char* strcat(char* dest, const char* source)
{
        int i, j;

        for (i = 0; dest[i] != '\0'; i++);
    1149:	31 d2                	xor    %edx,%edx
    114b:	31 c9                	xor    %ecx,%ecx
    114d:	eb d4                	jmp    1123 <strcat+0x23>
    114f:	90                   	nop

00001150 <strstr>:

        return dest;
}

char * strstr(char * src, char * needle)
{
    1150:	55                   	push   %ebp
    1151:	89 e5                	mov    %esp,%ebp
    1153:	57                   	push   %edi
    1154:	56                   	push   %esi
    1155:	53                   	push   %ebx
    1156:	83 ec 10             	sub    $0x10,%esp
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    1159:	8b 45 0c             	mov    0xc(%ebp),%eax

        return dest;
}

char * strstr(char * src, char * needle)
{
    115c:	8b 7d 08             	mov    0x8(%ebp),%edi
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    115f:	0f b6 00             	movzbl (%eax),%eax
    1162:	84 c0                	test   %al,%al
    1164:	88 45 f3             	mov    %al,-0xd(%ebp)
    1167:	0f 84 a0 00 00 00    	je     120d <strstr+0xbd>
    116d:	8b 55 0c             	mov    0xc(%ebp),%edx
    1170:	31 c0                	xor    %eax,%eax
    1172:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1178:	83 c0 01             	add    $0x1,%eax
    117b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    117f:	75 f7                	jne    1178 <strstr+0x28>
    1181:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1184:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1187:	0f b6 07             	movzbl (%edi),%eax
    118a:	84 c0                	test   %al,%al
    118c:	74 68                	je     11f6 <strstr+0xa6>
    118e:	31 d2                	xor    %edx,%edx
    1190:	83 c2 01             	add    $0x1,%edx
    1193:	80 3c 17 00          	cmpb   $0x0,(%edi,%edx,1)
    1197:	75 f7                	jne    1190 <strstr+0x40>
    1199:	8d 1c 17             	lea    (%edi,%edx,1),%ebx
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    119c:	84 c0                	test   %al,%al
    119e:	89 5d ec             	mov    %ebx,-0x14(%ebp)
    11a1:	74 4d                	je     11f0 <strstr+0xa0>
    11a3:	90                   	nop
    11a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11a8:	38 45 f3             	cmp    %al,-0xd(%ebp)
    11ab:	75 34                	jne    11e1 <strstr+0x91>
    11ad:	8b 5d e8             	mov    -0x18(%ebp),%ebx
    11b0:	83 eb 01             	sub    $0x1,%ebx
    11b3:	74 4b                	je     1200 <strstr+0xb0>
    11b5:	8b 55 0c             	mov    0xc(%ebp),%edx
    11b8:	89 f8                	mov    %edi,%eax
    11ba:	eb 10                	jmp    11cc <strstr+0x7c>
    11bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11c0:	3a 4a 01             	cmp    0x1(%edx),%cl
    11c3:	75 1c                	jne    11e1 <strstr+0x91>
    11c5:	83 eb 01             	sub    $0x1,%ebx
    11c8:	89 f2                	mov    %esi,%edx
    11ca:	74 34                	je     1200 <strstr+0xb0>
    p++, q++;
    11cc:	83 c0 01             	add    $0x1,%eax
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    11cf:	0f b6 08             	movzbl (%eax),%ecx
    p++, q++;
    11d2:	8d 72 01             	lea    0x1(%edx),%esi
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    11d5:	84 c9                	test   %cl,%cl
    11d7:	75 e7                	jne    11c0 <strstr+0x70>
    11d9:	0f b6 42 01          	movzbl 0x1(%edx),%eax
  uint needle_size = strlen(needle);
  uint src_len = strlen(src);

  for(i = 0; i < src_len; i++)
  {
    if(0 == strncmp(src, needle, needle_size))
    11dd:	84 c0                	test   %al,%al
    11df:	74 1f                	je     1200 <strstr+0xb0>
    {
      return src + needle_size;
    }
    src++;
    11e1:	83 c7 01             	add    $0x1,%edi
{
  uint i = 0;
  uint needle_size = strlen(needle);
  uint src_len = strlen(src);

  for(i = 0; i < src_len; i++)
    11e4:	3b 7d ec             	cmp    -0x14(%ebp),%edi
    11e7:	74 0d                	je     11f6 <strstr+0xa6>
    11e9:	0f b6 07             	movzbl (%edi),%eax
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    11ec:	84 c0                	test   %al,%al
    11ee:	75 b8                	jne    11a8 <strstr+0x58>
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    11f0:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    11f4:	eb e7                	jmp    11dd <strstr+0x8d>
      return src + needle_size;
    }
    src++;
  }
  return 0;
}
    11f6:	83 c4 10             	add    $0x10,%esp
    {
      return src + needle_size;
    }
    src++;
  }
  return 0;
    11f9:	31 c0                	xor    %eax,%eax
}
    11fb:	5b                   	pop    %ebx
    11fc:	5e                   	pop    %esi
    11fd:	5f                   	pop    %edi
    11fe:	5d                   	pop    %ebp
    11ff:	c3                   	ret    

  for(i = 0; i < src_len; i++)
  {
    if(0 == strncmp(src, needle, needle_size))
    {
      return src + needle_size;
    1200:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    }
    src++;
  }
  return 0;
}
    1203:	83 c4 10             	add    $0x10,%esp
    1206:	5b                   	pop    %ebx
    1207:	5e                   	pop    %esi

  for(i = 0; i < src_len; i++)
  {
    if(0 == strncmp(src, needle, needle_size))
    {
      return src + needle_size;
    1208:	01 f8                	add    %edi,%eax
    }
    src++;
  }
  return 0;
}
    120a:	5f                   	pop    %edi
    120b:	5d                   	pop    %ebp
    120c:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    120d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    1214:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    121b:	e9 67 ff ff ff       	jmp    1187 <strstr+0x37>

00001220 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1220:	b8 01 00 00 00       	mov    $0x1,%eax
    1225:	cd 40                	int    $0x40
    1227:	c3                   	ret    

00001228 <exit>:
SYSCALL(exit)
    1228:	b8 02 00 00 00       	mov    $0x2,%eax
    122d:	cd 40                	int    $0x40
    122f:	c3                   	ret    

00001230 <wait>:
SYSCALL(wait)
    1230:	b8 03 00 00 00       	mov    $0x3,%eax
    1235:	cd 40                	int    $0x40
    1237:	c3                   	ret    

00001238 <pipe>:
SYSCALL(pipe)
    1238:	b8 04 00 00 00       	mov    $0x4,%eax
    123d:	cd 40                	int    $0x40
    123f:	c3                   	ret    

00001240 <read>:
SYSCALL(read)
    1240:	b8 05 00 00 00       	mov    $0x5,%eax
    1245:	cd 40                	int    $0x40
    1247:	c3                   	ret    

00001248 <write>:
SYSCALL(write)
    1248:	b8 10 00 00 00       	mov    $0x10,%eax
    124d:	cd 40                	int    $0x40
    124f:	c3                   	ret    

00001250 <close>:
SYSCALL(close)
    1250:	b8 15 00 00 00       	mov    $0x15,%eax
    1255:	cd 40                	int    $0x40
    1257:	c3                   	ret    

00001258 <kill>:
SYSCALL(kill)
    1258:	b8 06 00 00 00       	mov    $0x6,%eax
    125d:	cd 40                	int    $0x40
    125f:	c3                   	ret    

00001260 <exec>:
SYSCALL(exec)
    1260:	b8 07 00 00 00       	mov    $0x7,%eax
    1265:	cd 40                	int    $0x40
    1267:	c3                   	ret    

00001268 <open>:
SYSCALL(open)
    1268:	b8 0f 00 00 00       	mov    $0xf,%eax
    126d:	cd 40                	int    $0x40
    126f:	c3                   	ret    

00001270 <mknod>:
SYSCALL(mknod)
    1270:	b8 11 00 00 00       	mov    $0x11,%eax
    1275:	cd 40                	int    $0x40
    1277:	c3                   	ret    

00001278 <unlink>:
SYSCALL(unlink)
    1278:	b8 12 00 00 00       	mov    $0x12,%eax
    127d:	cd 40                	int    $0x40
    127f:	c3                   	ret    

00001280 <fstat>:
SYSCALL(fstat)
    1280:	b8 08 00 00 00       	mov    $0x8,%eax
    1285:	cd 40                	int    $0x40
    1287:	c3                   	ret    

00001288 <link>:
SYSCALL(link)
    1288:	b8 13 00 00 00       	mov    $0x13,%eax
    128d:	cd 40                	int    $0x40
    128f:	c3                   	ret    

00001290 <mkdir>:
SYSCALL(mkdir)
    1290:	b8 14 00 00 00       	mov    $0x14,%eax
    1295:	cd 40                	int    $0x40
    1297:	c3                   	ret    

00001298 <chdir>:
SYSCALL(chdir)
    1298:	b8 09 00 00 00       	mov    $0x9,%eax
    129d:	cd 40                	int    $0x40
    129f:	c3                   	ret    

000012a0 <dup>:
SYSCALL(dup)
    12a0:	b8 0a 00 00 00       	mov    $0xa,%eax
    12a5:	cd 40                	int    $0x40
    12a7:	c3                   	ret    

000012a8 <getpid>:
SYSCALL(getpid)
    12a8:	b8 0b 00 00 00       	mov    $0xb,%eax
    12ad:	cd 40                	int    $0x40
    12af:	c3                   	ret    

000012b0 <sbrk>:
SYSCALL(sbrk)
    12b0:	b8 0c 00 00 00       	mov    $0xc,%eax
    12b5:	cd 40                	int    $0x40
    12b7:	c3                   	ret    

000012b8 <sleep>:
SYSCALL(sleep)
    12b8:	b8 0d 00 00 00       	mov    $0xd,%eax
    12bd:	cd 40                	int    $0x40
    12bf:	c3                   	ret    

000012c0 <uptime>:
SYSCALL(uptime)
    12c0:	b8 0e 00 00 00       	mov    $0xe,%eax
    12c5:	cd 40                	int    $0x40
    12c7:	c3                   	ret    

000012c8 <mount>:
SYSCALL(mount)
    12c8:	b8 16 00 00 00       	mov    $0x16,%eax
    12cd:	cd 40                	int    $0x40
    12cf:	c3                   	ret    

000012d0 <umount>:
SYSCALL(umount)
    12d0:	b8 17 00 00 00       	mov    $0x17,%eax
    12d5:	cd 40                	int    $0x40
    12d7:	c3                   	ret    

000012d8 <printmounts>:
SYSCALL(printmounts)
    12d8:	b8 18 00 00 00       	mov    $0x18,%eax
    12dd:	cd 40                	int    $0x40
    12df:	c3                   	ret    

000012e0 <printdevices>:
SYSCALL(printdevices)
    12e0:	b8 19 00 00 00       	mov    $0x19,%eax
    12e5:	cd 40                	int    $0x40
    12e7:	c3                   	ret    

000012e8 <unshare>:
SYSCALL(unshare)
    12e8:	b8 1a 00 00 00       	mov    $0x1a,%eax
    12ed:	cd 40                	int    $0x40
    12ef:	c3                   	ret    

000012f0 <usleep>:
SYSCALL(usleep)
    12f0:	b8 1b 00 00 00       	mov    $0x1b,%eax
    12f5:	cd 40                	int    $0x40
    12f7:	c3                   	ret    

000012f8 <ioctl>:
SYSCALL(ioctl)
    12f8:	b8 1c 00 00 00       	mov    $0x1c,%eax
    12fd:	cd 40                	int    $0x40
    12ff:	c3                   	ret    

00001300 <getppid>:
SYSCALL(getppid)
    1300:	b8 1d 00 00 00       	mov    $0x1d,%eax
    1305:	cd 40                	int    $0x40
    1307:	c3                   	ret    

00001308 <getcpu>:
SYSCALL(getcpu)
    1308:	b8 1e 00 00 00       	mov    $0x1e,%eax
    130d:	cd 40                	int    $0x40
    130f:	c3                   	ret    

00001310 <getmem>:
SYSCALL(getmem)
    1310:	b8 1f 00 00 00       	mov    $0x1f,%eax
    1315:	cd 40                	int    $0x40
    1317:	c3                   	ret    

00001318 <kmemtest>:
SYSCALL(kmemtest)
    1318:	b8 20 00 00 00       	mov    $0x20,%eax
    131d:	cd 40                	int    $0x40
    131f:	c3                   	ret    

00001320 <printint>:
  return write(fd, &c, 1);
}

static int
printint(int fd, int xx, int base, int sgn)
{
    1320:	55                   	push   %ebp
    1321:	89 e5                	mov    %esp,%ebp
    1323:	57                   	push   %edi
    1324:	56                   	push   %esi
    1325:	53                   	push   %ebx
    1326:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1329:	8b 5d 08             	mov    0x8(%ebp),%ebx
  return write(fd, &c, 1);
}

static int
printint(int fd, int xx, int base, int sgn)
{
    132c:	89 45 c0             	mov    %eax,-0x40(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    132f:	85 db                	test   %ebx,%ebx
    1331:	0f 84 91 00 00 00    	je     13c8 <printint+0xa8>
    1337:	89 d0                	mov    %edx,%eax
    1339:	c1 e8 1f             	shr    $0x1f,%eax
    133c:	84 c0                	test   %al,%al
    133e:	0f 84 84 00 00 00    	je     13c8 <printint+0xa8>
    neg = 1;
    x = -xx;
    1344:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    1346:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    134d:	f7 d8                	neg    %eax
  } else {
    x = xx;
  }

  i = 0;
    134f:	31 ff                	xor    %edi,%edi
    1351:	8d 75 c7             	lea    -0x39(%ebp),%esi
    1354:	eb 0c                	jmp    1362 <printint+0x42>
    1356:	8d 76 00             	lea    0x0(%esi),%esi
    1359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  do{
    buf[i++] = digits[x % base];
    1360:	89 df                	mov    %ebx,%edi
    1362:	31 d2                	xor    %edx,%edx
    1364:	8d 5f 01             	lea    0x1(%edi),%ebx
    1367:	f7 f1                	div    %ecx
    1369:	0f b6 92 70 1f 00 00 	movzbl 0x1f70(%edx),%edx
  }while((x /= base) != 0);
    1370:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    1372:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    1375:	75 e9                	jne    1360 <printint+0x40>
  if(neg)
    1377:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    137a:	85 c0                	test   %eax,%eax
    137c:	74 08                	je     1386 <printint+0x66>
    buf[i++] = '-';
    137e:	c6 44 1d c8 2d       	movb   $0x2d,-0x38(%ebp,%ebx,1)
    1383:	8d 5f 02             	lea    0x2(%edi),%ebx
    1386:	8d 7d d8             	lea    -0x28(%ebp),%edi
    1389:	8d 44 1d c7          	lea    -0x39(%ebp,%ebx,1),%eax
    138d:	89 fa                	mov    %edi,%edx
    138f:	90                   	nop

  char str[16];
  int j = 0;
  while(--i >= 0) {
      str[j++] = buf[i];
    1390:	0f b6 08             	movzbl (%eax),%ecx
    1393:	83 e8 01             	sub    $0x1,%eax
    1396:	83 c2 01             	add    $0x1,%edx
    1399:	88 4a ff             	mov    %cl,-0x1(%edx)
  if(neg)
    buf[i++] = '-';

  char str[16];
  int j = 0;
  while(--i >= 0) {
    139c:	39 f0                	cmp    %esi,%eax
    139e:	75 f0                	jne    1390 <printint+0x70>
      str[j++] = buf[i];
  }
  str[j] = '\0';
  
  return write(fd, str, strlen(str));
    13a0:	83 ec 0c             	sub    $0xc,%esp
  char str[16];
  int j = 0;
  while(--i >= 0) {
      str[j++] = buf[i];
  }
  str[j] = '\0';
    13a3:	c6 44 1d d8 00       	movb   $0x0,-0x28(%ebp,%ebx,1)
  
  return write(fd, str, strlen(str));
    13a8:	57                   	push   %edi
    13a9:	e8 f2 fa ff ff       	call   ea0 <strlen>
    13ae:	83 c4 0c             	add    $0xc,%esp
    13b1:	50                   	push   %eax
    13b2:	57                   	push   %edi
    13b3:	ff 75 c0             	pushl  -0x40(%ebp)
    13b6:	e8 8d fe ff ff       	call   1248 <write>
}
    13bb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13be:	5b                   	pop    %ebx
    13bf:	5e                   	pop    %esi
    13c0:	5f                   	pop    %edi
    13c1:	5d                   	pop    %ebp
    13c2:	c3                   	ret    
    13c3:	90                   	nop
    13c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    13c8:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    13ca:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    13d1:	e9 79 ff ff ff       	jmp    134f <printint+0x2f>
    13d6:	8d 76 00             	lea    0x0(%esi),%esi
    13d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000013e0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
int
printf(int fd, const char *fmt, ...)
{
    13e0:	55                   	push   %ebp
    13e1:	89 e5                	mov    %esp,%ebp
    13e3:	57                   	push   %edi
    13e4:	56                   	push   %esi
    13e5:	53                   	push   %ebx
    13e6:	83 ec 2c             	sub    $0x2c,%esp
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13e9:	8b 75 0c             	mov    0xc(%ebp),%esi
    13ec:	0f b6 06             	movzbl (%esi),%eax
    13ef:	84 c0                	test   %al,%al
    13f1:	0f 84 90 01 00 00    	je     1587 <printf+0x1a7>
    13f7:	8d 5d 10             	lea    0x10(%ebp),%ebx
    13fa:	31 ff                	xor    %edi,%edi
    13fc:	31 d2                	xor    %edx,%edx
    13fe:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    1401:	31 db                	xor    %ebx,%ebx
    1403:	eb 39                	jmp    143e <printf+0x5e>
    1405:	8d 76 00             	lea    0x0(%esi),%esi
    num_chars = 0;
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1408:	83 f9 25             	cmp    $0x25,%ecx
    140b:	0f 84 af 00 00 00    	je     14c0 <printf+0xe0>
    1411:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    1414:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    1417:	83 ec 04             	sub    $0x4,%esp
    141a:	6a 01                	push   $0x1
    141c:	50                   	push   %eax
    141d:	ff 75 08             	pushl  0x8(%ebp)
    1420:	e8 23 fe ff ff       	call   1248 <write>
    1425:	83 c4 10             	add    $0x10,%esp
        // Unknown % sequence.  Print it to draw attention.
        num_chars = printunknown(fd, c);
      }
      state = 0;
    }
    if (num_chars < 0) {
    1428:	85 c0                	test   %eax,%eax
    142a:	78 35                	js     1461 <printf+0x81>
    142c:	8b 75 0c             	mov    0xc(%ebp),%esi
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    142f:	83 c3 01             	add    $0x1,%ebx
      state = 0;
    }
    if (num_chars < 0) {
      return num_chars;
    }
    retval += num_chars;
    1432:	01 c7                	add    %eax,%edi
    1434:	31 d2                	xor    %edx,%edx
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1436:	0f b6 04 1e          	movzbl (%esi,%ebx,1),%eax
    143a:	84 c0                	test   %al,%al
    143c:	74 21                	je     145f <printf+0x7f>
    num_chars = 0;
    c = fmt[i] & 0xff;
    143e:	0f be c8             	movsbl %al,%ecx
    if(state == 0){
    1441:	85 d2                	test   %edx,%edx

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    num_chars = 0;
    c = fmt[i] & 0xff;
    1443:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    1446:	0f b6 c8             	movzbl %al,%ecx
    if(state == 0){
    1449:	74 bd                	je     1408 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        num_chars = putc(fd, c);
      }
    } else if(state == '%'){
    144b:	83 fa 25             	cmp    $0x25,%edx
    144e:	74 20                	je     1470 <printf+0x90>
    1450:	31 c0                	xor    %eax,%eax
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1452:	83 c3 01             	add    $0x1,%ebx
      state = 0;
    }
    if (num_chars < 0) {
      return num_chars;
    }
    retval += num_chars;
    1455:	01 c7                	add    %eax,%edi
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1457:	0f b6 04 1e          	movzbl (%esi,%ebx,1),%eax
    145b:	84 c0                	test   %al,%al
    145d:	75 df                	jne    143e <printf+0x5e>
      state = 0;
    }
    if (num_chars < 0) {
      return num_chars;
    }
    retval += num_chars;
    145f:	89 f8                	mov    %edi,%eax
  }
  return retval;
}
    1461:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1464:	5b                   	pop    %ebx
    1465:	5e                   	pop    %esi
    1466:	5f                   	pop    %edi
    1467:	5d                   	pop    %ebp
    1468:	c3                   	ret    
    1469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        state = '%';
      } else {
        num_chars = putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    1470:	83 f9 64             	cmp    $0x64,%ecx
    1473:	0f 84 7f 00 00 00    	je     14f8 <printf+0x118>
        num_chars = printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1479:	0f be d0             	movsbl %al,%edx
    147c:	81 e2 f7 00 00 00    	and    $0xf7,%edx
    1482:	83 fa 70             	cmp    $0x70,%edx
    1485:	74 49                	je     14d0 <printf+0xf0>
        num_chars = printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1487:	83 f9 73             	cmp    $0x73,%ecx
    148a:	0f 84 98 00 00 00    	je     1528 <printf+0x148>
        s = (char*)*ap;
        ap++;
        num_chars = printstr(fd, s);
      } else if(c == 'c'){
    1490:	83 f9 63             	cmp    $0x63,%ecx
    1493:	0f 84 c7 00 00 00    	je     1560 <printf+0x180>
        num_chars = putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1499:	83 f9 25             	cmp    $0x25,%ecx
    149c:	74 6a                	je     1508 <printf+0x128>
static int
printunknown(int fd, char c)
{
    char str[2];
    str[0] = '%';
    str[1] = c;
    149e:	88 45 e7             	mov    %al,-0x19(%ebp)
 
    return write(fd, str, 2);
    14a1:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    14a4:	83 ec 04             	sub    $0x4,%esp
    14a7:	6a 02                	push   $0x2

static int
printunknown(int fd, char c)
{
    char str[2];
    str[0] = '%';
    14a9:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    str[1] = c;
 
    return write(fd, str, 2);
    14ad:	50                   	push   %eax
    14ae:	ff 75 08             	pushl  0x8(%ebp)
    14b1:	e8 92 fd ff ff       	call   1248 <write>
    14b6:	83 c4 10             	add    $0x10,%esp
    14b9:	e9 6a ff ff ff       	jmp    1428 <printf+0x48>
    14be:	66 90                	xchg   %ax,%ax
  for(i = 0; fmt[i]; i++){
    num_chars = 0;
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    14c0:	ba 25 00 00 00       	mov    $0x25,%edx
    14c5:	31 c0                	xor    %eax,%eax
    14c7:	eb 89                	jmp    1452 <printf+0x72>
    14c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        num_chars = printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        num_chars = printint(fd, *ap, 16, 0);
    14d0:	83 ec 0c             	sub    $0xc,%esp
    14d3:	b9 10 00 00 00       	mov    $0x10,%ecx
    14d8:	6a 00                	push   $0x0
    14da:	8b 75 d0             	mov    -0x30(%ebp),%esi
    14dd:	8b 45 08             	mov    0x8(%ebp),%eax
    14e0:	8b 16                	mov    (%esi),%edx
        ap++;
    14e2:	83 c6 04             	add    $0x4,%esi
    } else if(state == '%'){
      if(c == 'd'){
        num_chars = printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        num_chars = printint(fd, *ap, 16, 0);
    14e5:	e8 36 fe ff ff       	call   1320 <printint>
        ap++;
    14ea:	89 75 d0             	mov    %esi,-0x30(%ebp)
    14ed:	83 c4 10             	add    $0x10,%esp
    14f0:	e9 33 ff ff ff       	jmp    1428 <printf+0x48>
    14f5:	8d 76 00             	lea    0x0(%esi),%esi
      } else {
        num_chars = putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        num_chars = printint(fd, *ap, 10, 1);
    14f8:	83 ec 0c             	sub    $0xc,%esp
    14fb:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1500:	6a 01                	push   $0x1
    1502:	eb d6                	jmp    14da <printf+0xfa>
    1504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1508:	88 45 e5             	mov    %al,-0x1b(%ebp)
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    150b:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    150e:	83 ec 04             	sub    $0x4,%esp
    1511:	6a 01                	push   $0x1
    1513:	50                   	push   %eax
    1514:	ff 75 08             	pushl  0x8(%ebp)
    1517:	e8 2c fd ff ff       	call   1248 <write>
    151c:	83 c4 10             	add    $0x10,%esp
    151f:	e9 04 ff ff ff       	jmp    1428 <printf+0x48>
    1524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        ap++;
      } else if(c == 'x' || c == 'p'){
        num_chars = printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    1528:	8b 45 d0             	mov    -0x30(%ebp),%eax
    152b:	8b 30                	mov    (%eax),%esi
        ap++;
    152d:	83 c0 04             	add    $0x4,%eax
    1530:	89 45 d0             	mov    %eax,-0x30(%ebp)
static int
printstr(int fd, char *str)
{

  if (str == 0)
    str = "(null)";
    1533:	b8 68 1f 00 00       	mov    $0x1f68,%eax
    1538:	85 f6                	test   %esi,%esi
    153a:	0f 44 f0             	cmove  %eax,%esi

  return write(fd , str, strlen(str));
    153d:	83 ec 0c             	sub    $0xc,%esp
    1540:	56                   	push   %esi
    1541:	e8 5a f9 ff ff       	call   ea0 <strlen>
    1546:	83 c4 0c             	add    $0xc,%esp
    1549:	50                   	push   %eax
    154a:	56                   	push   %esi
    154b:	ff 75 08             	pushl  0x8(%ebp)
    154e:	e8 f5 fc ff ff       	call   1248 <write>
    1553:	83 c4 10             	add    $0x10,%esp
    1556:	e9 cd fe ff ff       	jmp    1428 <printf+0x48>
    155b:	90                   	nop
    155c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1560:	8b 75 d0             	mov    -0x30(%ebp),%esi
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    1563:	83 ec 04             	sub    $0x4,%esp
    1566:	8b 06                	mov    (%esi),%eax
    1568:	6a 01                	push   $0x1
        s = (char*)*ap;
        ap++;
        num_chars = printstr(fd, s);
      } else if(c == 'c'){
        num_chars = putc(fd, *ap);
        ap++;
    156a:	83 c6 04             	add    $0x4,%esi
    156d:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    1570:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1573:	50                   	push   %eax
    1574:	ff 75 08             	pushl  0x8(%ebp)
    1577:	e8 cc fc ff ff       	call   1248 <write>
        s = (char*)*ap;
        ap++;
        num_chars = printstr(fd, s);
      } else if(c == 'c'){
        num_chars = putc(fd, *ap);
        ap++;
    157c:	89 75 d0             	mov    %esi,-0x30(%ebp)
    157f:	83 c4 10             	add    $0x10,%esp
    1582:	e9 a1 fe ff ff       	jmp    1428 <printf+0x48>
{
  char *s;
  int c, i, state;
  uint *ap;
  int num_chars = 0;
  int retval = 0;
    1587:	31 c0                	xor    %eax,%eax
    1589:	e9 d3 fe ff ff       	jmp    1461 <printf+0x81>
    158e:	66 90                	xchg   %ax,%ax

00001590 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1590:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1591:	a1 04 40 00 00       	mov    0x4004,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1596:	89 e5                	mov    %esp,%ebp
    1598:	57                   	push   %edi
    1599:	56                   	push   %esi
    159a:	53                   	push   %ebx
    159b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    159e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    15a0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15a3:	39 c8                	cmp    %ecx,%eax
    15a5:	73 19                	jae    15c0 <free+0x30>
    15a7:	89 f6                	mov    %esi,%esi
    15a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    15b0:	39 d1                	cmp    %edx,%ecx
    15b2:	72 1c                	jb     15d0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15b4:	39 d0                	cmp    %edx,%eax
    15b6:	73 18                	jae    15d0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    15b8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15ba:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15bc:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15be:	72 f0                	jb     15b0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15c0:	39 d0                	cmp    %edx,%eax
    15c2:	72 f4                	jb     15b8 <free+0x28>
    15c4:	39 d1                	cmp    %edx,%ecx
    15c6:	73 f0                	jae    15b8 <free+0x28>
    15c8:	90                   	nop
    15c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    15d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    15d3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    15d6:	39 d7                	cmp    %edx,%edi
    15d8:	74 19                	je     15f3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    15da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15dd:	8b 50 04             	mov    0x4(%eax),%edx
    15e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15e3:	39 f1                	cmp    %esi,%ecx
    15e5:	74 23                	je     160a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    15e7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    15e9:	a3 04 40 00 00       	mov    %eax,0x4004
}
    15ee:	5b                   	pop    %ebx
    15ef:	5e                   	pop    %esi
    15f0:	5f                   	pop    %edi
    15f1:	5d                   	pop    %ebp
    15f2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    15f3:	03 72 04             	add    0x4(%edx),%esi
    15f6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    15f9:	8b 10                	mov    (%eax),%edx
    15fb:	8b 12                	mov    (%edx),%edx
    15fd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1600:	8b 50 04             	mov    0x4(%eax),%edx
    1603:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1606:	39 f1                	cmp    %esi,%ecx
    1608:	75 dd                	jne    15e7 <free+0x57>
    p->s.size += bp->s.size;
    160a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    160d:	a3 04 40 00 00       	mov    %eax,0x4004
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    1612:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1615:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1618:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    161a:	5b                   	pop    %ebx
    161b:	5e                   	pop    %esi
    161c:	5f                   	pop    %edi
    161d:	5d                   	pop    %ebp
    161e:	c3                   	ret    
    161f:	90                   	nop

00001620 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1620:	55                   	push   %ebp
    1621:	89 e5                	mov    %esp,%ebp
    1623:	57                   	push   %edi
    1624:	56                   	push   %esi
    1625:	53                   	push   %ebx
    1626:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1629:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    162c:	8b 15 04 40 00 00    	mov    0x4004,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1632:	8d 78 07             	lea    0x7(%eax),%edi
    1635:	c1 ef 03             	shr    $0x3,%edi
    1638:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    163b:	85 d2                	test   %edx,%edx
    163d:	0f 84 a3 00 00 00    	je     16e6 <malloc+0xc6>
    1643:	8b 02                	mov    (%edx),%eax
    1645:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1648:	39 cf                	cmp    %ecx,%edi
    164a:	76 74                	jbe    16c0 <malloc+0xa0>
    164c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1652:	be 00 10 00 00       	mov    $0x1000,%esi
    1657:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    165e:	0f 43 f7             	cmovae %edi,%esi
    1661:	ba 00 80 00 00       	mov    $0x8000,%edx
    1666:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    166c:	0f 46 da             	cmovbe %edx,%ebx
    166f:	eb 10                	jmp    1681 <malloc+0x61>
    1671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1678:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    167a:	8b 48 04             	mov    0x4(%eax),%ecx
    167d:	39 cf                	cmp    %ecx,%edi
    167f:	76 3f                	jbe    16c0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1681:	39 05 04 40 00 00    	cmp    %eax,0x4004
    1687:	89 c2                	mov    %eax,%edx
    1689:	75 ed                	jne    1678 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    168b:	83 ec 0c             	sub    $0xc,%esp
    168e:	53                   	push   %ebx
    168f:	e8 1c fc ff ff       	call   12b0 <sbrk>
  if(p == (char*)-1)
    1694:	83 c4 10             	add    $0x10,%esp
    1697:	83 f8 ff             	cmp    $0xffffffff,%eax
    169a:	74 1c                	je     16b8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    169c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    169f:	83 ec 0c             	sub    $0xc,%esp
    16a2:	83 c0 08             	add    $0x8,%eax
    16a5:	50                   	push   %eax
    16a6:	e8 e5 fe ff ff       	call   1590 <free>
  return freep;
    16ab:	8b 15 04 40 00 00    	mov    0x4004,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    16b1:	83 c4 10             	add    $0x10,%esp
    16b4:	85 d2                	test   %edx,%edx
    16b6:	75 c0                	jne    1678 <malloc+0x58>
        return 0;
    16b8:	31 c0                	xor    %eax,%eax
    16ba:	eb 1c                	jmp    16d8 <malloc+0xb8>
    16bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    16c0:	39 cf                	cmp    %ecx,%edi
    16c2:	74 1c                	je     16e0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    16c4:	29 f9                	sub    %edi,%ecx
    16c6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    16c9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    16cc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    16cf:	89 15 04 40 00 00    	mov    %edx,0x4004
      return (void*)(p + 1);
    16d5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    16d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    16db:	5b                   	pop    %ebx
    16dc:	5e                   	pop    %esi
    16dd:	5f                   	pop    %edi
    16de:	5d                   	pop    %ebp
    16df:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    16e0:	8b 08                	mov    (%eax),%ecx
    16e2:	89 0a                	mov    %ecx,(%edx)
    16e4:	eb e9                	jmp    16cf <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    16e6:	c7 05 04 40 00 00 08 	movl   $0x4008,0x4004
    16ed:	40 00 00 
    16f0:	c7 05 08 40 00 00 08 	movl   $0x4008,0x4008
    16f7:	40 00 00 
    base.s.size = 0;
    16fa:	b8 08 40 00 00       	mov    $0x4008,%eax
    16ff:	c7 05 0c 40 00 00 00 	movl   $0x0,0x400c
    1706:	00 00 00 
    1709:	e9 3e ff ff ff       	jmp    164c <malloc+0x2c>
    170e:	66 90                	xchg   %ax,%ax

00001710 <is_attached_tty>:
#include "fcntl.h"
#include "user.h"
#include "x86.h"

int
is_attached_tty(int tty_fd){
    1710:	55                   	push   %ebp
    1711:	89 e5                	mov    %esp,%ebp
    1713:	83 ec 0c             	sub    $0xc,%esp
    return ioctl(tty_fd, TTYGETS, DEV_ATTACH);
    1716:	6a 10                	push   $0x10
    1718:	6a 02                	push   $0x2
    171a:	ff 75 08             	pushl  0x8(%ebp)
    171d:	e8 d6 fb ff ff       	call   12f8 <ioctl>
}
    1722:	c9                   	leave  
    1723:	c3                   	ret    
    1724:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    172a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001730 <is_connected_tty>:

int
is_connected_tty(int tty_fd){
    1730:	55                   	push   %ebp
    1731:	89 e5                	mov    %esp,%ebp
    1733:	83 ec 0c             	sub    $0xc,%esp
    return ioctl(tty_fd, TTYGETS, DEV_CONNECT);
    1736:	68 00 10 00 00       	push   $0x1000
    173b:	6a 02                	push   $0x2
    173d:	ff 75 08             	pushl  0x8(%ebp)
    1740:	e8 b3 fb ff ff       	call   12f8 <ioctl>
}
    1745:	c9                   	leave  
    1746:	c3                   	ret    
    1747:	89 f6                	mov    %esi,%esi
    1749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001750 <attach_tty>:

int
attach_tty(int tty_fd)
{
    1750:	55                   	push   %ebp
    1751:	89 e5                	mov    %esp,%ebp
    1753:	53                   	push   %ebx
    1754:	83 ec 08             	sub    $0x8,%esp
    1757:	8b 5d 08             	mov    0x8(%ebp),%ebx
   if(ioctl(tty_fd, TTYSETS, DEV_ATTACH) < 0)
    175a:	6a 10                	push   $0x10
    175c:	6a 01                	push   $0x1
    175e:	53                   	push   %ebx
    175f:	e8 94 fb ff ff       	call   12f8 <ioctl>
    1764:	83 c4 10             	add    $0x10,%esp
    1767:	85 c0                	test   %eax,%eax
    1769:	78 55                	js     17c0 <attach_tty+0x70>
     return -1;

    close(0);
    176b:	83 ec 0c             	sub    $0xc,%esp
    176e:	6a 00                	push   $0x0
    1770:	e8 db fa ff ff       	call   1250 <close>
    close(1);
    1775:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    177c:	e8 cf fa ff ff       	call   1250 <close>
    close(2);
    1781:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    1788:	e8 c3 fa ff ff       	call   1250 <close>
    if(dup(tty_fd) < 0)
    178d:	89 1c 24             	mov    %ebx,(%esp)
    1790:	e8 0b fb ff ff       	call   12a0 <dup>
    1795:	83 c4 10             	add    $0x10,%esp
    1798:	85 c0                	test   %eax,%eax
    179a:	78 24                	js     17c0 <attach_tty+0x70>
      return -1;

    if(dup(tty_fd) < 0)
    179c:	83 ec 0c             	sub    $0xc,%esp
    179f:	53                   	push   %ebx
    17a0:	e8 fb fa ff ff       	call   12a0 <dup>
    17a5:	83 c4 10             	add    $0x10,%esp
    17a8:	85 c0                	test   %eax,%eax
    17aa:	78 14                	js     17c0 <attach_tty+0x70>
      return -1;

    if(dup(tty_fd) < 0)
    17ac:	83 ec 0c             	sub    $0xc,%esp
    17af:	53                   	push   %ebx
    17b0:	e8 eb fa ff ff       	call   12a0 <dup>
    17b5:	83 c4 10             	add    $0x10,%esp
    17b8:	c1 f8 1f             	sar    $0x1f,%eax
      return -1;

     return 0;
}
    17bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    17be:	c9                   	leave  
    17bf:	c3                   	ret    

int
attach_tty(int tty_fd)
{
   if(ioctl(tty_fd, TTYSETS, DEV_ATTACH) < 0)
     return -1;
    17c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax

    if(dup(tty_fd) < 0)
      return -1;

     return 0;
}
    17c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    17c8:	c9                   	leave  
    17c9:	c3                   	ret    
    17ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000017d0 <detach_tty>:

int
detach_tty(int tty_fd)
{
    17d0:	55                   	push   %ebp
    17d1:	89 e5                	mov    %esp,%ebp
    17d3:	83 ec 0c             	sub    $0xc,%esp
    ioctl(tty_fd, TTYSETS, DEV_DETACH);
    17d6:	6a 20                	push   $0x20
    17d8:	6a 01                	push   $0x1
    17da:	ff 75 08             	pushl  0x8(%ebp)
    17dd:	e8 16 fb ff ff       	call   12f8 <ioctl>
    return 0;
}
    17e2:	31 c0                	xor    %eax,%eax
    17e4:	c9                   	leave  
    17e5:	c3                   	ret    
    17e6:	8d 76 00             	lea    0x0(%esi),%esi
    17e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000017f0 <connect_tty>:


int
connect_tty(int tty_fd)
{
    17f0:	55                   	push   %ebp
    17f1:	89 e5                	mov    %esp,%ebp
    17f3:	53                   	push   %ebx
    17f4:	83 ec 08             	sub    $0x8,%esp
    17f7:	8b 5d 08             	mov    0x8(%ebp),%ebx
#include "user.h"
#include "x86.h"

int
is_attached_tty(int tty_fd){
    return ioctl(tty_fd, TTYGETS, DEV_ATTACH);
    17fa:	6a 10                	push   $0x10
    17fc:	6a 02                	push   $0x2
    17fe:	53                   	push   %ebx
    17ff:	e8 f4 fa ff ff       	call   12f8 <ioctl>


int
connect_tty(int tty_fd)
{
    if(!is_attached_tty(tty_fd)){
    1804:	83 c4 10             	add    $0x10,%esp
    1807:	85 c0                	test   %eax,%eax
    1809:	74 1d                	je     1828 <connect_tty+0x38>
      close(tty_fd);
       return -1;
     }

     ioctl(tty_fd, TTYSETS, DEV_CONNECT);
    180b:	83 ec 04             	sub    $0x4,%esp
    180e:	68 00 10 00 00       	push   $0x1000
    1813:	6a 01                	push   $0x1
    1815:	53                   	push   %ebx
    1816:	e8 dd fa ff ff       	call   12f8 <ioctl>
     return tty_fd;
    181b:	83 c4 10             	add    $0x10,%esp
    181e:	89 d8                	mov    %ebx,%eax
}
    1820:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1823:	c9                   	leave  
    1824:	c3                   	ret    
    1825:	8d 76 00             	lea    0x0(%esi),%esi

int
connect_tty(int tty_fd)
{
    if(!is_attached_tty(tty_fd)){
      close(tty_fd);
    1828:	83 ec 0c             	sub    $0xc,%esp
    182b:	53                   	push   %ebx
    182c:	e8 1f fa ff ff       	call   1250 <close>
       return -1;
    1831:	83 c4 10             	add    $0x10,%esp
    1834:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1839:	eb e5                	jmp    1820 <connect_tty+0x30>
    183b:	90                   	nop
    183c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001840 <disconnect_tty>:
     return tty_fd;
}

int
disconnect_tty(int tty_fd)
{
    1840:	55                   	push   %ebp
    1841:	89 e5                	mov    %esp,%ebp
    1843:	83 ec 0c             	sub    $0xc,%esp
    return ioctl(tty_fd, TTYSETS, DEV_DISCONNECT);
    1846:	68 00 20 00 00       	push   $0x2000
    184b:	6a 01                	push   $0x1
    184d:	ff 75 08             	pushl  0x8(%ebp)
    1850:	e8 a3 fa ff ff       	call   12f8 <ioctl>
}
    1855:	c9                   	leave  
    1856:	c3                   	ret    
