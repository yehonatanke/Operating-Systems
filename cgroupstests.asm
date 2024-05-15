
_cgroupstests:     file format elf32-i386


Disassembly of section .text:

00000000 <test_kernel_freem_mem.part.23>:
    ASSERT_UINT_EQ(file_dirty_aggregated, 0);
    ASSERT_UINT_EQ(pgfault, 0);
    ASSERT_UINT_EQ(pgmajfault, 0);
}

TEST(test_kernel_freem_mem)
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	57                   	push   %edi
       4:	56                   	push   %esi
       5:	53                   	push   %ebx
       6:	89 c6                	mov    %eax,%esi
       8:	31 db                	xor    %ebx,%ebx
       a:	83 ec 0c             	sub    $0xc,%esp
       d:	eb 16                	jmp    25 <test_kernel_freem_mem.part.23+0x25>
       f:	90                   	nop
{
  ASSERT_FALSE(kmemtest());
      10:	83 ec 08             	sub    $0x8,%esp
      13:	83 c3 01             	add    $0x1,%ebx
      16:	68 18 c8 00 00       	push   $0xc818
      1b:	6a 01                	push   $0x1
      1d:	e8 7e c3 00 00       	call   c3a0 <printf>
      22:	83 c4 10             	add    $0x10,%esp
      25:	83 ec 0c             	sub    $0xc,%esp
      28:	68 1a c8 00 00       	push   $0xc81a
      2d:	e8 2e be 00 00       	call   be60 <strlen>
      32:	89 c7                	mov    %eax,%edi
      34:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
      3b:	e8 20 be 00 00       	call   be60 <strlen>
      40:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
      44:	83 c4 10             	add    $0x10,%esp
      47:	39 d8                	cmp    %ebx,%eax
      49:	77 c5                	ja     10 <test_kernel_freem_mem.part.23+0x10>
      4b:	83 ec 0c             	sub    $0xc,%esp
      4e:	68 15 05 00 00       	push   $0x515
      53:	68 30 c8 00 00       	push   $0xc830
      58:	56                   	push   %esi
      59:	68 34 d3 00 00       	push   $0xd334
      5e:	6a 01                	push   $0x1
      60:	e8 3b c3 00 00       	call   c3a0 <printf>
      65:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
      6c:	00 00 00 
      6f:	83 c4 20             	add    $0x20,%esp
}
      72:	8d 65 f4             	lea    -0xc(%ebp),%esp
      75:	5b                   	pop    %ebx
      76:	5e                   	pop    %esi
      77:	5f                   	pop    %edi
      78:	5d                   	pop    %ebp
      79:	c3                   	ret    
      7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000080 <print_error>:
#include "user.h"

#define REMOVE_2_ADDITIONAL_CHARS 2

void print_error(const char* name, unsigned long int x, unsigned long int y,
                 const char* file, int line) {
      80:	55                   	push   %ebp
      81:	89 e5                	mov    %esp,%ebp
      83:	57                   	push   %edi
      84:	56                   	push   %esi
      85:	53                   	push   %ebx
    for (int i = 0; i < strlen(name) + strlen("[RUNNING] ") + REMOVE_2_ADDITIONAL_CHARS; i++)
      86:	31 db                	xor    %ebx,%ebx
#include "user.h"

#define REMOVE_2_ADDITIONAL_CHARS 2

void print_error(const char* name, unsigned long int x, unsigned long int y,
                 const char* file, int line) {
      88:	83 ec 0c             	sub    $0xc,%esp
      8b:	8b 75 08             	mov    0x8(%ebp),%esi
    for (int i = 0; i < strlen(name) + strlen("[RUNNING] ") + REMOVE_2_ADDITIONAL_CHARS; i++)
      8e:	eb 15                	jmp    a5 <print_error+0x25>
        printf(1, "\b");
      90:	83 ec 08             	sub    $0x8,%esp

#define REMOVE_2_ADDITIONAL_CHARS 2

void print_error(const char* name, unsigned long int x, unsigned long int y,
                 const char* file, int line) {
    for (int i = 0; i < strlen(name) + strlen("[RUNNING] ") + REMOVE_2_ADDITIONAL_CHARS; i++)
      93:	83 c3 01             	add    $0x1,%ebx
        printf(1, "\b");
      96:	68 18 c8 00 00       	push   $0xc818
      9b:	6a 01                	push   $0x1
      9d:	e8 fe c2 00 00       	call   c3a0 <printf>

#define REMOVE_2_ADDITIONAL_CHARS 2

void print_error(const char* name, unsigned long int x, unsigned long int y,
                 const char* file, int line) {
    for (int i = 0; i < strlen(name) + strlen("[RUNNING] ") + REMOVE_2_ADDITIONAL_CHARS; i++)
      a2:	83 c4 10             	add    $0x10,%esp
      a5:	83 ec 0c             	sub    $0xc,%esp
      a8:	56                   	push   %esi
      a9:	e8 b2 bd 00 00       	call   be60 <strlen>
      ae:	89 c7                	mov    %eax,%edi
      b0:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
      b7:	e8 a4 bd 00 00       	call   be60 <strlen>
      bc:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	39 d8                	cmp    %ebx,%eax
      c5:	77 c9                	ja     90 <print_error+0x10>
        printf(1, "\b");
    printf(1, "[FAILED] %s - expected %d but got %d (%s:%d)\n",
      c7:	83 ec 04             	sub    $0x4,%esp
      ca:	ff 75 18             	pushl  0x18(%ebp)
      cd:	ff 75 14             	pushl  0x14(%ebp)
      d0:	ff 75 10             	pushl  0x10(%ebp)
      d3:	ff 75 0c             	pushl  0xc(%ebp)
      d6:	56                   	push   %esi
      d7:	68 68 d3 00 00       	push   $0xd368
      dc:	6a 01                	push   $0x1
      de:	e8 bd c2 00 00       	call   c3a0 <printf>
           name, x, y, file, line);
}
      e3:	83 c4 20             	add    $0x20,%esp
      e6:	8d 65 f4             	lea    -0xc(%ebp),%esp
      e9:	5b                   	pop    %ebx
      ea:	5e                   	pop    %esi
      eb:	5f                   	pop    %edi
      ec:	5d                   	pop    %ebp
      ed:	c3                   	ret    
      ee:	66 90                	xchg   %ax,%ax

000000f0 <get_kernel_total_memory>:

//######################################## Helper functions#######################

//Parse memory.stat info and fetch "kernel" value
int get_kernel_total_memory(char * mem_stat_info)
{
      f0:	55                   	push   %ebp
      f1:	89 e5                	mov    %esp,%ebp
      f3:	83 ec 10             	sub    $0x10,%esp
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");
      f6:	68 3f c8 00 00       	push   $0xc83f
      fb:	ff 75 08             	pushl  0x8(%ebp)
      fe:	e8 0d c0 00 00       	call   c110 <strstr>

  return atoi(kernel_value);
     103:	83 c4 10             	add    $0x10,%esp
     106:	89 45 08             	mov    %eax,0x8(%ebp)
}
     109:	c9                   	leave  
{
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");

  return atoi(kernel_value);
     10a:	e9 91 be 00 00       	jmp    bfa0 <atoi>
     10f:	90                   	nop

00000110 <is_valid_controller_type>:
}

// Return if controller type is valid.
int is_valid_controller_type(int controller_type) {
     110:	55                   	push   %ebp
  return controller_type >= CPU_CNT &&
     111:	31 c0                	xor    %eax,%eax

  return atoi(kernel_value);
}

// Return if controller type is valid.
int is_valid_controller_type(int controller_type) {
     113:	89 e5                	mov    %esp,%ebp
  return controller_type >= CPU_CNT &&
     115:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    controller_type <= CPU_CNT + CONTROLLER_COUNT - 1;
}
     119:	5d                   	pop    %ebp
  return atoi(kernel_value);
}

// Return if controller type is valid.
int is_valid_controller_type(int controller_type) {
  return controller_type >= CPU_CNT &&
     11a:	0f 96 c0             	setbe  %al
    controller_type <= CPU_CNT + CONTROLLER_COUNT - 1;
}
     11d:	c3                   	ret    
     11e:	66 90                	xchg   %ax,%ax

00000120 <get_controller_name>:

// Return controller name.
char* get_controller_name(int controller_type) {
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	8b 45 08             	mov    0x8(%ebp),%eax
  if (!is_valid_controller_type(controller_type)) {
     126:	83 f8 03             	cmp    $0x3,%eax
     129:	77 0d                	ja     138 <get_controller_name+0x18>
    return 0;
  }

  return controller_names[controller_type];
     12b:	c1 e0 04             	shl    $0x4,%eax
     12e:	05 00 40 01 00       	add    $0x14000,%eax
}
     133:	5d                   	pop    %ebp
     134:	c3                   	ret    
     135:	8d 76 00             	lea    0x0(%esi),%esi
}

// Return controller name.
char* get_controller_name(int controller_type) {
  if (!is_valid_controller_type(controller_type)) {
    return 0;
     138:	31 c0                	xor    %eax,%eax
  }

  return controller_names[controller_type];
}
     13a:	5d                   	pop    %ebp
     13b:	c3                   	ret    
     13c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000140 <set_suppress>:

// Turn on debug messeges or turn them off.
void set_suppress(char _suppress) {
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
  suppress = _suppress;
     143:	8b 45 08             	mov    0x8(%ebp),%eax
}
     146:	5d                   	pop    %ebp
  return controller_names[controller_type];
}

// Turn on debug messeges or turn them off.
void set_suppress(char _suppress) {
  suppress = _suppress;
     147:	a2 44 42 01 00       	mov    %al,0x14244
}
     14c:	c3                   	ret    
     14d:	8d 76 00             	lea    0x0(%esi),%esi

00000150 <open_file>:
     memset(string, 0, length);
}

// Open given file.
int open_file(const char* file)
{
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	56                   	push   %esi
     154:	53                   	push   %ebx
     155:	8b 75 08             	mov    0x8(%ebp),%esi
  int fd;

  if ((fd = open(file, O_RDWR)) < 1) {
     158:	83 ec 08             	sub    $0x8,%esp
     15b:	6a 02                	push   $0x2
     15d:	56                   	push   %esi
     15e:	e8 c5 c0 00 00       	call   c228 <open>
     163:	83 c4 10             	add    $0x10,%esp
     166:	85 c0                	test   %eax,%eax
     168:	89 c3                	mov    %eax,%ebx
     16a:	7e 0c                	jle    178 <open_file+0x28>
      printf(1, "\nFailed to open file: %s\n", file);
    return 0;
  }

  return fd;
}
     16c:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16f:	89 d8                	mov    %ebx,%eax
     171:	5b                   	pop    %ebx
     172:	5e                   	pop    %esi
     173:	5d                   	pop    %ebp
     174:	c3                   	ret    
     175:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;

  if ((fd = open(file, O_RDWR)) < 1) {
    if (suppress == 0)
      printf(1, "\nFailed to open file: %s\n", file);
    return 0;
     178:	31 db                	xor    %ebx,%ebx
int open_file(const char* file)
{
  int fd;

  if ((fd = open(file, O_RDWR)) < 1) {
    if (suppress == 0)
     17a:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     181:	75 e9                	jne    16c <open_file+0x1c>
      printf(1, "\nFailed to open file: %s\n", file);
     183:	83 ec 04             	sub    $0x4,%esp
     186:	56                   	push   %esi
     187:	68 49 c8 00 00       	push   $0xc849
     18c:	6a 01                	push   $0x1
     18e:	e8 0d c2 00 00       	call   c3a0 <printf>
     193:	83 c4 10             	add    $0x10,%esp
    return 0;
  }

  return fd;
}
     196:	8d 65 f8             	lea    -0x8(%ebp),%esp
     199:	89 d8                	mov    %ebx,%eax
     19b:	5b                   	pop    %ebx
     19c:	5e                   	pop    %esi
     19d:	5d                   	pop    %ebp
     19e:	c3                   	ret    
     19f:	90                   	nop

000001a0 <close_file>:

// Close given file.
int close_file(int fd)
{
     1a0:	55                   	push   %ebp
     1a1:	89 e5                	mov    %esp,%ebp
     1a3:	53                   	push   %ebx
    if (suppress == 0)
      printf(1, "\nFailed to close file\n");
    return 0;
  }

  return 1;
     1a4:	bb 01 00 00 00       	mov    $0x1,%ebx
  return fd;
}

// Close given file.
int close_file(int fd)
{
     1a9:	83 ec 10             	sub    $0x10,%esp
  if (close(fd) != 0) {
     1ac:	ff 75 08             	pushl  0x8(%ebp)
     1af:	e8 5c c0 00 00       	call   c210 <close>
     1b4:	83 c4 10             	add    $0x10,%esp
     1b7:	85 c0                	test   %eax,%eax
     1b9:	74 0b                	je     1c6 <close_file+0x26>
    if (suppress == 0)
      printf(1, "\nFailed to close file\n");
    return 0;
     1bb:	31 db                	xor    %ebx,%ebx

// Close given file.
int close_file(int fd)
{
  if (close(fd) != 0) {
    if (suppress == 0)
     1bd:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     1c4:	74 0a                	je     1d0 <close_file+0x30>
      printf(1, "\nFailed to close file\n");
    return 0;
  }

  return 1;
}
     1c6:	89 d8                	mov    %ebx,%eax
     1c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1cb:	c9                   	leave  
     1cc:	c3                   	ret    
     1cd:	8d 76 00             	lea    0x0(%esi),%esi
// Close given file.
int close_file(int fd)
{
  if (close(fd) != 0) {
    if (suppress == 0)
      printf(1, "\nFailed to close file\n");
     1d0:	83 ec 08             	sub    $0x8,%esp
     1d3:	68 63 c8 00 00       	push   $0xc863
     1d8:	6a 01                	push   $0x1
     1da:	e8 c1 c1 00 00       	call   c3a0 <printf>
    return 0;
  }

  return 1;
}
     1df:	89 d8                	mov    %ebx,%eax
// Close given file.
int close_file(int fd)
{
  if (close(fd) != 0) {
    if (suppress == 0)
      printf(1, "\nFailed to close file\n");
     1e1:	83 c4 10             	add    $0x10,%esp
    return 0;
  }

  return 1;
}
     1e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1e7:	c9                   	leave  
     1e8:	c3                   	ret    
     1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001f0 <open_close_file>:

// Open and close given file.
int open_close_file(const char* file) {
     1f0:	55                   	push   %ebp
     1f1:	89 e5                	mov    %esp,%ebp
     1f3:	83 ec 14             	sub    $0x14,%esp
  int fd = open_file(file);
     1f6:	ff 75 08             	pushl  0x8(%ebp)
     1f9:	e8 52 ff ff ff       	call   150 <open_file>
  if (!fd) {
     1fe:	83 c4 10             	add    $0x10,%esp
     201:	85 c0                	test   %eax,%eax
     203:	75 0b                	jne    210 <open_close_file+0x20>
    return 0;
  }
  return close_file(fd);
}
     205:	31 c0                	xor    %eax,%eax
     207:	c9                   	leave  
     208:	c3                   	ret    
     209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
int open_close_file(const char* file) {
  int fd = open_file(file);
  if (!fd) {
    return 0;
  }
  return close_file(fd);
     210:	89 45 08             	mov    %eax,0x8(%ebp)
}
     213:	c9                   	leave  
int open_close_file(const char* file) {
  int fd = open_file(file);
  if (!fd) {
    return 0;
  }
  return close_file(fd);
     214:	eb 8a                	jmp    1a0 <close_file>
     216:	8d 76 00             	lea    0x0(%esi),%esi
     219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <read_file>:
}

// Read from a given file. if fails, return 0. Upon success returns the contents of the file.
// If print is set to 1, also prints the returned string.
char* read_file(const char* file, int print)
{
     220:	55                   	push   %ebp
     221:	89 e5                	mov    %esp,%ebp
     223:	56                   	push   %esi
     224:	53                   	push   %ebx
     225:	8b 75 08             	mov    0x8(%ebp),%esi
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     228:	83 ec 04             	sub    $0x4,%esp
     22b:	68 00 01 00 00       	push   $0x100
     230:	6a 00                	push   $0x0
     232:	68 60 42 01 00       	push   $0x14260
     237:	e8 54 bc 00 00       	call   be90 <memset>
char* read_file(const char* file, int print)
{
  static char buf[256];
  empty_string(buf, 256);

  int fd = open_file(file);
     23c:	89 34 24             	mov    %esi,(%esp)
     23f:	e8 0c ff ff ff       	call   150 <open_file>
  if (!fd) {
     244:	83 c4 10             	add    $0x10,%esp
     247:	85 c0                	test   %eax,%eax
     249:	74 6d                	je     2b8 <read_file+0x98>
    return 0;
  }
  if (read(fd, buf, 256) < 0) {
     24b:	83 ec 04             	sub    $0x4,%esp
     24e:	89 c3                	mov    %eax,%ebx
     250:	68 00 01 00 00       	push   $0x100
     255:	68 60 42 01 00       	push   $0x14260
     25a:	50                   	push   %eax
     25b:	e8 a0 bf 00 00       	call   c200 <read>
     260:	83 c4 10             	add    $0x10,%esp
     263:	85 c0                	test   %eax,%eax
     265:	78 29                	js     290 <read_file+0x70>
      printf(1, "\nFailed to read file: %s\n", file);
    close_file(fd);
    return 0;
  }

  if (print) {
     267:	8b 45 0c             	mov    0xc(%ebp),%eax
     26a:	85 c0                	test   %eax,%eax
     26c:	75 5a                	jne    2c8 <read_file+0xa8>
    printf(1, "Contents of %s: \n%s\n", file, buf);
  }

  if (!close_file(fd)) {
     26e:	83 ec 0c             	sub    $0xc,%esp
     271:	53                   	push   %ebx
     272:	e8 29 ff ff ff       	call   1a0 <close_file>
     277:	83 c4 10             	add    $0x10,%esp
     27a:	85 c0                	test   %eax,%eax
     27c:	74 3a                	je     2b8 <read_file+0x98>
    return 0;
  }

  return buf;
}
     27e:	8d 65 f8             	lea    -0x8(%ebp),%esp

  if (!close_file(fd)) {
    return 0;
  }

  return buf;
     281:	b8 60 42 01 00       	mov    $0x14260,%eax
}
     286:	5b                   	pop    %ebx
     287:	5e                   	pop    %esi
     288:	5d                   	pop    %ebp
     289:	c3                   	ret    
     28a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  int fd = open_file(file);
  if (!fd) {
    return 0;
  }
  if (read(fd, buf, 256) < 0) {
    if (suppress == 0)
     290:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     297:	75 13                	jne    2ac <read_file+0x8c>
      printf(1, "\nFailed to read file: %s\n", file);
     299:	83 ec 04             	sub    $0x4,%esp
     29c:	56                   	push   %esi
     29d:	68 7a c8 00 00       	push   $0xc87a
     2a2:	6a 01                	push   $0x1
     2a4:	e8 f7 c0 00 00       	call   c3a0 <printf>
     2a9:	83 c4 10             	add    $0x10,%esp
    close_file(fd);
     2ac:	83 ec 0c             	sub    $0xc,%esp
     2af:	53                   	push   %ebx
     2b0:	e8 eb fe ff ff       	call   1a0 <close_file>
    return 0;
     2b5:	83 c4 10             	add    $0x10,%esp
  if (!close_file(fd)) {
    return 0;
  }

  return buf;
}
     2b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  }
  if (read(fd, buf, 256) < 0) {
    if (suppress == 0)
      printf(1, "\nFailed to read file: %s\n", file);
    close_file(fd);
    return 0;
     2bb:	31 c0                	xor    %eax,%eax
  if (!close_file(fd)) {
    return 0;
  }

  return buf;
}
     2bd:	5b                   	pop    %ebx
     2be:	5e                   	pop    %esi
     2bf:	5d                   	pop    %ebp
     2c0:	c3                   	ret    
     2c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    close_file(fd);
    return 0;
  }

  if (print) {
    printf(1, "Contents of %s: \n%s\n", file, buf);
     2c8:	68 60 42 01 00       	push   $0x14260
     2cd:	56                   	push   %esi
     2ce:	68 94 c8 00 00       	push   $0xc894
     2d3:	6a 01                	push   $0x1
     2d5:	e8 c6 c0 00 00       	call   c3a0 <printf>
     2da:	83 c4 10             	add    $0x10,%esp
     2dd:	eb 8f                	jmp    26e <read_file+0x4e>
     2df:	90                   	nop

000002e0 <write_file>:

  return buf;
}

// Write into a file. If succesful returns 1, otherwise 0.
int write_file(const char* file, char* text) {
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	57                   	push   %edi
     2e4:	56                   	push   %esi
     2e5:	53                   	push   %ebx
     2e6:	81 ec 18 01 00 00    	sub    $0x118,%esp
     2ec:	8b 75 08             	mov    0x8(%ebp),%esi
  char buf[256];
  int fd = open_file(file);
     2ef:	56                   	push   %esi
     2f0:	e8 5b fe ff ff       	call   150 <open_file>
     2f5:	89 c3                	mov    %eax,%ebx

  if(!fd)
     2f7:	83 c4 10             	add    $0x10,%esp
    return 0;
     2fa:	31 c0                	xor    %eax,%eax
// Write into a file. If succesful returns 1, otherwise 0.
int write_file(const char* file, char* text) {
  char buf[256];
  int fd = open_file(file);

  if(!fd)
     2fc:	85 db                	test   %ebx,%ebx
     2fe:	75 10                	jne    310 <write_file+0x30>
    close_file(fd);
    return 0;
  }

  return close_file(fd);
}
     300:	8d 65 f4             	lea    -0xc(%ebp),%esp
     303:	5b                   	pop    %ebx
     304:	5e                   	pop    %esi
     305:	5f                   	pop    %edi
     306:	5d                   	pop    %ebp
     307:	c3                   	ret    
     308:	90                   	nop
     309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     310:	8d bd e8 fe ff ff    	lea    -0x118(%ebp),%edi
     316:	83 ec 04             	sub    $0x4,%esp
     319:	68 00 01 00 00       	push   $0x100
     31e:	6a 00                	push   $0x0
     320:	57                   	push   %edi
     321:	e8 6a bb 00 00       	call   be90 <memset>
  int fd = open_file(file);

  if(!fd)
    return 0;
  empty_string(buf, 256);
  strcpy(buf, text);
     326:	58                   	pop    %eax
     327:	5a                   	pop    %edx
     328:	ff 75 0c             	pushl  0xc(%ebp)
     32b:	57                   	push   %edi
     32c:	e8 1f ba 00 00       	call   bd50 <strcpy>
  if (write(fd, buf, sizeof(buf)) < 0) {
     331:	83 c4 0c             	add    $0xc,%esp
     334:	68 00 01 00 00       	push   $0x100
     339:	57                   	push   %edi
     33a:	53                   	push   %ebx
     33b:	e8 c8 be 00 00       	call   c208 <write>
     340:	83 c4 10             	add    $0x10,%esp
     343:	85 c0                	test   %eax,%eax
     345:	78 19                	js     360 <write_file+0x80>
      printf(1, "\nFailed to write into file %s\n", file);
    close_file(fd);
    return 0;
  }

  return close_file(fd);
     347:	83 ec 0c             	sub    $0xc,%esp
     34a:	53                   	push   %ebx
     34b:	e8 50 fe ff ff       	call   1a0 <close_file>
     350:	83 c4 10             	add    $0x10,%esp
}
     353:	8d 65 f4             	lea    -0xc(%ebp),%esp
     356:	5b                   	pop    %ebx
     357:	5e                   	pop    %esi
     358:	5f                   	pop    %edi
     359:	5d                   	pop    %ebp
     35a:	c3                   	ret    
     35b:	90                   	nop
     35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(!fd)
    return 0;
  empty_string(buf, 256);
  strcpy(buf, text);
  if (write(fd, buf, sizeof(buf)) < 0) {
    if (suppress == 0)
     360:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     367:	75 13                	jne    37c <write_file+0x9c>
      printf(1, "\nFailed to write into file %s\n", file);
     369:	83 ec 04             	sub    $0x4,%esp
     36c:	56                   	push   %esi
     36d:	68 98 d3 00 00       	push   $0xd398
     372:	6a 01                	push   $0x1
     374:	e8 27 c0 00 00       	call   c3a0 <printf>
     379:	83 c4 10             	add    $0x10,%esp
    close_file(fd);
     37c:	83 ec 0c             	sub    $0xc,%esp
     37f:	53                   	push   %ebx
     380:	e8 1b fe ff ff       	call   1a0 <close_file>
    return 0;
     385:	83 c4 10             	add    $0x10,%esp
  }

  return close_file(fd);
}
     388:	8d 65 f4             	lea    -0xc(%ebp),%esp
  strcpy(buf, text);
  if (write(fd, buf, sizeof(buf)) < 0) {
    if (suppress == 0)
      printf(1, "\nFailed to write into file %s\n", file);
    close_file(fd);
    return 0;
     38b:	31 c0                	xor    %eax,%eax
  }

  return close_file(fd);
}
     38d:	5b                   	pop    %ebx
     38e:	5e                   	pop    %esi
     38f:	5f                   	pop    %edi
     390:	5d                   	pop    %ebp
     391:	c3                   	ret    
     392:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003a0 <write_new_file>:

int write_new_file(const char* file, char* text) {
     3a0:	55                   	push   %ebp
     3a1:	89 e5                	mov    %esp,%ebp
     3a3:	56                   	push   %esi
     3a4:	53                   	push   %ebx
     3a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
   int fd;
   if ((fd = open(file, O_CREATE | O_RDWR)) < 1) {
     3a8:	83 ec 08             	sub    $0x8,%esp
     3ab:	68 02 02 00 00       	push   $0x202
     3b0:	53                   	push   %ebx
     3b1:	e8 72 be 00 00       	call   c228 <open>
     3b6:	83 c4 10             	add    $0x10,%esp
     3b9:	85 c0                	test   %eax,%eax
     3bb:	7e 3b                	jle    3f8 <write_new_file+0x58>
     if (suppress == 0)
        printf(1, "\nFailed to open a new file \n");
     return 0;
   }

   if (!write_file(file, text)) {
     3bd:	83 ec 08             	sub    $0x8,%esp
     3c0:	ff 75 0c             	pushl  0xc(%ebp)
     3c3:	89 c6                	mov    %eax,%esi
     3c5:	53                   	push   %ebx
     3c6:	e8 15 ff ff ff       	call   2e0 <write_file>
     3cb:	83 c4 10             	add    $0x10,%esp
     3ce:	85 c0                	test   %eax,%eax
     3d0:	89 c3                	mov    %eax,%ebx
     3d2:	74 0c                	je     3e0 <write_new_file+0x40>
     3d4:	89 f3                	mov    %esi,%ebx
     close_file(fd);
     return 0;
   }

  return fd;
}
     3d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
     3d9:	89 d8                	mov    %ebx,%eax
     3db:	5b                   	pop    %ebx
     3dc:	5e                   	pop    %esi
     3dd:	5d                   	pop    %ebp
     3de:	c3                   	ret    
     3df:	90                   	nop
        printf(1, "\nFailed to open a new file \n");
     return 0;
   }

   if (!write_file(file, text)) {
     close_file(fd);
     3e0:	83 ec 0c             	sub    $0xc,%esp
     3e3:	56                   	push   %esi
     3e4:	e8 b7 fd ff ff       	call   1a0 <close_file>
     return 0;
     3e9:	83 c4 10             	add    $0x10,%esp
   }

  return fd;
}
     3ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
     3ef:	89 d8                	mov    %ebx,%eax
     3f1:	5b                   	pop    %ebx
     3f2:	5e                   	pop    %esi
     3f3:	5d                   	pop    %ebp
     3f4:	c3                   	ret    
     3f5:	8d 76 00             	lea    0x0(%esi),%esi
int write_new_file(const char* file, char* text) {
   int fd;
   if ((fd = open(file, O_CREATE | O_RDWR)) < 1) {
     if (suppress == 0)
        printf(1, "\nFailed to open a new file \n");
     return 0;
     3f8:	31 db                	xor    %ebx,%ebx
}

int write_new_file(const char* file, char* text) {
   int fd;
   if ((fd = open(file, O_CREATE | O_RDWR)) < 1) {
     if (suppress == 0)
     3fa:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     401:	75 d3                	jne    3d6 <write_new_file+0x36>
        printf(1, "\nFailed to open a new file \n");
     403:	83 ec 08             	sub    $0x8,%esp
     406:	68 a9 c8 00 00       	push   $0xc8a9
     40b:	6a 01                	push   $0x1
     40d:	e8 8e bf 00 00       	call   c3a0 <printf>
     412:	83 c4 10             	add    $0x10,%esp
     close_file(fd);
     return 0;
   }

  return fd;
}
     415:	8d 65 f8             	lea    -0x8(%ebp),%esp
     418:	89 d8                	mov    %ebx,%eax
     41a:	5b                   	pop    %ebx
     41b:	5e                   	pop    %esi
     41c:	5d                   	pop    %ebp
     41d:	c3                   	ret    
     41e:	66 90                	xchg   %ax,%ax

00000420 <enable_controller>:

// Test enabling controller according to given type.
int enable_controller(int type) {
     420:	55                   	push   %ebp
     421:	31 c0                	xor    %eax,%eax
     423:	89 e5                	mov    %esp,%ebp
     425:	53                   	push   %ebx
     426:	83 ec 14             	sub    $0x14,%esp
     429:	8b 55 08             	mov    0x8(%ebp),%edx
  char buf[5] = { '+', 0 };
     42c:	c7 45 f3 00 00 00 00 	movl   $0x0,-0xd(%ebp)
     433:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
     437:	c6 45 f3 2b          	movb   $0x2b,-0xd(%ebp)
  if (!is_valid_controller_type(type)) {
     43b:	83 fa 03             	cmp    $0x3,%edx
     43e:	77 29                	ja     469 <enable_controller+0x49>
    return 0;
  }

  strcpy(buf + 1, controller_names[type]);
     440:	8d 45 f4             	lea    -0xc(%ebp),%eax
     443:	c1 e2 04             	shl    $0x4,%edx
     446:	83 ec 08             	sub    $0x8,%esp
     449:	81 c2 00 40 01 00    	add    $0x14000,%edx
     44f:	8d 5d f3             	lea    -0xd(%ebp),%ebx
     452:	52                   	push   %edx
     453:	50                   	push   %eax
     454:	e8 f7 b8 00 00       	call   bd50 <strcpy>

  return write_file(TEST_1_CGROUP_SUBTREE_CONTROL, buf);
     459:	58                   	pop    %eax
     45a:	5a                   	pop    %edx
     45b:	53                   	push   %ebx
     45c:	68 b8 d3 00 00       	push   $0xd3b8
     461:	e8 7a fe ff ff       	call   2e0 <write_file>
     466:	83 c4 10             	add    $0x10,%esp
}
     469:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     46c:	c9                   	leave  
     46d:	c3                   	ret    
     46e:	66 90                	xchg   %ax,%ax

00000470 <disable_controller>:

// Test disabling controller according to given type.
int disable_controller(int type) {
     470:	55                   	push   %ebp
     471:	31 c0                	xor    %eax,%eax
     473:	89 e5                	mov    %esp,%ebp
     475:	53                   	push   %ebx
     476:	83 ec 14             	sub    $0x14,%esp
     479:	8b 55 08             	mov    0x8(%ebp),%edx
  char buf[5] = { '-', 0 };
     47c:	c7 45 f3 00 00 00 00 	movl   $0x0,-0xd(%ebp)
     483:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
     487:	c6 45 f3 2d          	movb   $0x2d,-0xd(%ebp)
  if (!is_valid_controller_type(type)) {
     48b:	83 fa 03             	cmp    $0x3,%edx
     48e:	77 29                	ja     4b9 <disable_controller+0x49>
    return 0;
  }

  strcpy(buf + 1, controller_names[type]);
     490:	8d 45 f4             	lea    -0xc(%ebp),%eax
     493:	c1 e2 04             	shl    $0x4,%edx
     496:	83 ec 08             	sub    $0x8,%esp
     499:	81 c2 00 40 01 00    	add    $0x14000,%edx
     49f:	8d 5d f3             	lea    -0xd(%ebp),%ebx
     4a2:	52                   	push   %edx
     4a3:	50                   	push   %eax
     4a4:	e8 a7 b8 00 00       	call   bd50 <strcpy>

  return write_file(TEST_1_CGROUP_SUBTREE_CONTROL, buf);
     4a9:	58                   	pop    %eax
     4aa:	5a                   	pop    %edx
     4ab:	53                   	push   %ebx
     4ac:	68 b8 d3 00 00       	push   $0xd3b8
     4b1:	e8 2a fe ff ff       	call   2e0 <write_file>
     4b6:	83 c4 10             	add    $0x10,%esp
}
     4b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4bc:	c9                   	leave  
     4bd:	c3                   	ret    
     4be:	66 90                	xchg   %ax,%ax

000004c0 <verify_controller_enabled>:

// Test verrifying a controller is active according to given type.
int verify_controller_enabled(int type) {
     4c0:	55                   	push   %ebp
     4c1:	89 e5                	mov    %esp,%ebp
     4c3:	57                   	push   %edi
     4c4:	56                   	push   %esi
     4c5:	53                   	push   %ebx
     4c6:	83 ec 1c             	sub    $0x1c,%esp
     4c9:	8b 45 08             	mov    0x8(%ebp),%eax
  char buf[4] = { 0 };
     4cc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  if (!is_valid_controller_type(type)) {
     4d3:	83 f8 03             	cmp    $0x3,%eax
     4d6:	76 10                	jbe    4e8 <verify_controller_enabled+0x28>
    return 0;
     4d8:	31 c0                	xor    %eax,%eax
      return 1;
    }
  }

  return 0;
}
     4da:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4dd:	5b                   	pop    %ebx
     4de:	5e                   	pop    %esi
     4df:	5f                   	pop    %edi
     4e0:	5d                   	pop    %ebp
     4e1:	c3                   	ret    
     4e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  char buf[4] = { 0 };
  if (!is_valid_controller_type(type)) {
    return 0;
  }

  strcpy(buf, controller_names[type]);
     4e8:	c1 e0 04             	shl    $0x4,%eax
     4eb:	83 ec 08             	sub    $0x8,%esp
     4ee:	05 00 40 01 00       	add    $0x14000,%eax
     4f3:	50                   	push   %eax
     4f4:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     4f7:	50                   	push   %eax
     4f8:	e8 53 b8 00 00       	call   bd50 <strcpy>

  char* contents = read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 0);
     4fd:	58                   	pop    %eax
     4fe:	5a                   	pop    %edx
     4ff:	6a 00                	push   $0x0
     501:	68 b8 d3 00 00       	push   $0xd3b8
     506:	e8 15 fd ff ff       	call   220 <read_file>

  int i;
  for (i = 0; contents[i] != 0 && i < sizeof(contents) - 2; i++) {
     50b:	0f b6 08             	movzbl (%eax),%ecx
     50e:	83 c4 10             	add    $0x10,%esp
     511:	84 c9                	test   %cl,%cl
     513:	74 c3                	je     4d8 <verify_controller_enabled+0x18>
     515:	0f b6 5d e4          	movzbl -0x1c(%ebp),%ebx
    if (contents[i] == buf[0] && contents[i + 1] == buf[1] && contents[i + 2] == buf[2]) {
     519:	31 d2                	xor    %edx,%edx
     51b:	0f b6 75 e5          	movzbl -0x1b(%ebp),%esi
     51f:	0f b6 7d e6          	movzbl -0x1a(%ebp),%edi
     523:	38 cb                	cmp    %cl,%bl
     525:	74 14                	je     53b <verify_controller_enabled+0x7b>
  strcpy(buf, controller_names[type]);

  char* contents = read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 0);

  int i;
  for (i = 0; contents[i] != 0 && i < sizeof(contents) - 2; i++) {
     527:	83 c2 01             	add    $0x1,%edx
     52a:	0f b6 0c 10          	movzbl (%eax,%edx,1),%ecx
     52e:	84 c9                	test   %cl,%cl
     530:	74 a6                	je     4d8 <verify_controller_enabled+0x18>
     532:	83 fa 02             	cmp    $0x2,%edx
     535:	74 a1                	je     4d8 <verify_controller_enabled+0x18>
    if (contents[i] == buf[0] && contents[i + 1] == buf[1] && contents[i + 2] == buf[2]) {
     537:	38 cb                	cmp    %cl,%bl
     539:	75 ec                	jne    527 <verify_controller_enabled+0x67>
     53b:	89 f1                	mov    %esi,%ecx
     53d:	38 4c 10 01          	cmp    %cl,0x1(%eax,%edx,1)
     541:	75 e4                	jne    527 <verify_controller_enabled+0x67>
     543:	89 f9                	mov    %edi,%ecx
     545:	38 4c 10 02          	cmp    %cl,0x2(%eax,%edx,1)
     549:	75 dc                	jne    527 <verify_controller_enabled+0x67>
      return 1;
     54b:	b8 01 00 00 00       	mov    $0x1,%eax
     550:	eb 88                	jmp    4da <verify_controller_enabled+0x1a>
     552:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000560 <verify_controller_disabled>:

  return 0;
}

// Test verifying a controller is disabled according to given type.
int verify_controller_disabled(int type) {
     560:	55                   	push   %ebp
  char buf[4] = { 0 };
  if (!is_valid_controller_type(type)) {
    return 0;
     561:	31 c0                	xor    %eax,%eax

  return 0;
}

// Test verifying a controller is disabled according to given type.
int verify_controller_disabled(int type) {
     563:	89 e5                	mov    %esp,%ebp
     565:	57                   	push   %edi
     566:	56                   	push   %esi
     567:	53                   	push   %ebx
     568:	83 ec 2c             	sub    $0x2c,%esp
     56b:	8b 55 08             	mov    0x8(%ebp),%edx
  char buf[4] = { 0 };
     56e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  if (!is_valid_controller_type(type)) {
     575:	83 fa 03             	cmp    $0x3,%edx
     578:	76 0e                	jbe    588 <verify_controller_disabled+0x28>
      return 0;
    }
  }

  return 1;
}
     57a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     57d:	5b                   	pop    %ebx
     57e:	5e                   	pop    %esi
     57f:	5f                   	pop    %edi
     580:	5d                   	pop    %ebp
     581:	c3                   	ret    
     582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  char buf[4] = { 0 };
  if (!is_valid_controller_type(type)) {
    return 0;
  }

  strcpy(buf, controller_names[type]);
     588:	c1 e2 04             	shl    $0x4,%edx
     58b:	8d 75 e4             	lea    -0x1c(%ebp),%esi
     58e:	83 ec 08             	sub    $0x8,%esp
     591:	81 c2 00 40 01 00    	add    $0x14000,%edx
     597:	52                   	push   %edx
     598:	56                   	push   %esi
     599:	e8 b2 b7 00 00       	call   bd50 <strcpy>

  char* contents = read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 0);
     59e:	58                   	pop    %eax
     59f:	5a                   	pop    %edx
     5a0:	6a 00                	push   $0x0
     5a2:	68 b8 d3 00 00       	push   $0xd3b8
     5a7:	e8 74 fc ff ff       	call   220 <read_file>
  int i;

  for (i = 0; contents[i + 2] != 0; i++) {
     5ac:	0f b6 50 02          	movzbl 0x2(%eax),%edx
     5b0:	83 c4 10             	add    $0x10,%esp
     5b3:	84 d2                	test   %dl,%dl
     5b5:	74 59                	je     610 <verify_controller_disabled+0xb0>
    if (contents[i] == buf[0] && contents[i + 1] == buf[1] && contents[i + 2] == buf[2]) {
     5b7:	0f b6 5d e5          	movzbl -0x1b(%ebp),%ebx
     5bb:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
     5bf:	0f b6 7d e6          	movzbl -0x1a(%ebp),%edi
     5c3:	88 5d d7             	mov    %bl,-0x29(%ebp)
     5c6:	eb 13                	jmp    5db <verify_controller_disabled+0x7b>
     5c8:	90                   	nop
     5c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5d0:	83 c0 01             	add    $0x1,%eax
  strcpy(buf, controller_names[type]);

  char* contents = read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 0);
  int i;

  for (i = 0; contents[i + 2] != 0; i++) {
     5d3:	0f b6 50 02          	movzbl 0x2(%eax),%edx
     5d7:	84 d2                	test   %dl,%dl
     5d9:	74 35                	je     610 <verify_controller_disabled+0xb0>
    if (contents[i] == buf[0] && contents[i + 1] == buf[1] && contents[i + 2] == buf[2]) {
     5db:	3a 08                	cmp    (%eax),%cl
     5dd:	75 f1                	jne    5d0 <verify_controller_disabled+0x70>
     5df:	0f b6 5d d7          	movzbl -0x29(%ebp),%ebx
     5e3:	38 58 01             	cmp    %bl,0x1(%eax)
     5e6:	75 e8                	jne    5d0 <verify_controller_disabled+0x70>
     5e8:	89 fb                	mov    %edi,%ebx
     5ea:	38 d3                	cmp    %dl,%bl
     5ec:	75 e2                	jne    5d0 <verify_controller_disabled+0x70>
      printf(1, "\nController %s is still enabled\n", buf);
     5ee:	83 ec 04             	sub    $0x4,%esp
     5f1:	56                   	push   %esi
     5f2:	68 e0 d3 00 00       	push   $0xd3e0
     5f7:	6a 01                	push   $0x1
     5f9:	e8 a2 bd 00 00       	call   c3a0 <printf>
      return 0;
     5fe:	83 c4 10             	add    $0x10,%esp
     601:	31 c0                	xor    %eax,%eax
     603:	e9 72 ff ff ff       	jmp    57a <verify_controller_disabled+0x1a>
     608:	90                   	nop
     609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  return 1;
}
     610:	8d 65 f4             	lea    -0xc(%ebp),%esp
      printf(1, "\nController %s is still enabled\n", buf);
      return 0;
    }
  }

  return 1;
     613:	b8 01 00 00 00       	mov    $0x1,%eax
}
     618:	5b                   	pop    %ebx
     619:	5e                   	pop    %esi
     61a:	5f                   	pop    %edi
     61b:	5d                   	pop    %ebp
     61c:	c3                   	ret    
     61d:	8d 76 00             	lea    0x0(%esi),%esi

00000620 <move_proc>:

// Test moving a process to given cgroup.
int move_proc(const char* file, int pid) {
     620:	55                   	push   %ebp
     621:	89 e5                	mov    %esp,%ebp
     623:	53                   	push   %ebx
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     624:	8d 5d f5             	lea    -0xb(%ebp),%ebx

  return 1;
}

// Test moving a process to given cgroup.
int move_proc(const char* file, int pid) {
     627:	83 ec 18             	sub    $0x18,%esp
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     62a:	6a 03                	push   $0x3
     62c:	6a 00                	push   $0x0
     62e:	53                   	push   %ebx
     62f:	e8 5c b8 00 00       	call   be90 <memset>

// Test moving a process to given cgroup.
int move_proc(const char* file, int pid) {
  char pid_buf[3];
  empty_string(pid_buf, 3);
  itoa(pid_buf, pid);
     634:	58                   	pop    %eax
     635:	5a                   	pop    %edx
     636:	ff 75 0c             	pushl  0xc(%ebp)
     639:	53                   	push   %ebx
     63a:	e8 d1 b9 00 00       	call   c010 <itoa>
  return write_file(file, pid_buf);
     63f:	59                   	pop    %ecx
     640:	58                   	pop    %eax
     641:	53                   	push   %ebx
     642:	ff 75 08             	pushl  0x8(%ebp)
     645:	e8 96 fc ff ff       	call   2e0 <write_file>
}
     64a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     64d:	c9                   	leave  
     64e:	c3                   	ret    
     64f:	90                   	nop

00000650 <is_pid_in_group>:

// Test a given pid in string format belongs to a given cgroup.
int is_pid_in_group(const char* file, int pid) {
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	57                   	push   %edi
     654:	56                   	push   %esi
     655:	53                   	push   %ebx
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     656:	8d 75 e5             	lea    -0x1b(%ebp),%esi
  itoa(pid_buf, pid);
  return write_file(file, pid_buf);
}

// Test a given pid in string format belongs to a given cgroup.
int is_pid_in_group(const char* file, int pid) {
     659:	83 ec 24             	sub    $0x24,%esp
     65c:	8b 7d 08             	mov    0x8(%ebp),%edi
  char* contents = read_file(file, 0);
     65f:	6a 00                	push   $0x0
     661:	57                   	push   %edi
     662:	e8 b9 fb ff ff       	call   220 <read_file>
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     667:	83 c4 0c             	add    $0xc,%esp
  return write_file(file, pid_buf);
}

// Test a given pid in string format belongs to a given cgroup.
int is_pid_in_group(const char* file, int pid) {
  char* contents = read_file(file, 0);
     66a:	89 c3                	mov    %eax,%ebx
}

// Set the given string length to empty.
static void empty_string(char* string, int length)
{
     memset(string, 0, length);
     66c:	6a 03                	push   $0x3
     66e:	6a 00                	push   $0x0
     670:	56                   	push   %esi
     671:	e8 1a b8 00 00       	call   be90 <memset>
int is_pid_in_group(const char* file, int pid) {
  char* contents = read_file(file, 0);
  char pid_buf[3];

  empty_string(pid_buf, 3);
  itoa(pid_buf, pid);
     676:	58                   	pop    %eax
     677:	5a                   	pop    %edx
     678:	ff 75 0c             	pushl  0xc(%ebp)
     67b:	56                   	push   %esi
     67c:	e8 8f b9 00 00       	call   c010 <itoa>

  if (pid_buf[1] == 0)
     681:	83 c4 10             	add    $0x10,%esp
     684:	80 7d e6 00          	cmpb   $0x0,-0x1a(%ebp)
     688:	75 04                	jne    68e <is_pid_in_group+0x3e>
    pid_buf[1] = '\n';
     68a:	c6 45 e6 0a          	movb   $0xa,-0x1a(%ebp)

  int i;
  for (i = 0; contents[i + 1] != 0; i++) {
     68e:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
     692:	84 c0                	test   %al,%al
     694:	74 32                	je     6c8 <is_pid_in_group+0x78>
     696:	0f b6 55 e5          	movzbl -0x1b(%ebp),%edx
    if (pid_buf[0] == contents[i] && pid_buf[1] == contents[i + 1]) {
     69a:	0f b6 4d e6          	movzbl -0x1a(%ebp),%ecx
     69e:	eb 0b                	jmp    6ab <is_pid_in_group+0x5b>
     6a0:	83 c3 01             	add    $0x1,%ebx

  if (pid_buf[1] == 0)
    pid_buf[1] = '\n';

  int i;
  for (i = 0; contents[i + 1] != 0; i++) {
     6a3:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
     6a7:	84 c0                	test   %al,%al
     6a9:	74 1d                	je     6c8 <is_pid_in_group+0x78>
    if (pid_buf[0] == contents[i] && pid_buf[1] == contents[i + 1]) {
     6ab:	38 13                	cmp    %dl,(%ebx)
     6ad:	75 f1                	jne    6a0 <is_pid_in_group+0x50>
     6af:	38 c1                	cmp    %al,%cl
     6b1:	75 ed                	jne    6a0 <is_pid_in_group+0x50>
      return 1;
     6b3:	bb 01 00 00 00       	mov    $0x1,%ebx
  if (suppress == 0) {
    printf(1, "Failed to find pid %d in group %s\n", atoi(pid_buf), file);
  }

  return 0;
}
     6b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6bb:	89 d8                	mov    %ebx,%eax
     6bd:	5b                   	pop    %ebx
     6be:	5e                   	pop    %esi
     6bf:	5f                   	pop    %edi
     6c0:	5d                   	pop    %ebp
     6c1:	c3                   	ret    
     6c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  if (suppress == 0) {
    printf(1, "Failed to find pid %d in group %s\n", atoi(pid_buf), file);
  }

  return 0;
     6c8:	31 db                	xor    %ebx,%ebx
    if (pid_buf[0] == contents[i] && pid_buf[1] == contents[i + 1]) {
      return 1;
    }
  }

  if (suppress == 0) {
     6ca:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     6d1:	75 e5                	jne    6b8 <is_pid_in_group+0x68>
    printf(1, "Failed to find pid %d in group %s\n", atoi(pid_buf), file);
     6d3:	83 ec 0c             	sub    $0xc,%esp
     6d6:	56                   	push   %esi
     6d7:	e8 c4 b8 00 00       	call   bfa0 <atoi>
     6dc:	57                   	push   %edi
     6dd:	50                   	push   %eax
     6de:	68 04 d4 00 00       	push   $0xd404
     6e3:	6a 01                	push   $0x1
     6e5:	e8 b6 bc 00 00       	call   c3a0 <printf>
     6ea:	83 c4 20             	add    $0x20,%esp
  }

  return 0;
}
     6ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6f0:	89 d8                	mov    %ebx,%eax
     6f2:	5b                   	pop    %ebx
     6f3:	5e                   	pop    %esi
     6f4:	5f                   	pop    %edi
     6f5:	5d                   	pop    %ebp
     6f6:	c3                   	ret    
     6f7:	89 f6                	mov    %esi,%esi
     6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000700 <temp_write>:

// Write an integer into a temporary file. Notice only one such file currently supported.
int temp_write(int num) {
     700:	55                   	push   %ebp
     701:	89 e5                	mov    %esp,%ebp
     703:	56                   	push   %esi
     704:	53                   	push   %ebx
     705:	81 ec 08 01 00 00    	sub    $0x108,%esp
  int fd;
  if ((fd = open(TEMP_FILE, O_CREATE | O_RDWR)) < 1) {
     70b:	68 02 02 00 00       	push   $0x202
     710:	68 c6 c8 00 00       	push   $0xc8c6
     715:	e8 0e bb 00 00       	call   c228 <open>
     71a:	83 c4 10             	add    $0x10,%esp
     71d:	85 c0                	test   %eax,%eax
     71f:	7e 5f                	jle    780 <temp_write+0x80>
      printf(1, "\nFailed to open a temporary file\n");
    return 0;
  }

  char buf[256];
  itoa(buf, num);
     721:	8d 9d f8 fe ff ff    	lea    -0x108(%ebp),%ebx
     727:	83 ec 08             	sub    $0x8,%esp
     72a:	ff 75 08             	pushl  0x8(%ebp)
     72d:	89 c6                	mov    %eax,%esi
     72f:	53                   	push   %ebx
     730:	e8 db b8 00 00       	call   c010 <itoa>

  if (!write_file(TEMP_FILE, buf)) {
     735:	58                   	pop    %eax
     736:	5a                   	pop    %edx
     737:	53                   	push   %ebx
     738:	68 c6 c8 00 00       	push   $0xc8c6
     73d:	e8 9e fb ff ff       	call   2e0 <write_file>
     742:	83 c4 10             	add    $0x10,%esp
     745:	85 c0                	test   %eax,%eax
     747:	89 c3                	mov    %eax,%ebx
     749:	74 1d                	je     768 <temp_write+0x68>
    close_file(fd);
    return 0;
  }

  return close_file(fd);
     74b:	83 ec 0c             	sub    $0xc,%esp
     74e:	56                   	push   %esi
     74f:	e8 4c fa ff ff       	call   1a0 <close_file>
     754:	83 c4 10             	add    $0x10,%esp
     757:	89 c3                	mov    %eax,%ebx
}
     759:	8d 65 f8             	lea    -0x8(%ebp),%esp
     75c:	89 d8                	mov    %ebx,%eax
     75e:	5b                   	pop    %ebx
     75f:	5e                   	pop    %esi
     760:	5d                   	pop    %ebp
     761:	c3                   	ret    
     762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  char buf[256];
  itoa(buf, num);

  if (!write_file(TEMP_FILE, buf)) {
    close_file(fd);
     768:	83 ec 0c             	sub    $0xc,%esp
     76b:	56                   	push   %esi
     76c:	e8 2f fa ff ff       	call   1a0 <close_file>
    return 0;
     771:	83 c4 10             	add    $0x10,%esp
  }

  return close_file(fd);
}
     774:	8d 65 f8             	lea    -0x8(%ebp),%esp
     777:	89 d8                	mov    %ebx,%eax
     779:	5b                   	pop    %ebx
     77a:	5e                   	pop    %esi
     77b:	5d                   	pop    %ebp
     77c:	c3                   	ret    
     77d:	8d 76 00             	lea    0x0(%esi),%esi
int temp_write(int num) {
  int fd;
  if ((fd = open(TEMP_FILE, O_CREATE | O_RDWR)) < 1) {
    if (suppress == 0)
      printf(1, "\nFailed to open a temporary file\n");
    return 0;
     780:	31 db                	xor    %ebx,%ebx

// Write an integer into a temporary file. Notice only one such file currently supported.
int temp_write(int num) {
  int fd;
  if ((fd = open(TEMP_FILE, O_CREATE | O_RDWR)) < 1) {
    if (suppress == 0)
     782:	80 3d 44 42 01 00 00 	cmpb   $0x0,0x14244
     789:	75 ce                	jne    759 <temp_write+0x59>
      printf(1, "\nFailed to open a temporary file\n");
     78b:	83 ec 08             	sub    $0x8,%esp
     78e:	68 28 d4 00 00       	push   $0xd428
     793:	6a 01                	push   $0x1
     795:	e8 06 bc 00 00       	call   c3a0 <printf>
     79a:	83 c4 10             	add    $0x10,%esp
    close_file(fd);
    return 0;
  }

  return close_file(fd);
}
     79d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     7a0:	89 d8                	mov    %ebx,%eax
     7a2:	5b                   	pop    %ebx
     7a3:	5e                   	pop    %esi
     7a4:	5d                   	pop    %ebp
     7a5:	c3                   	ret    
     7a6:	8d 76 00             	lea    0x0(%esi),%esi
     7a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007b0 <temp_read>:

// Read an integer from the temporary file.
int temp_read(int print) {
     7b0:	55                   	push   %ebp
     7b1:	89 e5                	mov    %esp,%ebp
     7b3:	83 ec 10             	sub    $0x10,%esp
  return atoi(read_file(TEMP_FILE, print));
     7b6:	ff 75 08             	pushl  0x8(%ebp)
     7b9:	68 c6 c8 00 00       	push   $0xc8c6
     7be:	e8 5d fa ff ff       	call   220 <read_file>
     7c3:	83 c4 10             	add    $0x10,%esp
     7c6:	89 45 08             	mov    %eax,0x8(%ebp)
}
     7c9:	c9                   	leave  
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
     7ca:	e9 d1 b7 00 00       	jmp    bfa0 <atoi>
     7cf:	90                   	nop

000007d0 <temp_delete>:
}

// Delete the temporary file.
int temp_delete() {
     7d0:	55                   	push   %ebp
     7d1:	89 e5                	mov    %esp,%ebp
     7d3:	83 ec 14             	sub    $0x14,%esp
  if (unlink(TEMP_FILE)) {
     7d6:	68 c6 c8 00 00       	push   $0xc8c6
     7db:	e8 58 ba 00 00       	call   c238 <unlink>
     7e0:	83 c4 10             	add    $0x10,%esp
     7e3:	85 c0                	test   %eax,%eax
     7e5:	ba 01 00 00 00       	mov    $0x1,%edx
     7ea:	74 14                	je     800 <temp_delete+0x30>
    printf(1, "Failed to delete temporary file\n");
     7ec:	83 ec 08             	sub    $0x8,%esp
     7ef:	68 4c d4 00 00       	push   $0xd44c
     7f4:	6a 01                	push   $0x1
     7f6:	e8 a5 bb 00 00       	call   c3a0 <printf>
     7fb:	83 c4 10             	add    $0x10,%esp
     7fe:	31 d2                	xor    %edx,%edx
    return 0;
  }

  return 1;
}
     800:	89 d0                	mov    %edx,%eax
     802:	c9                   	leave  
     803:	c3                   	ret    
     804:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     80a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000810 <get_val>:

//return the value for a given entry from the bufer
//entry must contain all characters before the value include white-space
int get_val(char *buf, char *entry){
     810:	55                   	push   %ebp
     811:	89 e5                	mov    %esp,%ebp
     813:	56                   	push   %esi
     814:	53                   	push   %ebx
     815:	8b 75 0c             	mov    0xc(%ebp),%esi
     818:	8b 5d 08             	mov    0x8(%ebp),%ebx
     81b:	90                   	nop
     81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  do{
     if(strncmp(buf, entry, strlen(entry))==0){
     820:	83 ec 0c             	sub    $0xc,%esp
     823:	56                   	push   %esi
     824:	e8 37 b6 00 00       	call   be60 <strlen>
     829:	83 c4 0c             	add    $0xc,%esp
     82c:	50                   	push   %eax
     82d:	56                   	push   %esi
     82e:	53                   	push   %ebx
     82f:	e8 9c b5 00 00       	call   bdd0 <strncmp>
     834:	83 c4 10             	add    $0x10,%esp
     837:	85 c0                	test   %eax,%eax
     839:	74 22                	je     85d <get_val+0x4d>
     83b:	90                   	nop
     83c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     840:	89 d8                	mov    %ebx,%eax
       buf+=strlen(entry);
       return atoi(buf);
       }
     else
       while (*buf++!='\n')//go to next line
     842:	83 c3 01             	add    $0x1,%ebx
     845:	80 7b ff 0a          	cmpb   $0xa,-0x1(%ebx)
     849:	75 f5                	jne    840 <get_val+0x30>
            ;
      }while(*buf!='\0');
     84b:	80 78 01 00          	cmpb   $0x0,0x1(%eax)
     84f:	75 cf                	jne    820 <get_val+0x10>
  return -1;//Assuming all values are supposed to be non-negative
}
     851:	8d 65 f8             	lea    -0x8(%ebp),%esp
     854:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     859:	5b                   	pop    %ebx
     85a:	5e                   	pop    %esi
     85b:	5d                   	pop    %ebp
     85c:	c3                   	ret    
//entry must contain all characters before the value include white-space
int get_val(char *buf, char *entry){

  do{
     if(strncmp(buf, entry, strlen(entry))==0){
       buf+=strlen(entry);
     85d:	83 ec 0c             	sub    $0xc,%esp
     860:	56                   	push   %esi
     861:	e8 fa b5 00 00       	call   be60 <strlen>
       return atoi(buf);
     866:	01 c3                	add    %eax,%ebx
     868:	83 c4 10             	add    $0x10,%esp
     86b:	89 5d 08             	mov    %ebx,0x8(%ebp)
     else
       while (*buf++!='\n')//go to next line
            ;
      }while(*buf!='\0');
  return -1;//Assuming all values are supposed to be non-negative
}
     86e:	8d 65 f8             	lea    -0x8(%ebp),%esp
     871:	5b                   	pop    %ebx
     872:	5e                   	pop    %esi
     873:	5d                   	pop    %ebp
int get_val(char *buf, char *entry){

  do{
     if(strncmp(buf, entry, strlen(entry))==0){
       buf+=strlen(entry);
       return atoi(buf);
     874:	e9 27 b7 00 00       	jmp    bfa0 <atoi>
     879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000880 <build_activate_disable_activate>:
}

// Write into buffer the sequence of activating, disabling then activating a given controller.
// Returns the buffer written.
char* build_activate_disable_activate(int controller_type)
{
     880:	55                   	push   %ebp
     881:	31 c0                	xor    %eax,%eax
     883:	89 e5                	mov    %esp,%ebp
     885:	56                   	push   %esi
     886:	53                   	push   %ebx
     887:	8b 75 08             	mov    0x8(%ebp),%esi
  if (!is_valid_controller_type(controller_type)) {
     88a:	83 fe 03             	cmp    $0x3,%esi
     88d:	0f 87 83 00 00 00    	ja     916 <build_activate_disable_activate+0x96>
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 3;
  char* buf = malloc(max_size);
     893:	83 ec 0c             	sub    $0xc,%esp
char* get_controller_name(int controller_type) {
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  return controller_names[controller_type];
     896:	c1 e6 04             	shl    $0x4,%esi
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 3;
  char* buf = malloc(max_size);
     899:	6a 36                	push   $0x36
char* get_controller_name(int controller_type) {
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  return controller_names[controller_type];
     89b:	81 c6 00 40 01 00    	add    $0x14000,%esi
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 3;
  char* buf = malloc(max_size);
     8a1:	e8 3a bd 00 00       	call   c5e0 <malloc>
  memset(buf, 0, max_size);
     8a6:	83 c4 0c             	add    $0xc,%esp
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 3;
  char* buf = malloc(max_size);
     8a9:	89 c3                	mov    %eax,%ebx
  memset(buf, 0, max_size);
     8ab:	6a 36                	push   $0x36
     8ad:	6a 00                	push   $0x0
     8af:	50                   	push   %eax
     8b0:	e8 db b5 00 00       	call   be90 <memset>

  // "+controller "
  strcat(buf, "+");
     8b5:	58                   	pop    %eax
     8b6:	5a                   	pop    %edx
     8b7:	68 d0 c8 00 00       	push   $0xc8d0
     8bc:	53                   	push   %ebx
     8bd:	e8 fe b7 00 00       	call   c0c0 <strcat>
  strcat(buf, get_controller_name(controller_type));
     8c2:	59                   	pop    %ecx
     8c3:	58                   	pop    %eax
     8c4:	56                   	push   %esi
     8c5:	53                   	push   %ebx
     8c6:	e8 f5 b7 00 00       	call   c0c0 <strcat>
  strcat(buf, " ");
     8cb:	58                   	pop    %eax
     8cc:	5a                   	pop    %edx
     8cd:	68 8c cf 00 00       	push   $0xcf8c
     8d2:	53                   	push   %ebx
     8d3:	e8 e8 b7 00 00       	call   c0c0 <strcat>

  // "-controller "
  strcat(buf, "-");
     8d8:	59                   	pop    %ecx
     8d9:	58                   	pop    %eax
     8da:	68 d2 c8 00 00       	push   $0xc8d2
     8df:	53                   	push   %ebx
     8e0:	e8 db b7 00 00       	call   c0c0 <strcat>
  strcat(buf, get_controller_name(controller_type));
     8e5:	58                   	pop    %eax
     8e6:	5a                   	pop    %edx
     8e7:	56                   	push   %esi
     8e8:	53                   	push   %ebx
     8e9:	e8 d2 b7 00 00       	call   c0c0 <strcat>
  strcat(buf, " ");
     8ee:	59                   	pop    %ecx
     8ef:	58                   	pop    %eax
     8f0:	68 8c cf 00 00       	push   $0xcf8c
     8f5:	53                   	push   %ebx
     8f6:	e8 c5 b7 00 00       	call   c0c0 <strcat>

  // "+controller"
  strcat(buf, "+");
     8fb:	58                   	pop    %eax
     8fc:	5a                   	pop    %edx
     8fd:	68 d0 c8 00 00       	push   $0xc8d0
     902:	53                   	push   %ebx
     903:	e8 b8 b7 00 00       	call   c0c0 <strcat>
  strcat(buf, get_controller_name(controller_type));
     908:	59                   	pop    %ecx
     909:	58                   	pop    %eax
     90a:	56                   	push   %esi
     90b:	53                   	push   %ebx
     90c:	e8 af b7 00 00       	call   c0c0 <strcat>

  return buf;
     911:	83 c4 10             	add    $0x10,%esp
     914:	89 d8                	mov    %ebx,%eax
}
     916:	8d 65 f8             	lea    -0x8(%ebp),%esp
     919:	5b                   	pop    %ebx
     91a:	5e                   	pop    %esi
     91b:	5d                   	pop    %ebp
     91c:	c3                   	ret    
     91d:	8d 76 00             	lea    0x0(%esi),%esi

00000920 <build_activate_disable>:

// Write into buffer the sequence of activating then disabling a given controller.
// Returns the buffer written.
char* build_activate_disable(int controller_type)
{
     920:	55                   	push   %ebp
     921:	31 c0                	xor    %eax,%eax
     923:	89 e5                	mov    %esp,%ebp
     925:	56                   	push   %esi
     926:	53                   	push   %ebx
     927:	8b 75 08             	mov    0x8(%ebp),%esi
  if (!is_valid_controller_type(controller_type)) {
     92a:	83 fe 03             	cmp    $0x3,%esi
     92d:	77 60                	ja     98f <build_activate_disable+0x6f>
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 2;
  char* buf = malloc(max_size);
     92f:	83 ec 0c             	sub    $0xc,%esp
char* get_controller_name(int controller_type) {
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  return controller_names[controller_type];
     932:	c1 e6 04             	shl    $0x4,%esi
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 2;
  char* buf = malloc(max_size);
     935:	6a 24                	push   $0x24
char* get_controller_name(int controller_type) {
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  return controller_names[controller_type];
     937:	81 c6 00 40 01 00    	add    $0x14000,%esi
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 2;
  char* buf = malloc(max_size);
     93d:	e8 9e bc 00 00       	call   c5e0 <malloc>
  memset(buf, 0, max_size);
     942:	83 c4 0c             	add    $0xc,%esp
  if (!is_valid_controller_type(controller_type)) {
    return 0;
  }

  int max_size = (MAX_CONTROLLER_NAME_LENGTH + 2) * 2;
  char* buf = malloc(max_size);
     945:	89 c3                	mov    %eax,%ebx
  memset(buf, 0, max_size);
     947:	6a 24                	push   $0x24
     949:	6a 00                	push   $0x0
     94b:	50                   	push   %eax
     94c:	e8 3f b5 00 00       	call   be90 <memset>

  // "+controller "
  strcat(buf, "+");
     951:	58                   	pop    %eax
     952:	5a                   	pop    %edx
     953:	68 d0 c8 00 00       	push   $0xc8d0
     958:	53                   	push   %ebx
     959:	e8 62 b7 00 00       	call   c0c0 <strcat>
  strcat(buf, get_controller_name(controller_type));
     95e:	59                   	pop    %ecx
     95f:	58                   	pop    %eax
     960:	56                   	push   %esi
     961:	53                   	push   %ebx
     962:	e8 59 b7 00 00       	call   c0c0 <strcat>
  strcat(buf, " ");
     967:	58                   	pop    %eax
     968:	5a                   	pop    %edx
     969:	68 8c cf 00 00       	push   $0xcf8c
     96e:	53                   	push   %ebx
     96f:	e8 4c b7 00 00       	call   c0c0 <strcat>

  // "-controller"
  strcat(buf, "-");
     974:	59                   	pop    %ecx
     975:	58                   	pop    %eax
     976:	68 d2 c8 00 00       	push   $0xc8d2
     97b:	53                   	push   %ebx
     97c:	e8 3f b7 00 00       	call   c0c0 <strcat>
  strcat(buf, get_controller_name(controller_type));
     981:	58                   	pop    %eax
     982:	5a                   	pop    %edx
     983:	56                   	push   %esi
     984:	53                   	push   %ebx
     985:	e8 36 b7 00 00       	call   c0c0 <strcat>

  return buf;
     98a:	83 c4 10             	add    $0x10,%esp
     98d:	89 d8                	mov    %ebx,%eax
}
     98f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     992:	5b                   	pop    %ebx
     993:	5e                   	pop    %esi
     994:	5d                   	pop    %ebp
     995:	c3                   	ret    
     996:	8d 76 00             	lea    0x0(%esi),%esi
     999:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009a0 <test_mount_cgroup_fs>:

TEST(test_mount_cgroup_fs)
{
     9a0:	55                   	push   %ebp
     9a1:	89 e5                	mov    %esp,%ebp
     9a3:	56                   	push   %esi
     9a4:	53                   	push   %ebx
     9a5:	31 db                	xor    %ebx,%ebx
    ASSERT_FALSE(mkdir(ROOT_CGROUP));
     9a7:	83 ec 0c             	sub    $0xc,%esp
     9aa:	68 d4 c8 00 00       	push   $0xc8d4
     9af:	e8 9c b8 00 00       	call   c250 <mkdir>
     9b4:	83 c4 10             	add    $0x10,%esp
     9b7:	85 c0                	test   %eax,%eax
     9b9:	75 1a                	jne    9d5 <test_mount_cgroup_fs+0x35>
     9bb:	eb 73                	jmp    a30 <test_mount_cgroup_fs+0x90>
     9bd:	8d 76 00             	lea    0x0(%esi),%esi
     9c0:	83 ec 08             	sub    $0x8,%esp
     9c3:	83 c3 01             	add    $0x1,%ebx
     9c6:	68 18 c8 00 00       	push   $0xc818
     9cb:	6a 01                	push   $0x1
     9cd:	e8 ce b9 00 00       	call   c3a0 <printf>
     9d2:	83 c4 10             	add    $0x10,%esp
     9d5:	83 ec 0c             	sub    $0xc,%esp
     9d8:	68 dc c8 00 00       	push   $0xc8dc
     9dd:	e8 7e b4 00 00       	call   be60 <strlen>
     9e2:	89 c6                	mov    %eax,%esi
     9e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     9eb:	e8 70 b4 00 00       	call   be60 <strlen>
     9f0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     9f4:	83 c4 10             	add    $0x10,%esp
     9f7:	39 d8                	cmp    %ebx,%eax
     9f9:	77 c5                	ja     9c0 <test_mount_cgroup_fs+0x20>
     9fb:	83 ec 0c             	sub    $0xc,%esp
     9fe:	68 6a 01 00 00       	push   $0x16a
     a03:	68 30 c8 00 00       	push   $0xc830
     a08:	ff 75 08             	pushl  0x8(%ebp)
     a0b:	68 70 d4 00 00       	push   $0xd470
     a10:	6a 01                	push   $0x1
     a12:	e8 89 b9 00 00       	call   c3a0 <printf>
     a17:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     a1e:	00 00 00 
     a21:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(mount(0, ROOT_CGROUP, CGROUP));
}
     a24:	8d 65 f8             	lea    -0x8(%ebp),%esp
     a27:	5b                   	pop    %ebx
     a28:	5e                   	pop    %esi
     a29:	5d                   	pop    %ebp
     a2a:	c3                   	ret    
     a2b:	90                   	nop
     a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

TEST(test_mount_cgroup_fs)
{
    ASSERT_FALSE(mkdir(ROOT_CGROUP));
    ASSERT_FALSE(mount(0, ROOT_CGROUP, CGROUP));
     a30:	83 ec 04             	sub    $0x4,%esp
     a33:	31 db                	xor    %ebx,%ebx
     a35:	68 d5 c8 00 00       	push   $0xc8d5
     a3a:	68 d4 c8 00 00       	push   $0xc8d4
     a3f:	6a 00                	push   $0x0
     a41:	e8 42 b8 00 00       	call   c288 <mount>
     a46:	83 c4 10             	add    $0x10,%esp
     a49:	85 c0                	test   %eax,%eax
     a4b:	75 18                	jne    a65 <test_mount_cgroup_fs+0xc5>
     a4d:	eb d5                	jmp    a24 <test_mount_cgroup_fs+0x84>
     a4f:	90                   	nop
     a50:	83 ec 08             	sub    $0x8,%esp
     a53:	83 c3 01             	add    $0x1,%ebx
     a56:	68 18 c8 00 00       	push   $0xc818
     a5b:	6a 01                	push   $0x1
     a5d:	e8 3e b9 00 00       	call   c3a0 <printf>
     a62:	83 c4 10             	add    $0x10,%esp
     a65:	83 ec 0c             	sub    $0xc,%esp
     a68:	68 ef c8 00 00       	push   $0xc8ef
     a6d:	e8 ee b3 00 00       	call   be60 <strlen>
     a72:	89 c6                	mov    %eax,%esi
     a74:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     a7b:	e8 e0 b3 00 00       	call   be60 <strlen>
     a80:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     a84:	83 c4 10             	add    $0x10,%esp
     a87:	39 d8                	cmp    %ebx,%eax
     a89:	77 c5                	ja     a50 <test_mount_cgroup_fs+0xb0>
     a8b:	83 ec 0c             	sub    $0xc,%esp
     a8e:	68 6b 01 00 00       	push   $0x16b
     a93:	68 30 c8 00 00       	push   $0xc830
     a98:	ff 75 08             	pushl  0x8(%ebp)
     a9b:	68 ac d4 00 00       	push   $0xd4ac
     aa0:	6a 01                	push   $0x1
     aa2:	e8 f9 b8 00 00       	call   c3a0 <printf>
     aa7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     aae:	00 00 00 
     ab1:	83 c4 20             	add    $0x20,%esp
}
     ab4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ab7:	5b                   	pop    %ebx
     ab8:	5e                   	pop    %esi
     ab9:	5d                   	pop    %ebp
     aba:	c3                   	ret    
     abb:	90                   	nop
     abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ac0 <test_umount_cgroup_fs>:

TEST(test_umount_cgroup_fs)
{
     ac0:	55                   	push   %ebp
     ac1:	89 e5                	mov    %esp,%ebp
     ac3:	56                   	push   %esi
     ac4:	53                   	push   %ebx
     ac5:	31 db                	xor    %ebx,%ebx
    ASSERT_FALSE(umount(ROOT_CGROUP));
     ac7:	83 ec 0c             	sub    $0xc,%esp
     aca:	68 d4 c8 00 00       	push   $0xc8d4
     acf:	e8 bc b7 00 00       	call   c290 <umount>
     ad4:	83 c4 10             	add    $0x10,%esp
     ad7:	85 c0                	test   %eax,%eax
     ad9:	75 1a                	jne    af5 <test_umount_cgroup_fs+0x35>
     adb:	eb 73                	jmp    b50 <test_umount_cgroup_fs+0x90>
     add:	8d 76 00             	lea    0x0(%esi),%esi
     ae0:	83 ec 08             	sub    $0x8,%esp
     ae3:	83 c3 01             	add    $0x1,%ebx
     ae6:	68 18 c8 00 00       	push   $0xc818
     aeb:	6a 01                	push   $0x1
     aed:	e8 ae b8 00 00       	call   c3a0 <printf>
     af2:	83 c4 10             	add    $0x10,%esp
     af5:	83 ec 0c             	sub    $0xc,%esp
     af8:	68 0d c9 00 00       	push   $0xc90d
     afd:	e8 5e b3 00 00       	call   be60 <strlen>
     b02:	89 c6                	mov    %eax,%esi
     b04:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     b0b:	e8 50 b3 00 00       	call   be60 <strlen>
     b10:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     b14:	83 c4 10             	add    $0x10,%esp
     b17:	39 d8                	cmp    %ebx,%eax
     b19:	77 c5                	ja     ae0 <test_umount_cgroup_fs+0x20>
     b1b:	83 ec 0c             	sub    $0xc,%esp
     b1e:	68 70 01 00 00       	push   $0x170
     b23:	68 30 c8 00 00       	push   $0xc830
     b28:	ff 75 08             	pushl  0x8(%ebp)
     b2b:	68 f4 d4 00 00       	push   $0xd4f4
     b30:	6a 01                	push   $0x1
     b32:	e8 69 b8 00 00       	call   c3a0 <printf>
     b37:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     b3e:	00 00 00 
     b41:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(unlink(ROOT_CGROUP));
}
     b44:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b47:	5b                   	pop    %ebx
     b48:	5e                   	pop    %esi
     b49:	5d                   	pop    %ebp
     b4a:	c3                   	ret    
     b4b:	90                   	nop
     b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

TEST(test_umount_cgroup_fs)
{
    ASSERT_FALSE(umount(ROOT_CGROUP));
    ASSERT_FALSE(unlink(ROOT_CGROUP));
     b50:	83 ec 0c             	sub    $0xc,%esp
     b53:	31 db                	xor    %ebx,%ebx
     b55:	68 d4 c8 00 00       	push   $0xc8d4
     b5a:	e8 d9 b6 00 00       	call   c238 <unlink>
     b5f:	83 c4 10             	add    $0x10,%esp
     b62:	85 c0                	test   %eax,%eax
     b64:	75 1f                	jne    b85 <test_umount_cgroup_fs+0xc5>
     b66:	eb dc                	jmp    b44 <test_umount_cgroup_fs+0x84>
     b68:	90                   	nop
     b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b70:	83 ec 08             	sub    $0x8,%esp
     b73:	83 c3 01             	add    $0x1,%ebx
     b76:	68 18 c8 00 00       	push   $0xc818
     b7b:	6a 01                	push   $0x1
     b7d:	e8 1e b8 00 00       	call   c3a0 <printf>
     b82:	83 c4 10             	add    $0x10,%esp
     b85:	83 ec 0c             	sub    $0xc,%esp
     b88:	68 21 c9 00 00       	push   $0xc921
     b8d:	e8 ce b2 00 00       	call   be60 <strlen>
     b92:	89 c6                	mov    %eax,%esi
     b94:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     b9b:	e8 c0 b2 00 00       	call   be60 <strlen>
     ba0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     ba4:	83 c4 10             	add    $0x10,%esp
     ba7:	39 d8                	cmp    %ebx,%eax
     ba9:	77 c5                	ja     b70 <test_umount_cgroup_fs+0xb0>
     bab:	83 ec 0c             	sub    $0xc,%esp
     bae:	68 71 01 00 00       	push   $0x171
     bb3:	68 30 c8 00 00       	push   $0xc830
     bb8:	ff 75 08             	pushl  0x8(%ebp)
     bbb:	68 34 d5 00 00       	push   $0xd534
     bc0:	6a 01                	push   $0x1
     bc2:	e8 d9 b7 00 00       	call   c3a0 <printf>
     bc7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     bce:	00 00 00 
     bd1:	83 c4 20             	add    $0x20,%esp
}
     bd4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     bd7:	5b                   	pop    %ebx
     bd8:	5e                   	pop    %esi
     bd9:	5d                   	pop    %ebp
     bda:	c3                   	ret    
     bdb:	90                   	nop
     bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000be0 <test_creating_cgroups>:

TEST(test_creating_cgroups)
{
     be0:	55                   	push   %ebp
     be1:	89 e5                	mov    %esp,%ebp
     be3:	56                   	push   %esi
     be4:	53                   	push   %ebx
     be5:	31 db                	xor    %ebx,%ebx
    ASSERT_FALSE(mkdir(TEST_1));
     be7:	83 ec 0c             	sub    $0xc,%esp
     bea:	68 35 c9 00 00       	push   $0xc935
     bef:	e8 5c b6 00 00       	call   c250 <mkdir>
     bf4:	83 c4 10             	add    $0x10,%esp
     bf7:	85 c0                	test   %eax,%eax
     bf9:	75 1a                	jne    c15 <test_creating_cgroups+0x35>
     bfb:	eb 73                	jmp    c70 <test_creating_cgroups+0x90>
     bfd:	8d 76 00             	lea    0x0(%esi),%esi
     c00:	83 ec 08             	sub    $0x8,%esp
     c03:	83 c3 01             	add    $0x1,%ebx
     c06:	68 18 c8 00 00       	push   $0xc818
     c0b:	6a 01                	push   $0x1
     c0d:	e8 8e b7 00 00       	call   c3a0 <printf>
     c12:	83 c4 10             	add    $0x10,%esp
     c15:	83 ec 0c             	sub    $0xc,%esp
     c18:	68 43 c9 00 00       	push   $0xc943
     c1d:	e8 3e b2 00 00       	call   be60 <strlen>
     c22:	89 c6                	mov    %eax,%esi
     c24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     c2b:	e8 30 b2 00 00       	call   be60 <strlen>
     c30:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     c34:	83 c4 10             	add    $0x10,%esp
     c37:	39 d8                	cmp    %ebx,%eax
     c39:	77 c5                	ja     c00 <test_creating_cgroups+0x20>
     c3b:	83 ec 0c             	sub    $0xc,%esp
     c3e:	68 76 01 00 00       	push   $0x176
     c43:	68 30 c8 00 00       	push   $0xc830
     c48:	ff 75 08             	pushl  0x8(%ebp)
     c4b:	68 74 d5 00 00       	push   $0xd574
     c50:	6a 01                	push   $0x1
     c52:	e8 49 b7 00 00       	call   c3a0 <printf>
     c57:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     c5e:	00 00 00 
     c61:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(mkdir(TEST_2));
    ASSERT_FALSE(mkdir(TEST_1_1));
    ASSERT_FALSE(mkdir(TEST_1_2));
}
     c64:	8d 65 f8             	lea    -0x8(%ebp),%esp
     c67:	5b                   	pop    %ebx
     c68:	5e                   	pop    %esi
     c69:	5d                   	pop    %ebp
     c6a:	c3                   	ret    
     c6b:	90                   	nop
     c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

TEST(test_creating_cgroups)
{
    ASSERT_FALSE(mkdir(TEST_1));
    ASSERT_FALSE(mkdir(TEST_2));
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	31 db                	xor    %ebx,%ebx
     c75:	68 51 c9 00 00       	push   $0xc951
     c7a:	e8 d1 b5 00 00       	call   c250 <mkdir>
     c7f:	83 c4 10             	add    $0x10,%esp
     c82:	85 c0                	test   %eax,%eax
     c84:	75 1f                	jne    ca5 <test_creating_cgroups+0xc5>
     c86:	eb 78                	jmp    d00 <test_creating_cgroups+0x120>
     c88:	90                   	nop
     c89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c90:	83 ec 08             	sub    $0x8,%esp
     c93:	83 c3 01             	add    $0x1,%ebx
     c96:	68 18 c8 00 00       	push   $0xc818
     c9b:	6a 01                	push   $0x1
     c9d:	e8 fe b6 00 00       	call   c3a0 <printf>
     ca2:	83 c4 10             	add    $0x10,%esp
     ca5:	83 ec 0c             	sub    $0xc,%esp
     ca8:	68 5f c9 00 00       	push   $0xc95f
     cad:	e8 ae b1 00 00       	call   be60 <strlen>
     cb2:	89 c6                	mov    %eax,%esi
     cb4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     cbb:	e8 a0 b1 00 00       	call   be60 <strlen>
     cc0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     cc4:	83 c4 10             	add    $0x10,%esp
     cc7:	39 d8                	cmp    %ebx,%eax
     cc9:	77 c5                	ja     c90 <test_creating_cgroups+0xb0>
     ccb:	83 ec 0c             	sub    $0xc,%esp
     cce:	68 77 01 00 00       	push   $0x177
     cd3:	68 30 c8 00 00       	push   $0xc830
     cd8:	ff 75 08             	pushl  0x8(%ebp)
     cdb:	68 ac d5 00 00       	push   $0xd5ac
     ce0:	6a 01                	push   $0x1
     ce2:	e8 b9 b6 00 00       	call   c3a0 <printf>
     ce7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     cee:	00 00 00 
     cf1:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(mkdir(TEST_1_1));
    ASSERT_FALSE(mkdir(TEST_1_2));
}
     cf4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cf7:	5b                   	pop    %ebx
     cf8:	5e                   	pop    %esi
     cf9:	5d                   	pop    %ebp
     cfa:	c3                   	ret    
     cfb:	90                   	nop
     cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

TEST(test_creating_cgroups)
{
    ASSERT_FALSE(mkdir(TEST_1));
    ASSERT_FALSE(mkdir(TEST_2));
    ASSERT_FALSE(mkdir(TEST_1_1));
     d00:	83 ec 0c             	sub    $0xc,%esp
     d03:	31 db                	xor    %ebx,%ebx
     d05:	68 6d c9 00 00       	push   $0xc96d
     d0a:	e8 41 b5 00 00       	call   c250 <mkdir>
     d0f:	83 c4 10             	add    $0x10,%esp
     d12:	85 c0                	test   %eax,%eax
     d14:	75 1f                	jne    d35 <test_creating_cgroups+0x155>
     d16:	eb 71                	jmp    d89 <test_creating_cgroups+0x1a9>
     d18:	90                   	nop
     d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d20:	83 ec 08             	sub    $0x8,%esp
     d23:	83 c3 01             	add    $0x1,%ebx
     d26:	68 18 c8 00 00       	push   $0xc818
     d2b:	6a 01                	push   $0x1
     d2d:	e8 6e b6 00 00       	call   c3a0 <printf>
     d32:	83 c4 10             	add    $0x10,%esp
     d35:	83 ec 0c             	sub    $0xc,%esp
     d38:	68 7d c9 00 00       	push   $0xc97d
     d3d:	e8 1e b1 00 00       	call   be60 <strlen>
     d42:	89 c6                	mov    %eax,%esi
     d44:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     d4b:	e8 10 b1 00 00       	call   be60 <strlen>
     d50:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     d54:	83 c4 10             	add    $0x10,%esp
     d57:	39 d8                	cmp    %ebx,%eax
     d59:	77 c5                	ja     d20 <test_creating_cgroups+0x140>
     d5b:	83 ec 0c             	sub    $0xc,%esp
     d5e:	68 78 01 00 00       	push   $0x178
     d63:	68 30 c8 00 00       	push   $0xc830
     d68:	ff 75 08             	pushl  0x8(%ebp)
     d6b:	68 e4 d5 00 00       	push   $0xd5e4
     d70:	6a 01                	push   $0x1
     d72:	e8 29 b6 00 00       	call   c3a0 <printf>
     d77:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     d7e:	00 00 00 
     d81:	83 c4 20             	add    $0x20,%esp
     d84:	e9 db fe ff ff       	jmp    c64 <test_creating_cgroups+0x84>
    ASSERT_FALSE(mkdir(TEST_1_2));
     d89:	83 ec 0c             	sub    $0xc,%esp
     d8c:	31 db                	xor    %ebx,%ebx
     d8e:	68 8d c9 00 00       	push   $0xc98d
     d93:	e8 b8 b4 00 00       	call   c250 <mkdir>
     d98:	83 c4 10             	add    $0x10,%esp
     d9b:	85 c0                	test   %eax,%eax
     d9d:	75 1e                	jne    dbd <test_creating_cgroups+0x1dd>
     d9f:	e9 c0 fe ff ff       	jmp    c64 <test_creating_cgroups+0x84>
     da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     da8:	83 ec 08             	sub    $0x8,%esp
     dab:	83 c3 01             	add    $0x1,%ebx
     dae:	68 18 c8 00 00       	push   $0xc818
     db3:	6a 01                	push   $0x1
     db5:	e8 e6 b5 00 00       	call   c3a0 <printf>
     dba:	83 c4 10             	add    $0x10,%esp
     dbd:	83 ec 0c             	sub    $0xc,%esp
     dc0:	68 9d c9 00 00       	push   $0xc99d
     dc5:	e8 96 b0 00 00       	call   be60 <strlen>
     dca:	89 c6                	mov    %eax,%esi
     dcc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     dd3:	e8 88 b0 00 00       	call   be60 <strlen>
     dd8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     ddc:	83 c4 10             	add    $0x10,%esp
     ddf:	39 d8                	cmp    %ebx,%eax
     de1:	77 c5                	ja     da8 <test_creating_cgroups+0x1c8>
     de3:	83 ec 0c             	sub    $0xc,%esp
     de6:	68 79 01 00 00       	push   $0x179
     deb:	68 30 c8 00 00       	push   $0xc830
     df0:	ff 75 08             	pushl  0x8(%ebp)
     df3:	68 20 d6 00 00       	push   $0xd620
     df8:	6a 01                	push   $0x1
     dfa:	e8 a1 b5 00 00       	call   c3a0 <printf>
     dff:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     e06:	00 00 00 
     e09:	83 c4 20             	add    $0x20,%esp
     e0c:	e9 53 fe ff ff       	jmp    c64 <test_creating_cgroups+0x84>
     e11:	eb 0d                	jmp    e20 <test_deleting_cgroups>
     e13:	90                   	nop
     e14:	90                   	nop
     e15:	90                   	nop
     e16:	90                   	nop
     e17:	90                   	nop
     e18:	90                   	nop
     e19:	90                   	nop
     e1a:	90                   	nop
     e1b:	90                   	nop
     e1c:	90                   	nop
     e1d:	90                   	nop
     e1e:	90                   	nop
     e1f:	90                   	nop

00000e20 <test_deleting_cgroups>:
}

TEST(test_deleting_cgroups)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	56                   	push   %esi
     e24:	53                   	push   %ebx
     e25:	31 db                	xor    %ebx,%ebx
    ASSERT_FALSE(unlink(TEST_1_2));
     e27:	83 ec 0c             	sub    $0xc,%esp
     e2a:	68 8d c9 00 00       	push   $0xc98d
     e2f:	e8 04 b4 00 00       	call   c238 <unlink>
     e34:	83 c4 10             	add    $0x10,%esp
     e37:	85 c0                	test   %eax,%eax
     e39:	75 1a                	jne    e55 <test_deleting_cgroups+0x35>
     e3b:	eb 73                	jmp    eb0 <test_deleting_cgroups+0x90>
     e3d:	8d 76 00             	lea    0x0(%esi),%esi
     e40:	83 ec 08             	sub    $0x8,%esp
     e43:	83 c3 01             	add    $0x1,%ebx
     e46:	68 18 c8 00 00       	push   $0xc818
     e4b:	6a 01                	push   $0x1
     e4d:	e8 4e b5 00 00       	call   c3a0 <printf>
     e52:	83 c4 10             	add    $0x10,%esp
     e55:	83 ec 0c             	sub    $0xc,%esp
     e58:	68 ad c9 00 00       	push   $0xc9ad
     e5d:	e8 fe af 00 00       	call   be60 <strlen>
     e62:	89 c6                	mov    %eax,%esi
     e64:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     e6b:	e8 f0 af 00 00       	call   be60 <strlen>
     e70:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     e74:	83 c4 10             	add    $0x10,%esp
     e77:	39 d8                	cmp    %ebx,%eax
     e79:	77 c5                	ja     e40 <test_deleting_cgroups+0x20>
     e7b:	83 ec 0c             	sub    $0xc,%esp
     e7e:	68 7e 01 00 00       	push   $0x17e
     e83:	68 30 c8 00 00       	push   $0xc830
     e88:	ff 75 08             	pushl  0x8(%ebp)
     e8b:	68 5c d6 00 00       	push   $0xd65c
     e90:	6a 01                	push   $0x1
     e92:	e8 09 b5 00 00       	call   c3a0 <printf>
     e97:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     e9e:	00 00 00 
     ea1:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(unlink(TEST_1_1));
    ASSERT_FALSE(unlink(TEST_2));
    ASSERT_FALSE(unlink(TEST_1));
}
     ea4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ea7:	5b                   	pop    %ebx
     ea8:	5e                   	pop    %esi
     ea9:	5d                   	pop    %ebp
     eaa:	c3                   	ret    
     eab:	90                   	nop
     eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

TEST(test_deleting_cgroups)
{
    ASSERT_FALSE(unlink(TEST_1_2));
    ASSERT_FALSE(unlink(TEST_1_1));
     eb0:	83 ec 0c             	sub    $0xc,%esp
     eb3:	31 db                	xor    %ebx,%ebx
     eb5:	68 6d c9 00 00       	push   $0xc96d
     eba:	e8 79 b3 00 00       	call   c238 <unlink>
     ebf:	83 c4 10             	add    $0x10,%esp
     ec2:	85 c0                	test   %eax,%eax
     ec4:	75 1f                	jne    ee5 <test_deleting_cgroups+0xc5>
     ec6:	eb 78                	jmp    f40 <test_deleting_cgroups+0x120>
     ec8:	90                   	nop
     ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ed0:	83 ec 08             	sub    $0x8,%esp
     ed3:	83 c3 01             	add    $0x1,%ebx
     ed6:	68 18 c8 00 00       	push   $0xc818
     edb:	6a 01                	push   $0x1
     edd:	e8 be b4 00 00       	call   c3a0 <printf>
     ee2:	83 c4 10             	add    $0x10,%esp
     ee5:	83 ec 0c             	sub    $0xc,%esp
     ee8:	68 be c9 00 00       	push   $0xc9be
     eed:	e8 6e af 00 00       	call   be60 <strlen>
     ef2:	89 c6                	mov    %eax,%esi
     ef4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     efb:	e8 60 af 00 00       	call   be60 <strlen>
     f00:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     f04:	83 c4 10             	add    $0x10,%esp
     f07:	39 d8                	cmp    %ebx,%eax
     f09:	77 c5                	ja     ed0 <test_deleting_cgroups+0xb0>
     f0b:	83 ec 0c             	sub    $0xc,%esp
     f0e:	68 7f 01 00 00       	push   $0x17f
     f13:	68 30 c8 00 00       	push   $0xc830
     f18:	ff 75 08             	pushl  0x8(%ebp)
     f1b:	68 98 d6 00 00       	push   $0xd698
     f20:	6a 01                	push   $0x1
     f22:	e8 79 b4 00 00       	call   c3a0 <printf>
     f27:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     f2e:	00 00 00 
     f31:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(unlink(TEST_2));
    ASSERT_FALSE(unlink(TEST_1));
}
     f34:	8d 65 f8             	lea    -0x8(%ebp),%esp
     f37:	5b                   	pop    %ebx
     f38:	5e                   	pop    %esi
     f39:	5d                   	pop    %ebp
     f3a:	c3                   	ret    
     f3b:	90                   	nop
     f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

TEST(test_deleting_cgroups)
{
    ASSERT_FALSE(unlink(TEST_1_2));
    ASSERT_FALSE(unlink(TEST_1_1));
    ASSERT_FALSE(unlink(TEST_2));
     f40:	83 ec 0c             	sub    $0xc,%esp
     f43:	31 db                	xor    %ebx,%ebx
     f45:	68 51 c9 00 00       	push   $0xc951
     f4a:	e8 e9 b2 00 00       	call   c238 <unlink>
     f4f:	83 c4 10             	add    $0x10,%esp
     f52:	85 c0                	test   %eax,%eax
     f54:	75 1f                	jne    f75 <test_deleting_cgroups+0x155>
     f56:	eb 71                	jmp    fc9 <test_deleting_cgroups+0x1a9>
     f58:	90                   	nop
     f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f60:	83 ec 08             	sub    $0x8,%esp
     f63:	83 c3 01             	add    $0x1,%ebx
     f66:	68 18 c8 00 00       	push   $0xc818
     f6b:	6a 01                	push   $0x1
     f6d:	e8 2e b4 00 00       	call   c3a0 <printf>
     f72:	83 c4 10             	add    $0x10,%esp
     f75:	83 ec 0c             	sub    $0xc,%esp
     f78:	68 cf c9 00 00       	push   $0xc9cf
     f7d:	e8 de ae 00 00       	call   be60 <strlen>
     f82:	89 c6                	mov    %eax,%esi
     f84:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
     f8b:	e8 d0 ae 00 00       	call   be60 <strlen>
     f90:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
     f94:	83 c4 10             	add    $0x10,%esp
     f97:	39 d8                	cmp    %ebx,%eax
     f99:	77 c5                	ja     f60 <test_deleting_cgroups+0x140>
     f9b:	83 ec 0c             	sub    $0xc,%esp
     f9e:	68 80 01 00 00       	push   $0x180
     fa3:	68 30 c8 00 00       	push   $0xc830
     fa8:	ff 75 08             	pushl  0x8(%ebp)
     fab:	68 d4 d6 00 00       	push   $0xd6d4
     fb0:	6a 01                	push   $0x1
     fb2:	e8 e9 b3 00 00       	call   c3a0 <printf>
     fb7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
     fbe:	00 00 00 
     fc1:	83 c4 20             	add    $0x20,%esp
     fc4:	e9 db fe ff ff       	jmp    ea4 <test_deleting_cgroups+0x84>
    ASSERT_FALSE(unlink(TEST_1));
     fc9:	83 ec 0c             	sub    $0xc,%esp
     fcc:	31 db                	xor    %ebx,%ebx
     fce:	68 35 c9 00 00       	push   $0xc935
     fd3:	e8 60 b2 00 00       	call   c238 <unlink>
     fd8:	83 c4 10             	add    $0x10,%esp
     fdb:	85 c0                	test   %eax,%eax
     fdd:	75 1e                	jne    ffd <test_deleting_cgroups+0x1dd>
     fdf:	e9 c0 fe ff ff       	jmp    ea4 <test_deleting_cgroups+0x84>
     fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     fe8:	83 ec 08             	sub    $0x8,%esp
     feb:	83 c3 01             	add    $0x1,%ebx
     fee:	68 18 c8 00 00       	push   $0xc818
     ff3:	6a 01                	push   $0x1
     ff5:	e8 a6 b3 00 00       	call   c3a0 <printf>
     ffa:	83 c4 10             	add    $0x10,%esp
     ffd:	83 ec 0c             	sub    $0xc,%esp
    1000:	68 de c9 00 00       	push   $0xc9de
    1005:	e8 56 ae 00 00       	call   be60 <strlen>
    100a:	89 c6                	mov    %eax,%esi
    100c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1013:	e8 48 ae 00 00       	call   be60 <strlen>
    1018:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    101c:	83 c4 10             	add    $0x10,%esp
    101f:	39 d8                	cmp    %ebx,%eax
    1021:	77 c5                	ja     fe8 <test_deleting_cgroups+0x1c8>
    1023:	83 ec 0c             	sub    $0xc,%esp
    1026:	68 81 01 00 00       	push   $0x181
    102b:	68 30 c8 00 00       	push   $0xc830
    1030:	ff 75 08             	pushl  0x8(%ebp)
    1033:	68 0c d7 00 00       	push   $0xd70c
    1038:	6a 01                	push   $0x1
    103a:	e8 61 b3 00 00       	call   c3a0 <printf>
    103f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1046:	00 00 00 
    1049:	83 c4 20             	add    $0x20,%esp
    104c:	e9 53 fe ff ff       	jmp    ea4 <test_deleting_cgroups+0x84>
    1051:	eb 0d                	jmp    1060 <test_opening_and_closing_cgroup_files>
    1053:	90                   	nop
    1054:	90                   	nop
    1055:	90                   	nop
    1056:	90                   	nop
    1057:	90                   	nop
    1058:	90                   	nop
    1059:	90                   	nop
    105a:	90                   	nop
    105b:	90                   	nop
    105c:	90                   	nop
    105d:	90                   	nop
    105e:	90                   	nop
    105f:	90                   	nop

00001060 <test_opening_and_closing_cgroup_files>:
}

TEST(test_opening_and_closing_cgroup_files)
{
    1060:	55                   	push   %ebp
    1061:	89 e5                	mov    %esp,%ebp
    1063:	57                   	push   %edi
    1064:	56                   	push   %esi
    1065:	53                   	push   %ebx
    1066:	31 db                	xor    %ebx,%ebx
    1068:	83 ec 18             	sub    $0x18,%esp
    106b:	8b 75 08             	mov    0x8(%ebp),%esi
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_PROCS));
    106e:	68 ed c9 00 00       	push   $0xc9ed
    1073:	e8 78 f1 ff ff       	call   1f0 <open_close_file>
    1078:	83 c4 10             	add    $0x10,%esp
    107b:	85 c0                	test   %eax,%eax
    107d:	74 1e                	je     109d <test_opening_and_closing_cgroup_files+0x3d>
    107f:	eb 77                	jmp    10f8 <test_opening_and_closing_cgroup_files+0x98>
    1081:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1088:	83 ec 08             	sub    $0x8,%esp
    108b:	83 c3 01             	add    $0x1,%ebx
    108e:	68 18 c8 00 00       	push   $0xc818
    1093:	6a 01                	push   $0x1
    1095:	e8 06 b3 00 00       	call   c3a0 <printf>
    109a:	83 c4 10             	add    $0x10,%esp
    109d:	83 ec 0c             	sub    $0xc,%esp
    10a0:	68 44 d7 00 00       	push   $0xd744
    10a5:	e8 b6 ad 00 00       	call   be60 <strlen>
    10aa:	89 c7                	mov    %eax,%edi
    10ac:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    10b3:	e8 a8 ad 00 00       	call   be60 <strlen>
    10b8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    10bc:	83 c4 10             	add    $0x10,%esp
    10bf:	39 d8                	cmp    %ebx,%eax
    10c1:	77 c5                	ja     1088 <test_opening_and_closing_cgroup_files+0x28>
    10c3:	83 ec 0c             	sub    $0xc,%esp
    10c6:	68 86 01 00 00       	push   $0x186
    10cb:	68 30 c8 00 00       	push   $0xc830
    10d0:	56                   	push   %esi
    10d1:	68 6c d7 00 00       	push   $0xd76c
    10d6:	6a 01                	push   $0x1
    10d8:	e8 c3 b2 00 00       	call   c3a0 <printf>
    10dd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    10e4:	00 00 00 
    10e7:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(open_close_file(TEST_1_SET_FRZ));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_CURRENT));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MIN));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_STAT));
}
    10ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10ed:	5b                   	pop    %ebx
    10ee:	5e                   	pop    %esi
    10ef:	5f                   	pop    %edi
    10f0:	5d                   	pop    %ebp
    10f1:	c3                   	ret    
    10f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
}

TEST(test_opening_and_closing_cgroup_files)
{
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_PROCS));
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_CONTROLLERS));
    10f8:	83 ec 0c             	sub    $0xc,%esp
    10fb:	31 db                	xor    %ebx,%ebx
    10fd:	68 bc d7 00 00       	push   $0xd7bc
    1102:	e8 e9 f0 ff ff       	call   1f0 <open_close_file>
    1107:	83 c4 10             	add    $0x10,%esp
    110a:	85 c0                	test   %eax,%eax
    110c:	74 17                	je     1125 <test_opening_and_closing_cgroup_files+0xc5>
    110e:	eb 70                	jmp    1180 <test_opening_and_closing_cgroup_files+0x120>
    1110:	83 ec 08             	sub    $0x8,%esp
    1113:	83 c3 01             	add    $0x1,%ebx
    1116:	68 18 c8 00 00       	push   $0xc818
    111b:	6a 01                	push   $0x1
    111d:	e8 7e b2 00 00       	call   c3a0 <printf>
    1122:	83 c4 10             	add    $0x10,%esp
    1125:	83 ec 0c             	sub    $0xc,%esp
    1128:	68 e0 d7 00 00       	push   $0xd7e0
    112d:	e8 2e ad 00 00       	call   be60 <strlen>
    1132:	89 c7                	mov    %eax,%edi
    1134:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    113b:	e8 20 ad 00 00       	call   be60 <strlen>
    1140:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1144:	83 c4 10             	add    $0x10,%esp
    1147:	39 d8                	cmp    %ebx,%eax
    1149:	77 c5                	ja     1110 <test_opening_and_closing_cgroup_files+0xb0>
    114b:	83 ec 0c             	sub    $0xc,%esp
    114e:	68 87 01 00 00       	push   $0x187
    1153:	68 30 c8 00 00       	push   $0xc830
    1158:	56                   	push   %esi
    1159:	68 0c d8 00 00       	push   $0xd80c
    115e:	6a 01                	push   $0x1
    1160:	e8 3b b2 00 00       	call   c3a0 <printf>
    1165:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    116c:	00 00 00 
    116f:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(open_close_file(TEST_1_SET_FRZ));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_CURRENT));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MIN));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_STAT));
}
    1172:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1175:	5b                   	pop    %ebx
    1176:	5e                   	pop    %esi
    1177:	5f                   	pop    %edi
    1178:	5d                   	pop    %ebp
    1179:	c3                   	ret    
    117a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

TEST(test_opening_and_closing_cgroup_files)
{
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_PROCS));
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_CONTROLLERS));
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_SUBTREE_CONTROL));
    1180:	83 ec 0c             	sub    $0xc,%esp
    1183:	31 db                	xor    %ebx,%ebx
    1185:	68 b8 d3 00 00       	push   $0xd3b8
    118a:	e8 61 f0 ff ff       	call   1f0 <open_close_file>
    118f:	83 c4 10             	add    $0x10,%esp
    1192:	85 c0                	test   %eax,%eax
    1194:	74 1f                	je     11b5 <test_opening_and_closing_cgroup_files+0x155>
    1196:	eb 6f                	jmp    1207 <test_opening_and_closing_cgroup_files+0x1a7>
    1198:	90                   	nop
    1199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11a0:	83 ec 08             	sub    $0x8,%esp
    11a3:	83 c3 01             	add    $0x1,%ebx
    11a6:	68 18 c8 00 00       	push   $0xc818
    11ab:	6a 01                	push   $0x1
    11ad:	e8 ee b1 00 00       	call   c3a0 <printf>
    11b2:	83 c4 10             	add    $0x10,%esp
    11b5:	83 ec 0c             	sub    $0xc,%esp
    11b8:	68 60 d8 00 00       	push   $0xd860
    11bd:	e8 9e ac 00 00       	call   be60 <strlen>
    11c2:	89 c7                	mov    %eax,%edi
    11c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    11cb:	e8 90 ac 00 00       	call   be60 <strlen>
    11d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    11d4:	83 c4 10             	add    $0x10,%esp
    11d7:	39 d8                	cmp    %ebx,%eax
    11d9:	77 c5                	ja     11a0 <test_opening_and_closing_cgroup_files+0x140>
    11db:	83 ec 0c             	sub    $0xc,%esp
    11de:	68 88 01 00 00       	push   $0x188
    11e3:	68 30 c8 00 00       	push   $0xc830
    11e8:	56                   	push   %esi
    11e9:	68 90 d8 00 00       	push   $0xd890
    11ee:	6a 01                	push   $0x1
    11f0:	e8 ab b1 00 00       	call   c3a0 <printf>
    11f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    11fc:	00 00 00 
    11ff:	83 c4 20             	add    $0x20,%esp
    1202:	e9 e3 fe ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_EVENTS));
    1207:	83 ec 0c             	sub    $0xc,%esp
    120a:	31 db                	xor    %ebx,%ebx
    120c:	68 08 ca 00 00       	push   $0xca08
    1211:	e8 da ef ff ff       	call   1f0 <open_close_file>
    1216:	83 c4 10             	add    $0x10,%esp
    1219:	85 c0                	test   %eax,%eax
    121b:	74 18                	je     1235 <test_opening_and_closing_cgroup_files+0x1d5>
    121d:	eb 68                	jmp    1287 <test_opening_and_closing_cgroup_files+0x227>
    121f:	90                   	nop
    1220:	83 ec 08             	sub    $0x8,%esp
    1223:	83 c3 01             	add    $0x1,%ebx
    1226:	68 18 c8 00 00       	push   $0xc818
    122b:	6a 01                	push   $0x1
    122d:	e8 6e b1 00 00       	call   c3a0 <printf>
    1232:	83 c4 10             	add    $0x10,%esp
    1235:	83 ec 0c             	sub    $0xc,%esp
    1238:	68 e8 d8 00 00       	push   $0xd8e8
    123d:	e8 1e ac 00 00       	call   be60 <strlen>
    1242:	89 c7                	mov    %eax,%edi
    1244:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    124b:	e8 10 ac 00 00       	call   be60 <strlen>
    1250:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1254:	83 c4 10             	add    $0x10,%esp
    1257:	39 d8                	cmp    %ebx,%eax
    1259:	77 c5                	ja     1220 <test_opening_and_closing_cgroup_files+0x1c0>
    125b:	83 ec 0c             	sub    $0xc,%esp
    125e:	68 89 01 00 00       	push   $0x189
    1263:	68 30 c8 00 00       	push   $0xc830
    1268:	56                   	push   %esi
    1269:	68 10 d9 00 00       	push   $0xd910
    126e:	6a 01                	push   $0x1
    1270:	e8 2b b1 00 00       	call   c3a0 <printf>
    1275:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    127c:	00 00 00 
    127f:	83 c4 20             	add    $0x20,%esp
    1282:	e9 63 fe ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_DESCENDANTS));
    1287:	83 ec 0c             	sub    $0xc,%esp
    128a:	31 db                	xor    %ebx,%ebx
    128c:	68 60 d9 00 00       	push   $0xd960
    1291:	e8 5a ef ff ff       	call   1f0 <open_close_file>
    1296:	83 c4 10             	add    $0x10,%esp
    1299:	85 c0                	test   %eax,%eax
    129b:	74 18                	je     12b5 <test_opening_and_closing_cgroup_files+0x255>
    129d:	eb 68                	jmp    1307 <test_opening_and_closing_cgroup_files+0x2a7>
    129f:	90                   	nop
    12a0:	83 ec 08             	sub    $0x8,%esp
    12a3:	83 c3 01             	add    $0x1,%ebx
    12a6:	68 18 c8 00 00       	push   $0xc818
    12ab:	6a 01                	push   $0x1
    12ad:	e8 ee b0 00 00       	call   c3a0 <printf>
    12b2:	83 c4 10             	add    $0x10,%esp
    12b5:	83 ec 0c             	sub    $0xc,%esp
    12b8:	68 88 d9 00 00       	push   $0xd988
    12bd:	e8 9e ab 00 00       	call   be60 <strlen>
    12c2:	89 c7                	mov    %eax,%edi
    12c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    12cb:	e8 90 ab 00 00       	call   be60 <strlen>
    12d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    12d4:	83 c4 10             	add    $0x10,%esp
    12d7:	39 d8                	cmp    %ebx,%eax
    12d9:	77 c5                	ja     12a0 <test_opening_and_closing_cgroup_files+0x240>
    12db:	83 ec 0c             	sub    $0xc,%esp
    12de:	68 8a 01 00 00       	push   $0x18a
    12e3:	68 30 c8 00 00       	push   $0xc830
    12e8:	56                   	push   %esi
    12e9:	68 b4 d9 00 00       	push   $0xd9b4
    12ee:	6a 01                	push   $0x1
    12f0:	e8 ab b0 00 00       	call   c3a0 <printf>
    12f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    12fc:	00 00 00 
    12ff:	83 c4 20             	add    $0x20,%esp
    1302:	e9 e3 fd ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_MAX_DEPTH));
    1307:	83 ec 0c             	sub    $0xc,%esp
    130a:	31 db                	xor    %ebx,%ebx
    130c:	68 08 da 00 00       	push   $0xda08
    1311:	e8 da ee ff ff       	call   1f0 <open_close_file>
    1316:	83 c4 10             	add    $0x10,%esp
    1319:	85 c0                	test   %eax,%eax
    131b:	74 18                	je     1335 <test_opening_and_closing_cgroup_files+0x2d5>
    131d:	eb 68                	jmp    1387 <test_opening_and_closing_cgroup_files+0x327>
    131f:	90                   	nop
    1320:	83 ec 08             	sub    $0x8,%esp
    1323:	83 c3 01             	add    $0x1,%ebx
    1326:	68 18 c8 00 00       	push   $0xc818
    132b:	6a 01                	push   $0x1
    132d:	e8 6e b0 00 00       	call   c3a0 <printf>
    1332:	83 c4 10             	add    $0x10,%esp
    1335:	83 ec 0c             	sub    $0xc,%esp
    1338:	68 28 da 00 00       	push   $0xda28
    133d:	e8 1e ab 00 00       	call   be60 <strlen>
    1342:	89 c7                	mov    %eax,%edi
    1344:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    134b:	e8 10 ab 00 00       	call   be60 <strlen>
    1350:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1354:	83 c4 10             	add    $0x10,%esp
    1357:	39 d8                	cmp    %ebx,%eax
    1359:	77 c5                	ja     1320 <test_opening_and_closing_cgroup_files+0x2c0>
    135b:	83 ec 0c             	sub    $0xc,%esp
    135e:	68 8b 01 00 00       	push   $0x18b
    1363:	68 30 c8 00 00       	push   $0xc830
    1368:	56                   	push   %esi
    1369:	68 54 da 00 00       	push   $0xda54
    136e:	6a 01                	push   $0x1
    1370:	e8 2b b0 00 00       	call   c3a0 <printf>
    1375:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    137c:	00 00 00 
    137f:	83 c4 20             	add    $0x20,%esp
    1382:	e9 63 fd ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_STAT));
    1387:	83 ec 0c             	sub    $0xc,%esp
    138a:	31 db                	xor    %ebx,%ebx
    138c:	68 24 ca 00 00       	push   $0xca24
    1391:	e8 5a ee ff ff       	call   1f0 <open_close_file>
    1396:	83 c4 10             	add    $0x10,%esp
    1399:	85 c0                	test   %eax,%eax
    139b:	74 18                	je     13b5 <test_opening_and_closing_cgroup_files+0x355>
    139d:	eb 68                	jmp    1407 <test_opening_and_closing_cgroup_files+0x3a7>
    139f:	90                   	nop
    13a0:	83 ec 08             	sub    $0x8,%esp
    13a3:	83 c3 01             	add    $0x1,%ebx
    13a6:	68 18 c8 00 00       	push   $0xc818
    13ab:	6a 01                	push   $0x1
    13ad:	e8 ee af 00 00       	call   c3a0 <printf>
    13b2:	83 c4 10             	add    $0x10,%esp
    13b5:	83 ec 0c             	sub    $0xc,%esp
    13b8:	68 a8 da 00 00       	push   $0xdaa8
    13bd:	e8 9e aa 00 00       	call   be60 <strlen>
    13c2:	89 c7                	mov    %eax,%edi
    13c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    13cb:	e8 90 aa 00 00       	call   be60 <strlen>
    13d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    13d4:	83 c4 10             	add    $0x10,%esp
    13d7:	39 d8                	cmp    %ebx,%eax
    13d9:	77 c5                	ja     13a0 <test_opening_and_closing_cgroup_files+0x340>
    13db:	83 ec 0c             	sub    $0xc,%esp
    13de:	68 8c 01 00 00       	push   $0x18c
    13e3:	68 30 c8 00 00       	push   $0xc830
    13e8:	56                   	push   %esi
    13e9:	68 cc da 00 00       	push   $0xdacc
    13ee:	6a 01                	push   $0x1
    13f0:	e8 ab af 00 00       	call   c3a0 <printf>
    13f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    13fc:	00 00 00 
    13ff:	83 c4 20             	add    $0x20,%esp
    1402:	e9 e3 fc ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CPU_MAX));
    1407:	83 ec 0c             	sub    $0xc,%esp
    140a:	68 3e ca 00 00       	push   $0xca3e
    140f:	e8 dc ed ff ff       	call   1f0 <open_close_file>
    1414:	83 c4 10             	add    $0x10,%esp
    1417:	85 c0                	test   %eax,%eax
    1419:	75 6c                	jne    1487 <test_opening_and_closing_cgroup_files+0x427>
    141b:	31 db                	xor    %ebx,%ebx
    141d:	eb 16                	jmp    1435 <test_opening_and_closing_cgroup_files+0x3d5>
    141f:	90                   	nop
    1420:	83 ec 08             	sub    $0x8,%esp
    1423:	83 c3 01             	add    $0x1,%ebx
    1426:	68 18 c8 00 00       	push   $0xc818
    142b:	6a 01                	push   $0x1
    142d:	e8 6e af 00 00       	call   c3a0 <printf>
    1432:	83 c4 10             	add    $0x10,%esp
    1435:	83 ec 0c             	sub    $0xc,%esp
    1438:	68 1c db 00 00       	push   $0xdb1c
    143d:	e8 1e aa 00 00       	call   be60 <strlen>
    1442:	89 c7                	mov    %eax,%edi
    1444:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    144b:	e8 10 aa 00 00       	call   be60 <strlen>
    1450:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1454:	83 c4 10             	add    $0x10,%esp
    1457:	39 d8                	cmp    %ebx,%eax
    1459:	77 c5                	ja     1420 <test_opening_and_closing_cgroup_files+0x3c0>
    145b:	83 ec 0c             	sub    $0xc,%esp
    145e:	68 8d 01 00 00       	push   $0x18d
    1463:	68 30 c8 00 00       	push   $0xc830
    1468:	56                   	push   %esi
    1469:	68 3c db 00 00       	push   $0xdb3c
    146e:	6a 01                	push   $0x1
    1470:	e8 2b af 00 00       	call   c3a0 <printf>
    1475:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    147c:	00 00 00 
    147f:	83 c4 20             	add    $0x20,%esp
    1482:	e9 63 fc ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CPU_WEIGHT));
    1487:	83 ec 0c             	sub    $0xc,%esp
    148a:	68 54 ca 00 00       	push   $0xca54
    148f:	e8 5c ed ff ff       	call   1f0 <open_close_file>
    1494:	83 c4 10             	add    $0x10,%esp
    1497:	85 c0                	test   %eax,%eax
    1499:	75 6a                	jne    1505 <test_opening_and_closing_cgroup_files+0x4a5>
    149b:	31 db                	xor    %ebx,%ebx
    149d:	83 ec 0c             	sub    $0xc,%esp
    14a0:	68 88 db 00 00       	push   $0xdb88
    14a5:	e8 b6 a9 00 00       	call   be60 <strlen>
    14aa:	89 c7                	mov    %eax,%edi
    14ac:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    14b3:	e8 a8 a9 00 00       	call   be60 <strlen>
    14b8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    14bc:	83 c4 10             	add    $0x10,%esp
    14bf:	39 d8                	cmp    %ebx,%eax
    14c1:	76 16                	jbe    14d9 <test_opening_and_closing_cgroup_files+0x479>
    14c3:	50                   	push   %eax
    14c4:	50                   	push   %eax
    14c5:	83 c3 01             	add    $0x1,%ebx
    14c8:	68 18 c8 00 00       	push   $0xc818
    14cd:	6a 01                	push   $0x1
    14cf:	e8 cc ae 00 00       	call   c3a0 <printf>
    14d4:	83 c4 10             	add    $0x10,%esp
    14d7:	eb c4                	jmp    149d <test_opening_and_closing_cgroup_files+0x43d>
    14d9:	83 ec 0c             	sub    $0xc,%esp
    14dc:	68 8e 01 00 00       	push   $0x18e
    14e1:	68 30 c8 00 00       	push   $0xc830
    14e6:	56                   	push   %esi
    14e7:	68 ac db 00 00       	push   $0xdbac
    14ec:	6a 01                	push   $0x1
    14ee:	e8 ad ae 00 00       	call   c3a0 <printf>
    14f3:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    14fa:	00 00 00 
    14fd:	83 c4 20             	add    $0x20,%esp
    1500:	e9 e5 fb ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_CPU_STAT));
    1505:	83 ec 0c             	sub    $0xc,%esp
    1508:	68 6d ca 00 00       	push   $0xca6d
    150d:	e8 de ec ff ff       	call   1f0 <open_close_file>
    1512:	83 c4 10             	add    $0x10,%esp
    1515:	85 c0                	test   %eax,%eax
    1517:	75 3e                	jne    1557 <test_opening_and_closing_cgroup_files+0x4f7>
    1519:	31 db                	xor    %ebx,%ebx
    151b:	83 ec 0c             	sub    $0xc,%esp
    151e:	68 f8 db 00 00       	push   $0xdbf8
    1523:	e8 38 a9 00 00       	call   be60 <strlen>
    1528:	89 c7                	mov    %eax,%edi
    152a:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1531:	e8 2a a9 00 00       	call   be60 <strlen>
    1536:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    153a:	83 c4 10             	add    $0x10,%esp
    153d:	39 d8                	cmp    %ebx,%eax
    153f:	76 6c                	jbe    15ad <test_opening_and_closing_cgroup_files+0x54d>
    1541:	50                   	push   %eax
    1542:	50                   	push   %eax
    1543:	83 c3 01             	add    $0x1,%ebx
    1546:	68 18 c8 00 00       	push   $0xc818
    154b:	6a 01                	push   $0x1
    154d:	e8 4e ae 00 00       	call   c3a0 <printf>
    1552:	83 c4 10             	add    $0x10,%esp
    1555:	eb c4                	jmp    151b <test_opening_and_closing_cgroup_files+0x4bb>
    ASSERT_TRUE(open_close_file(TEST_1_PID_MAX));
    1557:	83 ec 0c             	sub    $0xc,%esp
    155a:	68 84 ca 00 00       	push   $0xca84
    155f:	e8 8c ec ff ff       	call   1f0 <open_close_file>
    1564:	83 c4 10             	add    $0x10,%esp
    1567:	85 c0                	test   %eax,%eax
    1569:	0f 85 96 00 00 00    	jne    1605 <test_opening_and_closing_cgroup_files+0x5a5>
    156f:	31 db                	xor    %ebx,%ebx
    1571:	83 ec 0c             	sub    $0xc,%esp
    1574:	68 68 dc 00 00       	push   $0xdc68
    1579:	e8 e2 a8 00 00       	call   be60 <strlen>
    157e:	89 c7                	mov    %eax,%edi
    1580:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1587:	e8 d4 a8 00 00       	call   be60 <strlen>
    158c:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1590:	83 c4 10             	add    $0x10,%esp
    1593:	39 d8                	cmp    %ebx,%eax
    1595:	76 42                	jbe    15d9 <test_opening_and_closing_cgroup_files+0x579>
    1597:	50                   	push   %eax
    1598:	50                   	push   %eax
    1599:	83 c3 01             	add    $0x1,%ebx
    159c:	68 18 c8 00 00       	push   $0xc818
    15a1:	6a 01                	push   $0x1
    15a3:	e8 f8 ad 00 00       	call   c3a0 <printf>
    15a8:	83 c4 10             	add    $0x10,%esp
    15ab:	eb c4                	jmp    1571 <test_opening_and_closing_cgroup_files+0x511>
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_DESCENDANTS));
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_MAX_DEPTH));
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_STAT));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_WEIGHT));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_STAT));
    15ad:	83 ec 0c             	sub    $0xc,%esp
    15b0:	68 8f 01 00 00       	push   $0x18f
    15b5:	68 30 c8 00 00       	push   $0xc830
    15ba:	56                   	push   %esi
    15bb:	68 1c dc 00 00       	push   $0xdc1c
    15c0:	6a 01                	push   $0x1
    15c2:	e8 d9 ad 00 00       	call   c3a0 <printf>
    15c7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    15ce:	00 00 00 
    15d1:	83 c4 20             	add    $0x20,%esp
    15d4:	e9 11 fb ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_PID_MAX));
    15d9:	83 ec 0c             	sub    $0xc,%esp
    15dc:	68 90 01 00 00       	push   $0x190
    15e1:	68 30 c8 00 00       	push   $0xc830
    15e6:	56                   	push   %esi
    15e7:	68 88 dc 00 00       	push   $0xdc88
    15ec:	6a 01                	push   $0x1
    15ee:	e8 ad ad 00 00       	call   c3a0 <printf>
    15f3:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    15fa:	00 00 00 
    15fd:	83 c4 20             	add    $0x20,%esp
    1600:	e9 e5 fa ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_PID_CURRENT));
    1605:	83 ec 0c             	sub    $0xc,%esp
    1608:	68 9a ca 00 00       	push   $0xca9a
    160d:	e8 de eb ff ff       	call   1f0 <open_close_file>
    1612:	83 c4 10             	add    $0x10,%esp
    1615:	85 c0                	test   %eax,%eax
    1617:	75 3e                	jne    1657 <test_opening_and_closing_cgroup_files+0x5f7>
    1619:	31 db                	xor    %ebx,%ebx
    161b:	83 ec 0c             	sub    $0xc,%esp
    161e:	68 d4 dc 00 00       	push   $0xdcd4
    1623:	e8 38 a8 00 00       	call   be60 <strlen>
    1628:	89 c7                	mov    %eax,%edi
    162a:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1631:	e8 2a a8 00 00       	call   be60 <strlen>
    1636:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    163a:	83 c4 10             	add    $0x10,%esp
    163d:	39 d8                	cmp    %ebx,%eax
    163f:	76 6c                	jbe    16ad <test_opening_and_closing_cgroup_files+0x64d>
    1641:	50                   	push   %eax
    1642:	50                   	push   %eax
    1643:	83 c3 01             	add    $0x1,%ebx
    1646:	68 18 c8 00 00       	push   $0xc818
    164b:	6a 01                	push   $0x1
    164d:	e8 4e ad 00 00       	call   c3a0 <printf>
    1652:	83 c4 10             	add    $0x10,%esp
    1655:	eb c4                	jmp    161b <test_opening_and_closing_cgroup_files+0x5bb>
    ASSERT_TRUE(open_close_file(TEST_1_SET_CPU));
    1657:	83 ec 0c             	sub    $0xc,%esp
    165a:	68 b4 ca 00 00       	push   $0xcab4
    165f:	e8 8c eb ff ff       	call   1f0 <open_close_file>
    1664:	83 c4 10             	add    $0x10,%esp
    1667:	85 c0                	test   %eax,%eax
    1669:	0f 85 96 00 00 00    	jne    1705 <test_opening_and_closing_cgroup_files+0x6a5>
    166f:	31 db                	xor    %ebx,%ebx
    1671:	83 ec 0c             	sub    $0xc,%esp
    1674:	68 48 dd 00 00       	push   $0xdd48
    1679:	e8 e2 a7 00 00       	call   be60 <strlen>
    167e:	89 c7                	mov    %eax,%edi
    1680:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1687:	e8 d4 a7 00 00       	call   be60 <strlen>
    168c:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1690:	83 c4 10             	add    $0x10,%esp
    1693:	39 d8                	cmp    %ebx,%eax
    1695:	76 42                	jbe    16d9 <test_opening_and_closing_cgroup_files+0x679>
    1697:	50                   	push   %eax
    1698:	50                   	push   %eax
    1699:	83 c3 01             	add    $0x1,%ebx
    169c:	68 18 c8 00 00       	push   $0xc818
    16a1:	6a 01                	push   $0x1
    16a3:	e8 f8 ac 00 00       	call   c3a0 <printf>
    16a8:	83 c4 10             	add    $0x10,%esp
    16ab:	eb c4                	jmp    1671 <test_opening_and_closing_cgroup_files+0x611>
    ASSERT_TRUE(open_close_file(TEST_1_CGROUP_STAT));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_WEIGHT));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_STAT));
    ASSERT_TRUE(open_close_file(TEST_1_PID_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_PID_CURRENT));
    16ad:	83 ec 0c             	sub    $0xc,%esp
    16b0:	68 91 01 00 00       	push   $0x191
    16b5:	68 30 c8 00 00       	push   $0xc830
    16ba:	56                   	push   %esi
    16bb:	68 f8 dc 00 00       	push   $0xdcf8
    16c0:	6a 01                	push   $0x1
    16c2:	e8 d9 ac 00 00       	call   c3a0 <printf>
    16c7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    16ce:	00 00 00 
    16d1:	83 c4 20             	add    $0x20,%esp
    16d4:	e9 11 fa ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_SET_CPU));
    16d9:	83 ec 0c             	sub    $0xc,%esp
    16dc:	68 92 01 00 00       	push   $0x192
    16e1:	68 30 c8 00 00       	push   $0xc830
    16e6:	56                   	push   %esi
    16e7:	68 68 dd 00 00       	push   $0xdd68
    16ec:	6a 01                	push   $0x1
    16ee:	e8 ad ac 00 00       	call   c3a0 <printf>
    16f3:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    16fa:	00 00 00 
    16fd:	83 c4 20             	add    $0x20,%esp
    1700:	e9 e5 f9 ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_SET_FRZ));
    1705:	83 ec 0c             	sub    $0xc,%esp
    1708:	68 ce ca 00 00       	push   $0xcace
    170d:	e8 de ea ff ff       	call   1f0 <open_close_file>
    1712:	83 c4 10             	add    $0x10,%esp
    1715:	85 c0                	test   %eax,%eax
    1717:	75 3e                	jne    1757 <test_opening_and_closing_cgroup_files+0x6f7>
    1719:	31 db                	xor    %ebx,%ebx
    171b:	83 ec 0c             	sub    $0xc,%esp
    171e:	68 b4 dd 00 00       	push   $0xddb4
    1723:	e8 38 a7 00 00       	call   be60 <strlen>
    1728:	89 c7                	mov    %eax,%edi
    172a:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1731:	e8 2a a7 00 00       	call   be60 <strlen>
    1736:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    173a:	83 c4 10             	add    $0x10,%esp
    173d:	39 d8                	cmp    %ebx,%eax
    173f:	76 6c                	jbe    17ad <test_opening_and_closing_cgroup_files+0x74d>
    1741:	50                   	push   %eax
    1742:	50                   	push   %eax
    1743:	83 c3 01             	add    $0x1,%ebx
    1746:	68 18 c8 00 00       	push   $0xc818
    174b:	6a 01                	push   $0x1
    174d:	e8 4e ac 00 00       	call   c3a0 <printf>
    1752:	83 c4 10             	add    $0x10,%esp
    1755:	eb c4                	jmp    171b <test_opening_and_closing_cgroup_files+0x6bb>
    ASSERT_TRUE(open_close_file(TEST_1_MEM_CURRENT));
    1757:	83 ec 0c             	sub    $0xc,%esp
    175a:	68 ea ca 00 00       	push   $0xcaea
    175f:	e8 8c ea ff ff       	call   1f0 <open_close_file>
    1764:	83 c4 10             	add    $0x10,%esp
    1767:	85 c0                	test   %eax,%eax
    1769:	0f 85 96 00 00 00    	jne    1805 <test_opening_and_closing_cgroup_files+0x7a5>
    176f:	31 db                	xor    %ebx,%ebx
    1771:	83 ec 0c             	sub    $0xc,%esp
    1774:	68 20 de 00 00       	push   $0xde20
    1779:	e8 e2 a6 00 00       	call   be60 <strlen>
    177e:	89 c7                	mov    %eax,%edi
    1780:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1787:	e8 d4 a6 00 00       	call   be60 <strlen>
    178c:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1790:	83 c4 10             	add    $0x10,%esp
    1793:	39 d8                	cmp    %ebx,%eax
    1795:	76 42                	jbe    17d9 <test_opening_and_closing_cgroup_files+0x779>
    1797:	57                   	push   %edi
    1798:	57                   	push   %edi
    1799:	83 c3 01             	add    $0x1,%ebx
    179c:	68 18 c8 00 00       	push   $0xc818
    17a1:	6a 01                	push   $0x1
    17a3:	e8 f8 ab 00 00       	call   c3a0 <printf>
    17a8:	83 c4 10             	add    $0x10,%esp
    17ab:	eb c4                	jmp    1771 <test_opening_and_closing_cgroup_files+0x711>
    ASSERT_TRUE(open_close_file(TEST_1_CPU_WEIGHT));
    ASSERT_TRUE(open_close_file(TEST_1_CPU_STAT));
    ASSERT_TRUE(open_close_file(TEST_1_PID_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_PID_CURRENT));
    ASSERT_TRUE(open_close_file(TEST_1_SET_CPU));
    ASSERT_TRUE(open_close_file(TEST_1_SET_FRZ));
    17ad:	83 ec 0c             	sub    $0xc,%esp
    17b0:	68 93 01 00 00       	push   $0x193
    17b5:	68 30 c8 00 00       	push   $0xc830
    17ba:	56                   	push   %esi
    17bb:	68 d4 dd 00 00       	push   $0xddd4
    17c0:	6a 01                	push   $0x1
    17c2:	e8 d9 ab 00 00       	call   c3a0 <printf>
    17c7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    17ce:	00 00 00 
    17d1:	83 c4 20             	add    $0x20,%esp
    17d4:	e9 11 f9 ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_MEM_CURRENT));
    17d9:	83 ec 0c             	sub    $0xc,%esp
    17dc:	68 94 01 00 00       	push   $0x194
    17e1:	68 30 c8 00 00       	push   $0xc830
    17e6:	56                   	push   %esi
    17e7:	68 44 de 00 00       	push   $0xde44
    17ec:	6a 01                	push   $0x1
    17ee:	e8 ad ab 00 00       	call   c3a0 <printf>
    17f3:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    17fa:	00 00 00 
    17fd:	83 c4 20             	add    $0x20,%esp
    1800:	e9 e5 f8 ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MAX));
    1805:	83 ec 0c             	sub    $0xc,%esp
    1808:	68 07 cb 00 00       	push   $0xcb07
    180d:	e8 de e9 ff ff       	call   1f0 <open_close_file>
    1812:	83 c4 10             	add    $0x10,%esp
    1815:	85 c0                	test   %eax,%eax
    1817:	75 3e                	jne    1857 <test_opening_and_closing_cgroup_files+0x7f7>
    1819:	31 db                	xor    %ebx,%ebx
    181b:	83 ec 0c             	sub    $0xc,%esp
    181e:	68 94 de 00 00       	push   $0xde94
    1823:	e8 38 a6 00 00       	call   be60 <strlen>
    1828:	89 c7                	mov    %eax,%edi
    182a:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1831:	e8 2a a6 00 00       	call   be60 <strlen>
    1836:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    183a:	83 c4 10             	add    $0x10,%esp
    183d:	39 d8                	cmp    %ebx,%eax
    183f:	76 6c                	jbe    18ad <test_opening_and_closing_cgroup_files+0x84d>
    1841:	51                   	push   %ecx
    1842:	51                   	push   %ecx
    1843:	83 c3 01             	add    $0x1,%ebx
    1846:	68 18 c8 00 00       	push   $0xc818
    184b:	6a 01                	push   $0x1
    184d:	e8 4e ab 00 00       	call   c3a0 <printf>
    1852:	83 c4 10             	add    $0x10,%esp
    1855:	eb c4                	jmp    181b <test_opening_and_closing_cgroup_files+0x7bb>
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MIN));
    1857:	83 ec 0c             	sub    $0xc,%esp
    185a:	68 20 cb 00 00       	push   $0xcb20
    185f:	e8 8c e9 ff ff       	call   1f0 <open_close_file>
    1864:	83 c4 10             	add    $0x10,%esp
    1867:	85 c0                	test   %eax,%eax
    1869:	0f 85 96 00 00 00    	jne    1905 <test_opening_and_closing_cgroup_files+0x8a5>
    186f:	31 db                	xor    %ebx,%ebx
    1871:	83 ec 0c             	sub    $0xc,%esp
    1874:	68 00 df 00 00       	push   $0xdf00
    1879:	e8 e2 a5 00 00       	call   be60 <strlen>
    187e:	89 c7                	mov    %eax,%edi
    1880:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1887:	e8 d4 a5 00 00       	call   be60 <strlen>
    188c:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    1890:	83 c4 10             	add    $0x10,%esp
    1893:	39 d8                	cmp    %ebx,%eax
    1895:	76 42                	jbe    18d9 <test_opening_and_closing_cgroup_files+0x879>
    1897:	52                   	push   %edx
    1898:	52                   	push   %edx
    1899:	83 c3 01             	add    $0x1,%ebx
    189c:	68 18 c8 00 00       	push   $0xc818
    18a1:	6a 01                	push   $0x1
    18a3:	e8 f8 aa 00 00       	call   c3a0 <printf>
    18a8:	83 c4 10             	add    $0x10,%esp
    18ab:	eb c4                	jmp    1871 <test_opening_and_closing_cgroup_files+0x811>
    ASSERT_TRUE(open_close_file(TEST_1_PID_MAX));
    ASSERT_TRUE(open_close_file(TEST_1_PID_CURRENT));
    ASSERT_TRUE(open_close_file(TEST_1_SET_CPU));
    ASSERT_TRUE(open_close_file(TEST_1_SET_FRZ));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_CURRENT));
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MAX));
    18ad:	83 ec 0c             	sub    $0xc,%esp
    18b0:	68 95 01 00 00       	push   $0x195
    18b5:	68 30 c8 00 00       	push   $0xc830
    18ba:	56                   	push   %esi
    18bb:	68 b4 de 00 00       	push   $0xdeb4
    18c0:	6a 01                	push   $0x1
    18c2:	e8 d9 aa 00 00       	call   c3a0 <printf>
    18c7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    18ce:	00 00 00 
    18d1:	83 c4 20             	add    $0x20,%esp
    18d4:	e9 11 f8 ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_MEM_MIN));
    18d9:	83 ec 0c             	sub    $0xc,%esp
    18dc:	68 96 01 00 00       	push   $0x196
    18e1:	68 30 c8 00 00       	push   $0xc830
    18e6:	56                   	push   %esi
    18e7:	68 20 df 00 00       	push   $0xdf20
    18ec:	6a 01                	push   $0x1
    18ee:	e8 ad aa 00 00       	call   c3a0 <printf>
    18f3:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    18fa:	00 00 00 
    18fd:	83 c4 20             	add    $0x20,%esp
    1900:	e9 e5 f7 ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    ASSERT_TRUE(open_close_file(TEST_1_MEM_STAT));
    1905:	83 ec 0c             	sub    $0xc,%esp
    1908:	31 db                	xor    %ebx,%ebx
    190a:	68 39 cb 00 00       	push   $0xcb39
    190f:	e8 dc e8 ff ff       	call   1f0 <open_close_file>
    1914:	83 c4 10             	add    $0x10,%esp
    1917:	85 c0                	test   %eax,%eax
    1919:	0f 85 cb f7 ff ff    	jne    10ea <test_opening_and_closing_cgroup_files+0x8a>
    191f:	83 ec 0c             	sub    $0xc,%esp
    1922:	68 6c df 00 00       	push   $0xdf6c
    1927:	e8 34 a5 00 00       	call   be60 <strlen>
    192c:	89 c7                	mov    %eax,%edi
    192e:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1935:	e8 26 a5 00 00       	call   be60 <strlen>
    193a:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    193e:	83 c4 10             	add    $0x10,%esp
    1941:	39 d8                	cmp    %ebx,%eax
    1943:	76 16                	jbe    195b <test_opening_and_closing_cgroup_files+0x8fb>
    1945:	50                   	push   %eax
    1946:	50                   	push   %eax
    1947:	83 c3 01             	add    $0x1,%ebx
    194a:	68 18 c8 00 00       	push   $0xc818
    194f:	6a 01                	push   $0x1
    1951:	e8 4a aa 00 00       	call   c3a0 <printf>
    1956:	83 c4 10             	add    $0x10,%esp
    1959:	eb c4                	jmp    191f <test_opening_and_closing_cgroup_files+0x8bf>
    195b:	83 ec 0c             	sub    $0xc,%esp
    195e:	68 97 01 00 00       	push   $0x197
    1963:	68 30 c8 00 00       	push   $0xc830
    1968:	56                   	push   %esi
    1969:	68 90 df 00 00       	push   $0xdf90
    196e:	6a 01                	push   $0x1
    1970:	e8 2b aa 00 00       	call   c3a0 <printf>
    1975:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    197c:	00 00 00 
    197f:	83 c4 20             	add    $0x20,%esp
    1982:	e9 63 f7 ff ff       	jmp    10ea <test_opening_and_closing_cgroup_files+0x8a>
    1987:	89 f6                	mov    %esi,%esi
    1989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001990 <test_reading_cgroup_files>:
}

TEST(test_reading_cgroup_files)
{
    1990:	55                   	push   %ebp
    1991:	89 e5                	mov    %esp,%ebp
    1993:	56                   	push   %esi
    1994:	53                   	push   %ebx
    1995:	31 db                	xor    %ebx,%ebx
    ASSERT_TRUE(read_file(TEST_1_CGROUP_PROCS, 1));
    1997:	83 ec 08             	sub    $0x8,%esp
    199a:	6a 01                	push   $0x1
    199c:	68 ed c9 00 00       	push   $0xc9ed
    19a1:	e8 7a e8 ff ff       	call   220 <read_file>
    19a6:	83 c4 10             	add    $0x10,%esp
    19a9:	85 c0                	test   %eax,%eax
    19ab:	0f 84 5c 02 00 00    	je     1c0d <test_reading_cgroup_files+0x27d>
    ASSERT_TRUE(read_file(TEST_1_CGROUP_CONTROLLERS, 1));
    19b1:	83 ec 08             	sub    $0x8,%esp
    19b4:	31 db                	xor    %ebx,%ebx
    19b6:	6a 01                	push   $0x1
    19b8:	68 bc d7 00 00       	push   $0xd7bc
    19bd:	e8 5e e8 ff ff       	call   220 <read_file>
    19c2:	83 c4 10             	add    $0x10,%esp
    19c5:	85 c0                	test   %eax,%eax
    19c7:	0f 84 b0 02 00 00    	je     1c7d <test_reading_cgroup_files+0x2ed>
    ASSERT_TRUE(read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 1));
    19cd:	83 ec 08             	sub    $0x8,%esp
    19d0:	31 db                	xor    %ebx,%ebx
    19d2:	6a 01                	push   $0x1
    19d4:	68 b8 d3 00 00       	push   $0xd3b8
    19d9:	e8 42 e8 ff ff       	call   220 <read_file>
    19de:	83 c4 10             	add    $0x10,%esp
    19e1:	85 c0                	test   %eax,%eax
    19e3:	0f 84 04 03 00 00    	je     1ced <test_reading_cgroup_files+0x35d>
    ASSERT_TRUE(read_file(TEST_1_CGROUP_EVENTS, 1));
    19e9:	83 ec 08             	sub    $0x8,%esp
    19ec:	31 db                	xor    %ebx,%ebx
    19ee:	6a 01                	push   $0x1
    19f0:	68 08 ca 00 00       	push   $0xca08
    19f5:	e8 26 e8 ff ff       	call   220 <read_file>
    19fa:	83 c4 10             	add    $0x10,%esp
    19fd:	85 c0                	test   %eax,%eax
    19ff:	0f 84 58 03 00 00    	je     1d5d <test_reading_cgroup_files+0x3cd>
    ASSERT_TRUE(read_file(TEST_1_CGROUP_DESCENDANTS, 1));
    1a05:	83 ec 08             	sub    $0x8,%esp
    1a08:	31 db                	xor    %ebx,%ebx
    1a0a:	6a 01                	push   $0x1
    1a0c:	68 60 d9 00 00       	push   $0xd960
    1a11:	e8 0a e8 ff ff       	call   220 <read_file>
    1a16:	83 c4 10             	add    $0x10,%esp
    1a19:	85 c0                	test   %eax,%eax
    1a1b:	0f 84 ac 03 00 00    	je     1dcd <test_reading_cgroup_files+0x43d>
    ASSERT_TRUE(read_file(TEST_1_CGROUP_MAX_DEPTH, 1));
    1a21:	83 ec 08             	sub    $0x8,%esp
    1a24:	31 db                	xor    %ebx,%ebx
    1a26:	6a 01                	push   $0x1
    1a28:	68 08 da 00 00       	push   $0xda08
    1a2d:	e8 ee e7 ff ff       	call   220 <read_file>
    1a32:	83 c4 10             	add    $0x10,%esp
    1a35:	85 c0                	test   %eax,%eax
    1a37:	0f 84 00 04 00 00    	je     1e3d <test_reading_cgroup_files+0x4ad>
    ASSERT_TRUE(read_file(TEST_1_CGROUP_STAT, 1));
    1a3d:	83 ec 08             	sub    $0x8,%esp
    1a40:	31 db                	xor    %ebx,%ebx
    1a42:	6a 01                	push   $0x1
    1a44:	68 24 ca 00 00       	push   $0xca24
    1a49:	e8 d2 e7 ff ff       	call   220 <read_file>
    1a4e:	83 c4 10             	add    $0x10,%esp
    1a51:	85 c0                	test   %eax,%eax
    1a53:	0f 84 54 04 00 00    	je     1ead <test_reading_cgroup_files+0x51d>
    ASSERT_TRUE(read_file(TEST_1_CPU_MAX, 1));
    1a59:	83 ec 08             	sub    $0x8,%esp
    1a5c:	31 db                	xor    %ebx,%ebx
    1a5e:	6a 01                	push   $0x1
    1a60:	68 3e ca 00 00       	push   $0xca3e
    1a65:	e8 b6 e7 ff ff       	call   220 <read_file>
    1a6a:	83 c4 10             	add    $0x10,%esp
    1a6d:	85 c0                	test   %eax,%eax
    1a6f:	0f 84 a8 04 00 00    	je     1f1d <test_reading_cgroup_files+0x58d>
    ASSERT_TRUE(read_file(TEST_1_CPU_WEIGHT, 1));
    1a75:	83 ec 08             	sub    $0x8,%esp
    1a78:	31 db                	xor    %ebx,%ebx
    1a7a:	6a 01                	push   $0x1
    1a7c:	68 54 ca 00 00       	push   $0xca54
    1a81:	e8 9a e7 ff ff       	call   220 <read_file>
    1a86:	83 c4 10             	add    $0x10,%esp
    1a89:	85 c0                	test   %eax,%eax
    1a8b:	0f 84 fc 04 00 00    	je     1f8d <test_reading_cgroup_files+0x5fd>
    ASSERT_TRUE(read_file(TEST_1_CPU_STAT, 1));
    1a91:	83 ec 08             	sub    $0x8,%esp
    1a94:	31 db                	xor    %ebx,%ebx
    1a96:	6a 01                	push   $0x1
    1a98:	68 6d ca 00 00       	push   $0xca6d
    1a9d:	e8 7e e7 ff ff       	call   220 <read_file>
    1aa2:	83 c4 10             	add    $0x10,%esp
    1aa5:	85 c0                	test   %eax,%eax
    1aa7:	0f 84 50 05 00 00    	je     1ffd <test_reading_cgroup_files+0x66d>
    ASSERT_TRUE(read_file(TEST_1_PID_MAX, 1));
    1aad:	83 ec 08             	sub    $0x8,%esp
    1ab0:	31 db                	xor    %ebx,%ebx
    1ab2:	6a 01                	push   $0x1
    1ab4:	68 84 ca 00 00       	push   $0xca84
    1ab9:	e8 62 e7 ff ff       	call   220 <read_file>
    1abe:	83 c4 10             	add    $0x10,%esp
    1ac1:	85 c0                	test   %eax,%eax
    1ac3:	0f 84 a4 05 00 00    	je     206d <test_reading_cgroup_files+0x6dd>
    ASSERT_TRUE(read_file(TEST_1_PID_CURRENT, 1));
    1ac9:	83 ec 08             	sub    $0x8,%esp
    1acc:	31 db                	xor    %ebx,%ebx
    1ace:	6a 01                	push   $0x1
    1ad0:	68 9a ca 00 00       	push   $0xca9a
    1ad5:	e8 46 e7 ff ff       	call   220 <read_file>
    1ada:	83 c4 10             	add    $0x10,%esp
    1add:	85 c0                	test   %eax,%eax
    1adf:	0f 84 f8 05 00 00    	je     20dd <test_reading_cgroup_files+0x74d>
    ASSERT_TRUE(read_file(TEST_1_SET_CPU, 1));
    1ae5:	83 ec 08             	sub    $0x8,%esp
    1ae8:	31 db                	xor    %ebx,%ebx
    1aea:	6a 01                	push   $0x1
    1aec:	68 b4 ca 00 00       	push   $0xcab4
    1af1:	e8 2a e7 ff ff       	call   220 <read_file>
    1af6:	83 c4 10             	add    $0x10,%esp
    1af9:	85 c0                	test   %eax,%eax
    1afb:	0f 84 4c 06 00 00    	je     214d <test_reading_cgroup_files+0x7bd>
    ASSERT_TRUE(read_file(TEST_1_SET_FRZ, 1));
    1b01:	83 ec 08             	sub    $0x8,%esp
    1b04:	31 db                	xor    %ebx,%ebx
    1b06:	6a 01                	push   $0x1
    1b08:	68 ce ca 00 00       	push   $0xcace
    1b0d:	e8 0e e7 ff ff       	call   220 <read_file>
    1b12:	83 c4 10             	add    $0x10,%esp
    1b15:	85 c0                	test   %eax,%eax
    1b17:	0f 84 99 06 00 00    	je     21b6 <test_reading_cgroup_files+0x826>
    ASSERT_TRUE(read_file(TEST_1_MEM_CURRENT, 1));
    1b1d:	83 ec 08             	sub    $0x8,%esp
    1b20:	31 db                	xor    %ebx,%ebx
    1b22:	6a 01                	push   $0x1
    1b24:	68 ea ca 00 00       	push   $0xcaea
    1b29:	e8 f2 e6 ff ff       	call   220 <read_file>
    1b2e:	83 c4 10             	add    $0x10,%esp
    1b31:	85 c0                	test   %eax,%eax
    1b33:	0f 84 e6 06 00 00    	je     221f <test_reading_cgroup_files+0x88f>
    ASSERT_TRUE(read_file(TEST_1_MEM_MAX, 1));
    1b39:	83 ec 08             	sub    $0x8,%esp
    1b3c:	31 db                	xor    %ebx,%ebx
    1b3e:	6a 01                	push   $0x1
    1b40:	68 07 cb 00 00       	push   $0xcb07
    1b45:	e8 d6 e6 ff ff       	call   220 <read_file>
    1b4a:	83 c4 10             	add    $0x10,%esp
    1b4d:	85 c0                	test   %eax,%eax
    1b4f:	0f 84 33 07 00 00    	je     2288 <test_reading_cgroup_files+0x8f8>
    ASSERT_TRUE(read_file(TEST_1_MEM_MIN, 1));
    1b55:	83 ec 08             	sub    $0x8,%esp
    1b58:	31 db                	xor    %ebx,%ebx
    1b5a:	6a 01                	push   $0x1
    1b5c:	68 20 cb 00 00       	push   $0xcb20
    1b61:	e8 ba e6 ff ff       	call   220 <read_file>
    1b66:	83 c4 10             	add    $0x10,%esp
    1b69:	85 c0                	test   %eax,%eax
    1b6b:	0f 84 80 07 00 00    	je     22f1 <test_reading_cgroup_files+0x961>
    ASSERT_TRUE(read_file(TEST_1_MEM_STAT, 1));
    1b71:	83 ec 08             	sub    $0x8,%esp
    1b74:	31 db                	xor    %ebx,%ebx
    1b76:	6a 01                	push   $0x1
    1b78:	68 39 cb 00 00       	push   $0xcb39
    1b7d:	e8 9e e6 ff ff       	call   220 <read_file>
    1b82:	83 c4 10             	add    $0x10,%esp
    1b85:	85 c0                	test   %eax,%eax
    1b87:	0f 85 cf 00 00 00    	jne    1c5c <test_reading_cgroup_files+0x2cc>
    1b8d:	eb 15                	jmp    1ba4 <test_reading_cgroup_files+0x214>
    1b8f:	83 ec 08             	sub    $0x8,%esp
    1b92:	83 c3 01             	add    $0x1,%ebx
    1b95:	68 18 c8 00 00       	push   $0xc818
    1b9a:	6a 01                	push   $0x1
    1b9c:	e8 ff a7 00 00       	call   c3a0 <printf>
    1ba1:	83 c4 10             	add    $0x10,%esp
    1ba4:	83 ec 0c             	sub    $0xc,%esp
    1ba7:	68 1f cc 00 00       	push   $0xcc1f
    1bac:	e8 af a2 00 00       	call   be60 <strlen>
    1bb1:	89 c6                	mov    %eax,%esi
    1bb3:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1bba:	e8 a1 a2 00 00       	call   be60 <strlen>
    1bbf:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1bc3:	83 c4 10             	add    $0x10,%esp
    1bc6:	39 d8                	cmp    %ebx,%eax
    1bc8:	77 c5                	ja     1b8f <test_reading_cgroup_files+0x1ff>
    1bca:	83 ec 0c             	sub    $0xc,%esp
    1bcd:	68 ad 01 00 00       	push   $0x1ad
    1bd2:	68 30 c8 00 00       	push   $0xc830
    1bd7:	ff 75 08             	pushl  0x8(%ebp)
    1bda:	68 64 e6 00 00       	push   $0xe664
    1bdf:	6a 01                	push   $0x1
    1be1:	e8 ba a7 00 00       	call   c3a0 <printf>
    1be6:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1bed:	00 00 00 
    1bf0:	83 c4 20             	add    $0x20,%esp
    1bf3:	eb 67                	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    1bf5:	8d 76 00             	lea    0x0(%esi),%esi
    ASSERT_TRUE(open_close_file(TEST_1_MEM_STAT));
}

TEST(test_reading_cgroup_files)
{
    ASSERT_TRUE(read_file(TEST_1_CGROUP_PROCS, 1));
    1bf8:	83 ec 08             	sub    $0x8,%esp
    1bfb:	83 c3 01             	add    $0x1,%ebx
    1bfe:	68 18 c8 00 00       	push   $0xc818
    1c03:	6a 01                	push   $0x1
    1c05:	e8 96 a7 00 00       	call   c3a0 <printf>
    1c0a:	83 c4 10             	add    $0x10,%esp
    1c0d:	83 ec 0c             	sub    $0xc,%esp
    1c10:	68 dc df 00 00       	push   $0xdfdc
    1c15:	e8 46 a2 00 00       	call   be60 <strlen>
    1c1a:	89 c6                	mov    %eax,%esi
    1c1c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1c23:	e8 38 a2 00 00       	call   be60 <strlen>
    1c28:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1c2c:	83 c4 10             	add    $0x10,%esp
    1c2f:	39 d8                	cmp    %ebx,%eax
    1c31:	77 c5                	ja     1bf8 <test_reading_cgroup_files+0x268>
    1c33:	83 ec 0c             	sub    $0xc,%esp
    1c36:	68 9c 01 00 00       	push   $0x19c
    1c3b:	68 30 c8 00 00       	push   $0xc830
    1c40:	ff 75 08             	pushl  0x8(%ebp)
    1c43:	68 00 e0 00 00       	push   $0xe000
    1c48:	6a 01                	push   $0x1
    1c4a:	e8 51 a7 00 00       	call   c3a0 <printf>
    1c4f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1c56:	00 00 00 
    1c59:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(read_file(TEST_1_SET_FRZ, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_CURRENT, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MAX, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MIN, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_STAT, 1));
}
    1c5c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1c5f:	5b                   	pop    %ebx
    1c60:	5e                   	pop    %esi
    1c61:	5d                   	pop    %ebp
    1c62:	c3                   	ret    
    1c63:	90                   	nop
    1c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

TEST(test_reading_cgroup_files)
{
    ASSERT_TRUE(read_file(TEST_1_CGROUP_PROCS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_CONTROLLERS, 1));
    1c68:	83 ec 08             	sub    $0x8,%esp
    1c6b:	83 c3 01             	add    $0x1,%ebx
    1c6e:	68 18 c8 00 00       	push   $0xc818
    1c73:	6a 01                	push   $0x1
    1c75:	e8 26 a7 00 00       	call   c3a0 <printf>
    1c7a:	83 c4 10             	add    $0x10,%esp
    1c7d:	83 ec 0c             	sub    $0xc,%esp
    1c80:	68 4c e0 00 00       	push   $0xe04c
    1c85:	e8 d6 a1 00 00       	call   be60 <strlen>
    1c8a:	89 c6                	mov    %eax,%esi
    1c8c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1c93:	e8 c8 a1 00 00       	call   be60 <strlen>
    1c98:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1c9c:	83 c4 10             	add    $0x10,%esp
    1c9f:	39 d8                	cmp    %ebx,%eax
    1ca1:	77 c5                	ja     1c68 <test_reading_cgroup_files+0x2d8>
    1ca3:	83 ec 0c             	sub    $0xc,%esp
    1ca6:	68 9d 01 00 00       	push   $0x19d
    1cab:	68 30 c8 00 00       	push   $0xc830
    1cb0:	ff 75 08             	pushl  0x8(%ebp)
    1cb3:	68 74 e0 00 00       	push   $0xe074
    1cb8:	6a 01                	push   $0x1
    1cba:	e8 e1 a6 00 00       	call   c3a0 <printf>
    1cbf:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1cc6:	00 00 00 
    1cc9:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(read_file(TEST_1_SET_FRZ, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_CURRENT, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MAX, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MIN, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_STAT, 1));
}
    1ccc:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1ccf:	5b                   	pop    %ebx
    1cd0:	5e                   	pop    %esi
    1cd1:	5d                   	pop    %ebp
    1cd2:	c3                   	ret    
    1cd3:	90                   	nop
    1cd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

TEST(test_reading_cgroup_files)
{
    ASSERT_TRUE(read_file(TEST_1_CGROUP_PROCS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_CONTROLLERS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 1));
    1cd8:	83 ec 08             	sub    $0x8,%esp
    1cdb:	83 c3 01             	add    $0x1,%ebx
    1cde:	68 18 c8 00 00       	push   $0xc818
    1ce3:	6a 01                	push   $0x1
    1ce5:	e8 b6 a6 00 00       	call   c3a0 <printf>
    1cea:	83 c4 10             	add    $0x10,%esp
    1ced:	83 ec 0c             	sub    $0xc,%esp
    1cf0:	68 c8 e0 00 00       	push   $0xe0c8
    1cf5:	e8 66 a1 00 00       	call   be60 <strlen>
    1cfa:	89 c6                	mov    %eax,%esi
    1cfc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1d03:	e8 58 a1 00 00       	call   be60 <strlen>
    1d08:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1d0c:	83 c4 10             	add    $0x10,%esp
    1d0f:	39 d8                	cmp    %ebx,%eax
    1d11:	77 c5                	ja     1cd8 <test_reading_cgroup_files+0x348>
    1d13:	83 ec 0c             	sub    $0xc,%esp
    1d16:	68 9e 01 00 00       	push   $0x19e
    1d1b:	68 30 c8 00 00       	push   $0xc830
    1d20:	ff 75 08             	pushl  0x8(%ebp)
    1d23:	68 f4 e0 00 00       	push   $0xe0f4
    1d28:	6a 01                	push   $0x1
    1d2a:	e8 71 a6 00 00       	call   c3a0 <printf>
    1d2f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1d36:	00 00 00 
    1d39:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(read_file(TEST_1_SET_FRZ, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_CURRENT, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MAX, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MIN, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_STAT, 1));
}
    1d3c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1d3f:	5b                   	pop    %ebx
    1d40:	5e                   	pop    %esi
    1d41:	5d                   	pop    %ebp
    1d42:	c3                   	ret    
    1d43:	90                   	nop
    1d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
TEST(test_reading_cgroup_files)
{
    ASSERT_TRUE(read_file(TEST_1_CGROUP_PROCS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_CONTROLLERS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_EVENTS, 1));
    1d48:	83 ec 08             	sub    $0x8,%esp
    1d4b:	83 c3 01             	add    $0x1,%ebx
    1d4e:	68 18 c8 00 00       	push   $0xc818
    1d53:	6a 01                	push   $0x1
    1d55:	e8 46 a6 00 00       	call   c3a0 <printf>
    1d5a:	83 c4 10             	add    $0x10,%esp
    1d5d:	83 ec 0c             	sub    $0xc,%esp
    1d60:	68 4c e1 00 00       	push   $0xe14c
    1d65:	e8 f6 a0 00 00       	call   be60 <strlen>
    1d6a:	89 c6                	mov    %eax,%esi
    1d6c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1d73:	e8 e8 a0 00 00       	call   be60 <strlen>
    1d78:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1d7c:	83 c4 10             	add    $0x10,%esp
    1d7f:	39 d8                	cmp    %ebx,%eax
    1d81:	77 c5                	ja     1d48 <test_reading_cgroup_files+0x3b8>
    1d83:	83 ec 0c             	sub    $0xc,%esp
    1d86:	68 9f 01 00 00       	push   $0x19f
    1d8b:	68 30 c8 00 00       	push   $0xc830
    1d90:	ff 75 08             	pushl  0x8(%ebp)
    1d93:	68 70 e1 00 00       	push   $0xe170
    1d98:	6a 01                	push   $0x1
    1d9a:	e8 01 a6 00 00       	call   c3a0 <printf>
    1d9f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1da6:	00 00 00 
    1da9:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(read_file(TEST_1_SET_FRZ, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_CURRENT, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MAX, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_MIN, 1));
    ASSERT_TRUE(read_file(TEST_1_MEM_STAT, 1));
}
    1dac:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1daf:	5b                   	pop    %ebx
    1db0:	5e                   	pop    %esi
    1db1:	5d                   	pop    %ebp
    1db2:	c3                   	ret    
    1db3:	90                   	nop
    1db4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
{
    ASSERT_TRUE(read_file(TEST_1_CGROUP_PROCS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_CONTROLLERS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_SUBTREE_CONTROL, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_EVENTS, 1));
    ASSERT_TRUE(read_file(TEST_1_CGROUP_DESCENDANTS, 1));
    1db8:	83 ec 08             	sub    $0x8,%esp
    1dbb:	83 c3 01             	add    $0x1,%ebx
    1dbe:	68 18 c8 00 00       	push   $0xc818
    1dc3:	6a 01                	push   $0x1
    1dc5:	e8 d6 a5 00 00       	call   c3a0 <printf>
    1dca:	83 c4 10             	add    $0x10,%esp
    1dcd:	83 ec 0c             	sub    $0xc,%esp
    1dd0:	68 bc e1 00 00       	push   $0xe1bc
    1dd5:	e8 86 a0 00 00       	call   be60 <strlen>
    1dda:	89 c6                	mov    %eax,%esi
    1ddc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1de3:	e8 78 a0 00 00       	call   be60 <strlen>
    1de8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1dec:	83 c4 10             	add    $0x10,%esp
    1def:	39 d8                	cmp    %ebx,%eax
    1df1:	77 c5                	ja     1db8 <test_reading_cgroup_files+0x428>
    1df3:	83 ec 0c             	sub    $0xc,%esp
    1df6:	68 a0 01 00 00       	push   $0x1a0
    1dfb:	68 30 c8 00 00       	push   $0xc830
    1e00:	ff 75 08             	pushl  0x8(%ebp)
    1e03:	68 e4 e1 00 00       	push   $0xe1e4
    1e08:	6a 01                	push   $0x1
    1e0a:	e8 91 a5 00 00       	call   c3a0 <printf>
    1e0f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1e16:	00 00 00 
    1e19:	83 c4 20             	add    $0x20,%esp
    1e1c:	e9 3b fe ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    1e21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_CGROUP_MAX_DEPTH, 1));
    1e28:	83 ec 08             	sub    $0x8,%esp
    1e2b:	83 c3 01             	add    $0x1,%ebx
    1e2e:	68 18 c8 00 00       	push   $0xc818
    1e33:	6a 01                	push   $0x1
    1e35:	e8 66 a5 00 00       	call   c3a0 <printf>
    1e3a:	83 c4 10             	add    $0x10,%esp
    1e3d:	83 ec 0c             	sub    $0xc,%esp
    1e40:	68 38 e2 00 00       	push   $0xe238
    1e45:	e8 16 a0 00 00       	call   be60 <strlen>
    1e4a:	89 c6                	mov    %eax,%esi
    1e4c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1e53:	e8 08 a0 00 00       	call   be60 <strlen>
    1e58:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1e5c:	83 c4 10             	add    $0x10,%esp
    1e5f:	39 d8                	cmp    %ebx,%eax
    1e61:	77 c5                	ja     1e28 <test_reading_cgroup_files+0x498>
    1e63:	83 ec 0c             	sub    $0xc,%esp
    1e66:	68 a1 01 00 00       	push   $0x1a1
    1e6b:	68 30 c8 00 00       	push   $0xc830
    1e70:	ff 75 08             	pushl  0x8(%ebp)
    1e73:	68 60 e2 00 00       	push   $0xe260
    1e78:	6a 01                	push   $0x1
    1e7a:	e8 21 a5 00 00       	call   c3a0 <printf>
    1e7f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1e86:	00 00 00 
    1e89:	83 c4 20             	add    $0x20,%esp
    1e8c:	e9 cb fd ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    1e91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_CGROUP_STAT, 1));
    1e98:	83 ec 08             	sub    $0x8,%esp
    1e9b:	83 c3 01             	add    $0x1,%ebx
    1e9e:	68 18 c8 00 00       	push   $0xc818
    1ea3:	6a 01                	push   $0x1
    1ea5:	e8 f6 a4 00 00       	call   c3a0 <printf>
    1eaa:	83 c4 10             	add    $0x10,%esp
    1ead:	83 ec 0c             	sub    $0xc,%esp
    1eb0:	68 b0 e2 00 00       	push   $0xe2b0
    1eb5:	e8 a6 9f 00 00       	call   be60 <strlen>
    1eba:	89 c6                	mov    %eax,%esi
    1ebc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1ec3:	e8 98 9f 00 00       	call   be60 <strlen>
    1ec8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1ecc:	83 c4 10             	add    $0x10,%esp
    1ecf:	39 d8                	cmp    %ebx,%eax
    1ed1:	77 c5                	ja     1e98 <test_reading_cgroup_files+0x508>
    1ed3:	83 ec 0c             	sub    $0xc,%esp
    1ed6:	68 a2 01 00 00       	push   $0x1a2
    1edb:	68 30 c8 00 00       	push   $0xc830
    1ee0:	ff 75 08             	pushl  0x8(%ebp)
    1ee3:	68 d4 e2 00 00       	push   $0xe2d4
    1ee8:	6a 01                	push   $0x1
    1eea:	e8 b1 a4 00 00       	call   c3a0 <printf>
    1eef:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1ef6:	00 00 00 
    1ef9:	83 c4 20             	add    $0x20,%esp
    1efc:	e9 5b fd ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    1f01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_CPU_MAX, 1));
    1f08:	83 ec 08             	sub    $0x8,%esp
    1f0b:	83 c3 01             	add    $0x1,%ebx
    1f0e:	68 18 c8 00 00       	push   $0xc818
    1f13:	6a 01                	push   $0x1
    1f15:	e8 86 a4 00 00       	call   c3a0 <printf>
    1f1a:	83 c4 10             	add    $0x10,%esp
    1f1d:	83 ec 0c             	sub    $0xc,%esp
    1f20:	68 53 cb 00 00       	push   $0xcb53
    1f25:	e8 36 9f 00 00       	call   be60 <strlen>
    1f2a:	89 c6                	mov    %eax,%esi
    1f2c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1f33:	e8 28 9f 00 00       	call   be60 <strlen>
    1f38:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1f3c:	83 c4 10             	add    $0x10,%esp
    1f3f:	39 d8                	cmp    %ebx,%eax
    1f41:	77 c5                	ja     1f08 <test_reading_cgroup_files+0x578>
    1f43:	83 ec 0c             	sub    $0xc,%esp
    1f46:	68 a3 01 00 00       	push   $0x1a3
    1f4b:	68 30 c8 00 00       	push   $0xc830
    1f50:	ff 75 08             	pushl  0x8(%ebp)
    1f53:	68 20 e3 00 00       	push   $0xe320
    1f58:	6a 01                	push   $0x1
    1f5a:	e8 41 a4 00 00       	call   c3a0 <printf>
    1f5f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1f66:	00 00 00 
    1f69:	83 c4 20             	add    $0x20,%esp
    1f6c:	e9 eb fc ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    1f71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_CPU_WEIGHT, 1));
    1f78:	83 ec 08             	sub    $0x8,%esp
    1f7b:	83 c3 01             	add    $0x1,%ebx
    1f7e:	68 18 c8 00 00       	push   $0xc818
    1f83:	6a 01                	push   $0x1
    1f85:	e8 16 a4 00 00       	call   c3a0 <printf>
    1f8a:	83 c4 10             	add    $0x10,%esp
    1f8d:	83 ec 0c             	sub    $0xc,%esp
    1f90:	68 68 e3 00 00       	push   $0xe368
    1f95:	e8 c6 9e 00 00       	call   be60 <strlen>
    1f9a:	89 c6                	mov    %eax,%esi
    1f9c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    1fa3:	e8 b8 9e 00 00       	call   be60 <strlen>
    1fa8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    1fac:	83 c4 10             	add    $0x10,%esp
    1faf:	39 d8                	cmp    %ebx,%eax
    1fb1:	77 c5                	ja     1f78 <test_reading_cgroup_files+0x5e8>
    1fb3:	83 ec 0c             	sub    $0xc,%esp
    1fb6:	68 a4 01 00 00       	push   $0x1a4
    1fbb:	68 30 c8 00 00       	push   $0xc830
    1fc0:	ff 75 08             	pushl  0x8(%ebp)
    1fc3:	68 88 e3 00 00       	push   $0xe388
    1fc8:	6a 01                	push   $0x1
    1fca:	e8 d1 a3 00 00       	call   c3a0 <printf>
    1fcf:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    1fd6:	00 00 00 
    1fd9:	83 c4 20             	add    $0x20,%esp
    1fdc:	e9 7b fc ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    1fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_CPU_STAT, 1));
    1fe8:	83 ec 08             	sub    $0x8,%esp
    1feb:	83 c3 01             	add    $0x1,%ebx
    1fee:	68 18 c8 00 00       	push   $0xc818
    1ff3:	6a 01                	push   $0x1
    1ff5:	e8 a6 a3 00 00       	call   c3a0 <printf>
    1ffa:	83 c4 10             	add    $0x10,%esp
    1ffd:	83 ec 0c             	sub    $0xc,%esp
    2000:	68 70 cb 00 00       	push   $0xcb70
    2005:	e8 56 9e 00 00       	call   be60 <strlen>
    200a:	89 c6                	mov    %eax,%esi
    200c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2013:	e8 48 9e 00 00       	call   be60 <strlen>
    2018:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    201c:	83 c4 10             	add    $0x10,%esp
    201f:	39 d8                	cmp    %ebx,%eax
    2021:	77 c5                	ja     1fe8 <test_reading_cgroup_files+0x658>
    2023:	83 ec 0c             	sub    $0xc,%esp
    2026:	68 a5 01 00 00       	push   $0x1a5
    202b:	68 30 c8 00 00       	push   $0xc830
    2030:	ff 75 08             	pushl  0x8(%ebp)
    2033:	68 d4 e3 00 00       	push   $0xe3d4
    2038:	6a 01                	push   $0x1
    203a:	e8 61 a3 00 00       	call   c3a0 <printf>
    203f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2046:	00 00 00 
    2049:	83 c4 20             	add    $0x20,%esp
    204c:	e9 0b fc ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    2051:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_PID_MAX, 1));
    2058:	83 ec 08             	sub    $0x8,%esp
    205b:	83 c3 01             	add    $0x1,%ebx
    205e:	68 18 c8 00 00       	push   $0xc818
    2063:	6a 01                	push   $0x1
    2065:	e8 36 a3 00 00       	call   c3a0 <printf>
    206a:	83 c4 10             	add    $0x10,%esp
    206d:	83 ec 0c             	sub    $0xc,%esp
    2070:	68 8e cb 00 00       	push   $0xcb8e
    2075:	e8 e6 9d 00 00       	call   be60 <strlen>
    207a:	89 c6                	mov    %eax,%esi
    207c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2083:	e8 d8 9d 00 00       	call   be60 <strlen>
    2088:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    208c:	83 c4 10             	add    $0x10,%esp
    208f:	39 d8                	cmp    %ebx,%eax
    2091:	77 c5                	ja     2058 <test_reading_cgroup_files+0x6c8>
    2093:	83 ec 0c             	sub    $0xc,%esp
    2096:	68 a6 01 00 00       	push   $0x1a6
    209b:	68 30 c8 00 00       	push   $0xc830
    20a0:	ff 75 08             	pushl  0x8(%ebp)
    20a3:	68 1c e4 00 00       	push   $0xe41c
    20a8:	6a 01                	push   $0x1
    20aa:	e8 f1 a2 00 00       	call   c3a0 <printf>
    20af:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    20b6:	00 00 00 
    20b9:	83 c4 20             	add    $0x20,%esp
    20bc:	e9 9b fb ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    20c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_PID_CURRENT, 1));
    20c8:	83 ec 08             	sub    $0x8,%esp
    20cb:	83 c3 01             	add    $0x1,%ebx
    20ce:	68 18 c8 00 00       	push   $0xc818
    20d3:	6a 01                	push   $0x1
    20d5:	e8 c6 a2 00 00       	call   c3a0 <printf>
    20da:	83 c4 10             	add    $0x10,%esp
    20dd:	83 ec 0c             	sub    $0xc,%esp
    20e0:	68 64 e4 00 00       	push   $0xe464
    20e5:	e8 76 9d 00 00       	call   be60 <strlen>
    20ea:	89 c6                	mov    %eax,%esi
    20ec:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    20f3:	e8 68 9d 00 00       	call   be60 <strlen>
    20f8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    20fc:	83 c4 10             	add    $0x10,%esp
    20ff:	39 d8                	cmp    %ebx,%eax
    2101:	77 c5                	ja     20c8 <test_reading_cgroup_files+0x738>
    2103:	83 ec 0c             	sub    $0xc,%esp
    2106:	68 a7 01 00 00       	push   $0x1a7
    210b:	68 30 c8 00 00       	push   $0xc830
    2110:	ff 75 08             	pushl  0x8(%ebp)
    2113:	68 88 e4 00 00       	push   $0xe488
    2118:	6a 01                	push   $0x1
    211a:	e8 81 a2 00 00       	call   c3a0 <printf>
    211f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2126:	00 00 00 
    2129:	83 c4 20             	add    $0x20,%esp
    212c:	e9 2b fb ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    2131:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_TRUE(read_file(TEST_1_SET_CPU, 1));
    2138:	83 ec 08             	sub    $0x8,%esp
    213b:	83 c3 01             	add    $0x1,%ebx
    213e:	68 18 c8 00 00       	push   $0xc818
    2143:	6a 01                	push   $0x1
    2145:	e8 56 a2 00 00       	call   c3a0 <printf>
    214a:	83 c4 10             	add    $0x10,%esp
    214d:	83 ec 0c             	sub    $0xc,%esp
    2150:	68 ab cb 00 00       	push   $0xcbab
    2155:	e8 06 9d 00 00       	call   be60 <strlen>
    215a:	89 c6                	mov    %eax,%esi
    215c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2163:	e8 f8 9c 00 00       	call   be60 <strlen>
    2168:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    216c:	83 c4 10             	add    $0x10,%esp
    216f:	39 d8                	cmp    %ebx,%eax
    2171:	77 c5                	ja     2138 <test_reading_cgroup_files+0x7a8>
    2173:	83 ec 0c             	sub    $0xc,%esp
    2176:	68 a8 01 00 00       	push   $0x1a8
    217b:	68 30 c8 00 00       	push   $0xc830
    2180:	ff 75 08             	pushl  0x8(%ebp)
    2183:	68 d4 e4 00 00       	push   $0xe4d4
    2188:	6a 01                	push   $0x1
    218a:	e8 11 a2 00 00       	call   c3a0 <printf>
    218f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2196:	00 00 00 
    2199:	83 c4 20             	add    $0x20,%esp
    219c:	e9 bb fa ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    ASSERT_TRUE(read_file(TEST_1_SET_FRZ, 1));
    21a1:	83 ec 08             	sub    $0x8,%esp
    21a4:	83 c3 01             	add    $0x1,%ebx
    21a7:	68 18 c8 00 00       	push   $0xc818
    21ac:	6a 01                	push   $0x1
    21ae:	e8 ed a1 00 00       	call   c3a0 <printf>
    21b3:	83 c4 10             	add    $0x10,%esp
    21b6:	83 ec 0c             	sub    $0xc,%esp
    21b9:	68 c8 cb 00 00       	push   $0xcbc8
    21be:	e8 9d 9c 00 00       	call   be60 <strlen>
    21c3:	89 c6                	mov    %eax,%esi
    21c5:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    21cc:	e8 8f 9c 00 00       	call   be60 <strlen>
    21d1:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    21d5:	83 c4 10             	add    $0x10,%esp
    21d8:	39 d8                	cmp    %ebx,%eax
    21da:	77 c5                	ja     21a1 <test_reading_cgroup_files+0x811>
    21dc:	83 ec 0c             	sub    $0xc,%esp
    21df:	68 a9 01 00 00       	push   $0x1a9
    21e4:	68 30 c8 00 00       	push   $0xc830
    21e9:	ff 75 08             	pushl  0x8(%ebp)
    21ec:	68 1c e5 00 00       	push   $0xe51c
    21f1:	6a 01                	push   $0x1
    21f3:	e8 a8 a1 00 00       	call   c3a0 <printf>
    21f8:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    21ff:	00 00 00 
    2202:	83 c4 20             	add    $0x20,%esp
    2205:	e9 52 fa ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    ASSERT_TRUE(read_file(TEST_1_MEM_CURRENT, 1));
    220a:	83 ec 08             	sub    $0x8,%esp
    220d:	83 c3 01             	add    $0x1,%ebx
    2210:	68 18 c8 00 00       	push   $0xc818
    2215:	6a 01                	push   $0x1
    2217:	e8 84 a1 00 00       	call   c3a0 <printf>
    221c:	83 c4 10             	add    $0x10,%esp
    221f:	83 ec 0c             	sub    $0xc,%esp
    2222:	68 64 e5 00 00       	push   $0xe564
    2227:	e8 34 9c 00 00       	call   be60 <strlen>
    222c:	89 c6                	mov    %eax,%esi
    222e:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2235:	e8 26 9c 00 00       	call   be60 <strlen>
    223a:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    223e:	83 c4 10             	add    $0x10,%esp
    2241:	39 d8                	cmp    %ebx,%eax
    2243:	77 c5                	ja     220a <test_reading_cgroup_files+0x87a>
    2245:	83 ec 0c             	sub    $0xc,%esp
    2248:	68 aa 01 00 00       	push   $0x1aa
    224d:	68 30 c8 00 00       	push   $0xc830
    2252:	ff 75 08             	pushl  0x8(%ebp)
    2255:	68 88 e5 00 00       	push   $0xe588
    225a:	6a 01                	push   $0x1
    225c:	e8 3f a1 00 00       	call   c3a0 <printf>
    2261:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2268:	00 00 00 
    226b:	83 c4 20             	add    $0x20,%esp
    226e:	e9 e9 f9 ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    ASSERT_TRUE(read_file(TEST_1_MEM_MAX, 1));
    2273:	83 ec 08             	sub    $0x8,%esp
    2276:	83 c3 01             	add    $0x1,%ebx
    2279:	68 18 c8 00 00       	push   $0xc818
    227e:	6a 01                	push   $0x1
    2280:	e8 1b a1 00 00       	call   c3a0 <printf>
    2285:	83 c4 10             	add    $0x10,%esp
    2288:	83 ec 0c             	sub    $0xc,%esp
    228b:	68 e5 cb 00 00       	push   $0xcbe5
    2290:	e8 cb 9b 00 00       	call   be60 <strlen>
    2295:	89 c6                	mov    %eax,%esi
    2297:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    229e:	e8 bd 9b 00 00       	call   be60 <strlen>
    22a3:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    22a7:	83 c4 10             	add    $0x10,%esp
    22aa:	39 d8                	cmp    %ebx,%eax
    22ac:	77 c5                	ja     2273 <test_reading_cgroup_files+0x8e3>
    22ae:	83 ec 0c             	sub    $0xc,%esp
    22b1:	68 ab 01 00 00       	push   $0x1ab
    22b6:	68 30 c8 00 00       	push   $0xc830
    22bb:	ff 75 08             	pushl  0x8(%ebp)
    22be:	68 d4 e5 00 00       	push   $0xe5d4
    22c3:	6a 01                	push   $0x1
    22c5:	e8 d6 a0 00 00       	call   c3a0 <printf>
    22ca:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    22d1:	00 00 00 
    22d4:	83 c4 20             	add    $0x20,%esp
    22d7:	e9 80 f9 ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    ASSERT_TRUE(read_file(TEST_1_MEM_MIN, 1));
    22dc:	83 ec 08             	sub    $0x8,%esp
    22df:	83 c3 01             	add    $0x1,%ebx
    22e2:	68 18 c8 00 00       	push   $0xc818
    22e7:	6a 01                	push   $0x1
    22e9:	e8 b2 a0 00 00       	call   c3a0 <printf>
    22ee:	83 c4 10             	add    $0x10,%esp
    22f1:	83 ec 0c             	sub    $0xc,%esp
    22f4:	68 02 cc 00 00       	push   $0xcc02
    22f9:	e8 62 9b 00 00       	call   be60 <strlen>
    22fe:	89 c6                	mov    %eax,%esi
    2300:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2307:	e8 54 9b 00 00       	call   be60 <strlen>
    230c:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2310:	83 c4 10             	add    $0x10,%esp
    2313:	39 d8                	cmp    %ebx,%eax
    2315:	77 c5                	ja     22dc <test_reading_cgroup_files+0x94c>
    2317:	83 ec 0c             	sub    $0xc,%esp
    231a:	68 ac 01 00 00       	push   $0x1ac
    231f:	68 30 c8 00 00       	push   $0xc830
    2324:	ff 75 08             	pushl  0x8(%ebp)
    2327:	68 1c e6 00 00       	push   $0xe61c
    232c:	6a 01                	push   $0x1
    232e:	e8 6d a0 00 00       	call   c3a0 <printf>
    2333:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    233a:	00 00 00 
    233d:	83 c4 20             	add    $0x20,%esp
    2340:	e9 17 f9 ff ff       	jmp    1c5c <test_reading_cgroup_files+0x2cc>
    2345:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002350 <test_enable_and_disable_controller>:
    ASSERT_TRUE(read_file(TEST_1_MEM_STAT, 1));
}

int test_enable_and_disable_controller(int controller_type)
{
    2350:	55                   	push   %ebp
    2351:	89 e5                	mov    %esp,%ebp
    2353:	57                   	push   %edi
    2354:	56                   	push   %esi
    2355:	53                   	push   %ebx
    2356:	83 ec 18             	sub    $0x18,%esp
    2359:	8b 75 08             	mov    0x8(%ebp),%esi
    char *buf;
    int result = 1;

    // Enable given controller.
    buf = build_activate_disable_activate(controller_type);
    235c:	56                   	push   %esi
    235d:	e8 1e e5 ff ff       	call   880 <build_activate_disable_activate>
    if (!buf) {
    2362:	83 c4 10             	add    $0x10,%esp
    2365:	85 c0                	test   %eax,%eax
    2367:	74 67                	je     23d0 <test_enable_and_disable_controller+0x80>
        return 0;
    }
    result &= write_file(TEST_1_CGROUP_SUBTREE_CONTROL, buf);
    2369:	83 ec 08             	sub    $0x8,%esp
    236c:	89 c3                	mov    %eax,%ebx
    236e:	50                   	push   %eax
    236f:	68 b8 d3 00 00       	push   $0xd3b8
    2374:	e8 67 df ff ff       	call   2e0 <write_file>
    2379:	89 c7                	mov    %eax,%edi
    free(buf);
    237b:	89 1c 24             	mov    %ebx,(%esp)
    237e:	e8 cd a1 00 00       	call   c550 <free>


    // Check that the given controller is really enabled.
    result &= verify_controller_enabled(controller_type);
    2383:	89 34 24             	mov    %esi,(%esp)
    2386:	e8 35 e1 ff ff       	call   4c0 <verify_controller_enabled>
    238b:	21 f8                	and    %edi,%eax

    // Disable the given controller.
    buf = build_activate_disable(controller_type);
    238d:	89 34 24             	mov    %esi,(%esp)
    result &= write_file(TEST_1_CGROUP_SUBTREE_CONTROL, buf);
    free(buf);


    // Check that the given controller is really enabled.
    result &= verify_controller_enabled(controller_type);
    2390:	83 e0 01             	and    $0x1,%eax
    2393:	89 c3                	mov    %eax,%ebx

    // Disable the given controller.
    buf = build_activate_disable(controller_type);
    2395:	e8 86 e5 ff ff       	call   920 <build_activate_disable>
    if (!buf) {
    239a:	83 c4 10             	add    $0x10,%esp
    239d:	85 c0                	test   %eax,%eax

    // Check that the given controller is really enabled.
    result &= verify_controller_enabled(controller_type);

    // Disable the given controller.
    buf = build_activate_disable(controller_type);
    239f:	89 c7                	mov    %eax,%edi
    if (!buf) {
    23a1:	74 2d                	je     23d0 <test_enable_and_disable_controller+0x80>
        return 0;
    }
    result &= write_file(TEST_1_CGROUP_SUBTREE_CONTROL, buf);
    23a3:	83 ec 08             	sub    $0x8,%esp
    23a6:	50                   	push   %eax
    23a7:	68 b8 d3 00 00       	push   $0xd3b8
    23ac:	e8 2f df ff ff       	call   2e0 <write_file>
    free(buf);
    23b1:	89 3c 24             	mov    %edi,(%esp)
    // Disable the given controller.
    buf = build_activate_disable(controller_type);
    if (!buf) {
        return 0;
    }
    result &= write_file(TEST_1_CGROUP_SUBTREE_CONTROL, buf);
    23b4:	21 c3                	and    %eax,%ebx
    free(buf);
    23b6:	e8 95 a1 00 00       	call   c550 <free>

    // Check that the given controller is really disabled.
    result &= verify_controller_disabled(controller_type);
    23bb:	89 34 24             	mov    %esi,(%esp)
    23be:	e8 9d e1 ff ff       	call   560 <verify_controller_disabled>

    return result;
    23c3:	83 c4 10             	add    $0x10,%esp
}
    23c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    free(buf);

    // Check that the given controller is really disabled.
    result &= verify_controller_disabled(controller_type);

    return result;
    23c9:	21 d8                	and    %ebx,%eax
}
    23cb:	5b                   	pop    %ebx
    23cc:	5e                   	pop    %esi
    23cd:	5f                   	pop    %edi
    23ce:	5d                   	pop    %ebp
    23cf:	c3                   	ret    
    23d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    int result = 1;

    // Enable given controller.
    buf = build_activate_disable_activate(controller_type);
    if (!buf) {
        return 0;
    23d3:	31 c0                	xor    %eax,%eax

    // Check that the given controller is really disabled.
    result &= verify_controller_disabled(controller_type);

    return result;
}
    23d5:	5b                   	pop    %ebx
    23d6:	5e                   	pop    %esi
    23d7:	5f                   	pop    %edi
    23d8:	5d                   	pop    %ebp
    23d9:	c3                   	ret    
    23da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000023e0 <test_enable_and_disable_all_controllers>:

TEST(test_enable_and_disable_all_controllers)
{
    23e0:	55                   	push   %ebp
    23e1:	89 e5                	mov    %esp,%ebp
    23e3:	56                   	push   %esi
    23e4:	53                   	push   %ebx
    for (int i = CPU_CNT; i < CPU_CNT + CONTROLLER_COUNT; i++) {
    23e5:	31 db                	xor    %ebx,%ebx
        ASSERT_TRUE(test_enable_and_disable_controller(i));
    23e7:	83 ec 0c             	sub    $0xc,%esp
    23ea:	53                   	push   %ebx
    23eb:	e8 60 ff ff ff       	call   2350 <test_enable_and_disable_controller>
    23f0:	83 c4 10             	add    $0x10,%esp
    23f3:	85 c0                	test   %eax,%eax
    23f5:	74 19                	je     2410 <test_enable_and_disable_all_controllers+0x30>
    return result;
}

TEST(test_enable_and_disable_all_controllers)
{
    for (int i = CPU_CNT; i < CPU_CNT + CONTROLLER_COUNT; i++) {
    23f7:	83 c3 01             	add    $0x1,%ebx
    23fa:	83 fb 04             	cmp    $0x4,%ebx
    23fd:	75 e8                	jne    23e7 <test_enable_and_disable_all_controllers+0x7>
        ASSERT_TRUE(test_enable_and_disable_controller(i));
    }
}
    23ff:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2402:	5b                   	pop    %ebx
    2403:	5e                   	pop    %esi
    2404:	5d                   	pop    %ebp
    2405:	c3                   	ret    
    2406:	8d 76 00             	lea    0x0(%esi),%esi
    2409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    2410:	31 db                	xor    %ebx,%ebx
    2412:	eb 19                	jmp    242d <test_enable_and_disable_all_controllers+0x4d>
    2414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}

TEST(test_enable_and_disable_all_controllers)
{
    for (int i = CPU_CNT; i < CPU_CNT + CONTROLLER_COUNT; i++) {
        ASSERT_TRUE(test_enable_and_disable_controller(i));
    2418:	83 ec 08             	sub    $0x8,%esp
    241b:	83 c3 01             	add    $0x1,%ebx
    241e:	68 18 c8 00 00       	push   $0xc818
    2423:	6a 01                	push   $0x1
    2425:	e8 76 9f 00 00       	call   c3a0 <printf>
    242a:	83 c4 10             	add    $0x10,%esp
    242d:	83 ec 0c             	sub    $0xc,%esp
    2430:	68 ac e6 00 00       	push   $0xe6ac
    2435:	e8 26 9a 00 00       	call   be60 <strlen>
    243a:	89 c6                	mov    %eax,%esi
    243c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2443:	e8 18 9a 00 00       	call   be60 <strlen>
    2448:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    244c:	83 c4 10             	add    $0x10,%esp
    244f:	39 d8                	cmp    %ebx,%eax
    2451:	77 c5                	ja     2418 <test_enable_and_disable_all_controllers+0x38>
    2453:	83 ec 0c             	sub    $0xc,%esp
    2456:	68 d2 01 00 00       	push   $0x1d2
    245b:	68 30 c8 00 00       	push   $0xc830
    2460:	ff 75 08             	pushl  0x8(%ebp)
    2463:	68 d4 e6 00 00       	push   $0xe6d4
    2468:	6a 01                	push   $0x1
    246a:	e8 31 9f 00 00       	call   c3a0 <printf>
    246f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2476:	00 00 00 
    2479:	83 c4 20             	add    $0x20,%esp
    }
}
    247c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    247f:	5b                   	pop    %ebx
    2480:	5e                   	pop    %esi
    2481:	5d                   	pop    %ebp
    2482:	c3                   	ret    
    2483:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002490 <test_limiting_cpu_max_and_period>:

TEST(test_limiting_cpu_max_and_period)
{
    2490:	55                   	push   %ebp
    2491:	89 e5                	mov    %esp,%ebp
    2493:	57                   	push   %edi
    2494:	56                   	push   %esi
    2495:	53                   	push   %ebx
    2496:	31 db                	xor    %ebx,%ebx
    2498:	83 ec 18             	sub    $0x18,%esp
    249b:	8b 7d 08             	mov    0x8(%ebp),%edi
    // Enable cpu controller
    ASSERT_TRUE(enable_controller(CPU_CNT));
    249e:	6a 00                	push   $0x0
    24a0:	e8 7b df ff ff       	call   420 <enable_controller>
    24a5:	83 c4 10             	add    $0x10,%esp
    24a8:	85 c0                	test   %eax,%eax
    24aa:	74 19                	je     24c5 <test_limiting_cpu_max_and_period+0x35>
    24ac:	eb 72                	jmp    2520 <test_limiting_cpu_max_and_period+0x90>
    24ae:	66 90                	xchg   %ax,%ax
    24b0:	83 ec 08             	sub    $0x8,%esp
    24b3:	83 c3 01             	add    $0x1,%ebx
    24b6:	68 18 c8 00 00       	push   $0xc818
    24bb:	6a 01                	push   $0x1
    24bd:	e8 de 9e 00 00       	call   c3a0 <printf>
    24c2:	83 c4 10             	add    $0x10,%esp
    24c5:	83 ec 0c             	sub    $0xc,%esp
    24c8:	68 3d cc 00 00       	push   $0xcc3d
    24cd:	e8 8e 99 00 00       	call   be60 <strlen>
    24d2:	89 c6                	mov    %eax,%esi
    24d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    24db:	e8 80 99 00 00       	call   be60 <strlen>
    24e0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    24e4:	83 c4 10             	add    $0x10,%esp
    24e7:	39 d8                	cmp    %ebx,%eax
    24e9:	77 c5                	ja     24b0 <test_limiting_cpu_max_and_period+0x20>
    24eb:	83 ec 0c             	sub    $0xc,%esp
    24ee:	68 d9 01 00 00       	push   $0x1d9
    24f3:	68 30 c8 00 00       	push   $0xc830
    24f8:	57                   	push   %edi
    24f9:	68 24 e7 00 00       	push   $0xe724
    24fe:	6a 01                	push   $0x1
    2500:	e8 9b 9e 00 00       	call   c3a0 <printf>
    2505:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    250c:	00 00 00 
    250f:	83 c4 20             	add    $0x20,%esp
    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_CPU_MAX, 0), "max - 1000\nperiod - 20000\n"));

    // Disable cpu controller
    ASSERT_TRUE(disable_controller(CPU_CNT));
}
    2512:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2515:	5b                   	pop    %ebx
    2516:	5e                   	pop    %esi
    2517:	5f                   	pop    %edi
    2518:	5d                   	pop    %ebp
    2519:	c3                   	ret    
    251a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Enable cpu controller
    ASSERT_TRUE(enable_controller(CPU_CNT));

    // Update only max
    ASSERT_TRUE(write_file(TEST_1_CPU_MAX, "5000"));
    2520:	83 ec 08             	sub    $0x8,%esp
    2523:	31 db                	xor    %ebx,%ebx
    2525:	68 58 cc 00 00       	push   $0xcc58
    252a:	68 3e ca 00 00       	push   $0xca3e
    252f:	e8 ac dd ff ff       	call   2e0 <write_file>
    2534:	83 c4 10             	add    $0x10,%esp
    2537:	85 c0                	test   %eax,%eax
    2539:	74 1a                	je     2555 <test_limiting_cpu_max_and_period+0xc5>
    253b:	eb 73                	jmp    25b0 <test_limiting_cpu_max_and_period+0x120>
    253d:	8d 76 00             	lea    0x0(%esi),%esi
    2540:	83 ec 08             	sub    $0x8,%esp
    2543:	83 c3 01             	add    $0x1,%ebx
    2546:	68 18 c8 00 00       	push   $0xc818
    254b:	6a 01                	push   $0x1
    254d:	e8 4e 9e 00 00       	call   c3a0 <printf>
    2552:	83 c4 10             	add    $0x10,%esp
    2555:	83 ec 0c             	sub    $0xc,%esp
    2558:	68 68 e7 00 00       	push   $0xe768
    255d:	e8 fe 98 00 00       	call   be60 <strlen>
    2562:	89 c6                	mov    %eax,%esi
    2564:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    256b:	e8 f0 98 00 00       	call   be60 <strlen>
    2570:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2574:	83 c4 10             	add    $0x10,%esp
    2577:	39 d8                	cmp    %ebx,%eax
    2579:	77 c5                	ja     2540 <test_limiting_cpu_max_and_period+0xb0>
    257b:	83 ec 0c             	sub    $0xc,%esp
    257e:	68 dc 01 00 00       	push   $0x1dc
    2583:	68 30 c8 00 00       	push   $0xc830
    2588:	57                   	push   %edi
    2589:	68 8c e7 00 00       	push   $0xe78c
    258e:	6a 01                	push   $0x1
    2590:	e8 0b 9e 00 00       	call   c3a0 <printf>
    2595:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    259c:	00 00 00 
    259f:	83 c4 20             	add    $0x20,%esp
    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_CPU_MAX, 0), "max - 1000\nperiod - 20000\n"));

    // Disable cpu controller
    ASSERT_TRUE(disable_controller(CPU_CNT));
}
    25a2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    25a5:	5b                   	pop    %ebx
    25a6:	5e                   	pop    %esi
    25a7:	5f                   	pop    %edi
    25a8:	5d                   	pop    %ebp
    25a9:	c3                   	ret    
    25aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update only max
    ASSERT_TRUE(write_file(TEST_1_CPU_MAX, "5000"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_CPU_MAX, 0), "max - 5000\nperiod - 100000\n"));
    25b0:	83 ec 08             	sub    $0x8,%esp
    25b3:	6a 00                	push   $0x0
    25b5:	68 3e ca 00 00       	push   $0xca3e
    25ba:	e8 61 dc ff ff       	call   220 <read_file>
    25bf:	5b                   	pop    %ebx
    25c0:	5e                   	pop    %esi
    25c1:	68 5d cc 00 00       	push   $0xcc5d
    25c6:	50                   	push   %eax
    25c7:	31 db                	xor    %ebx,%ebx
    25c9:	e8 b2 97 00 00       	call   bd80 <strcmp>
    25ce:	83 c4 10             	add    $0x10,%esp
    25d1:	85 c0                	test   %eax,%eax
    25d3:	75 20                	jne    25f5 <test_limiting_cpu_max_and_period+0x165>
    25d5:	eb 70                	jmp    2647 <test_limiting_cpu_max_and_period+0x1b7>
    25d7:	89 f6                	mov    %esi,%esi
    25d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    25e0:	83 ec 08             	sub    $0x8,%esp
    25e3:	83 c3 01             	add    $0x1,%ebx
    25e6:	68 18 c8 00 00       	push   $0xc818
    25eb:	6a 01                	push   $0x1
    25ed:	e8 ae 9d 00 00       	call   c3a0 <printf>
    25f2:	83 c4 10             	add    $0x10,%esp
    25f5:	83 ec 0c             	sub    $0xc,%esp
    25f8:	68 d8 e7 00 00       	push   $0xe7d8
    25fd:	e8 5e 98 00 00       	call   be60 <strlen>
    2602:	89 c6                	mov    %eax,%esi
    2604:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    260b:	e8 50 98 00 00       	call   be60 <strlen>
    2610:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2614:	83 c4 10             	add    $0x10,%esp
    2617:	39 d8                	cmp    %ebx,%eax
    2619:	77 c5                	ja     25e0 <test_limiting_cpu_max_and_period+0x150>
    261b:	83 ec 0c             	sub    $0xc,%esp
    261e:	68 df 01 00 00       	push   $0x1df
    2623:	68 30 c8 00 00       	push   $0xc830
    2628:	57                   	push   %edi
    2629:	68 20 e8 00 00       	push   $0xe820
    262e:	6a 01                	push   $0x1
    2630:	e8 6b 9d 00 00       	call   c3a0 <printf>
    2635:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    263c:	00 00 00 
    263f:	83 c4 20             	add    $0x20,%esp
    2642:	e9 cb fe ff ff       	jmp    2512 <test_limiting_cpu_max_and_period+0x82>

    // Update max & period
    ASSERT_TRUE(write_file(TEST_1_CPU_MAX, "1000,20000"));
    2647:	83 ec 08             	sub    $0x8,%esp
    264a:	31 db                	xor    %ebx,%ebx
    264c:	68 79 cc 00 00       	push   $0xcc79
    2651:	68 3e ca 00 00       	push   $0xca3e
    2656:	e8 85 dc ff ff       	call   2e0 <write_file>
    265b:	83 c4 10             	add    $0x10,%esp
    265e:	85 c0                	test   %eax,%eax
    2660:	74 1b                	je     267d <test_limiting_cpu_max_and_period+0x1ed>
    2662:	eb 6b                	jmp    26cf <test_limiting_cpu_max_and_period+0x23f>
    2664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2668:	83 ec 08             	sub    $0x8,%esp
    266b:	83 c3 01             	add    $0x1,%ebx
    266e:	68 18 c8 00 00       	push   $0xc818
    2673:	6a 01                	push   $0x1
    2675:	e8 26 9d 00 00       	call   c3a0 <printf>
    267a:	83 c4 10             	add    $0x10,%esp
    267d:	83 ec 0c             	sub    $0xc,%esp
    2680:	68 90 e8 00 00       	push   $0xe890
    2685:	e8 d6 97 00 00       	call   be60 <strlen>
    268a:	89 c6                	mov    %eax,%esi
    268c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2693:	e8 c8 97 00 00       	call   be60 <strlen>
    2698:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    269c:	83 c4 10             	add    $0x10,%esp
    269f:	39 d8                	cmp    %ebx,%eax
    26a1:	77 c5                	ja     2668 <test_limiting_cpu_max_and_period+0x1d8>
    26a3:	83 ec 0c             	sub    $0xc,%esp
    26a6:	68 e2 01 00 00       	push   $0x1e2
    26ab:	68 30 c8 00 00       	push   $0xc830
    26b0:	57                   	push   %edi
    26b1:	68 bc e8 00 00       	push   $0xe8bc
    26b6:	6a 01                	push   $0x1
    26b8:	e8 e3 9c 00 00       	call   c3a0 <printf>
    26bd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    26c4:	00 00 00 
    26c7:	83 c4 20             	add    $0x20,%esp
    26ca:	e9 43 fe ff ff       	jmp    2512 <test_limiting_cpu_max_and_period+0x82>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_CPU_MAX, 0), "max - 1000\nperiod - 20000\n"));
    26cf:	83 ec 08             	sub    $0x8,%esp
    26d2:	31 db                	xor    %ebx,%ebx
    26d4:	6a 00                	push   $0x0
    26d6:	68 3e ca 00 00       	push   $0xca3e
    26db:	e8 40 db ff ff       	call   220 <read_file>
    26e0:	5a                   	pop    %edx
    26e1:	59                   	pop    %ecx
    26e2:	68 84 cc 00 00       	push   $0xcc84
    26e7:	50                   	push   %eax
    26e8:	e8 93 96 00 00       	call   bd80 <strcmp>
    26ed:	83 c4 10             	add    $0x10,%esp
    26f0:	85 c0                	test   %eax,%eax
    26f2:	75 21                	jne    2715 <test_limiting_cpu_max_and_period+0x285>
    26f4:	eb 71                	jmp    2767 <test_limiting_cpu_max_and_period+0x2d7>
    26f6:	8d 76 00             	lea    0x0(%esi),%esi
    26f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    2700:	83 ec 08             	sub    $0x8,%esp
    2703:	83 c3 01             	add    $0x1,%ebx
    2706:	68 18 c8 00 00       	push   $0xc818
    270b:	6a 01                	push   $0x1
    270d:	e8 8e 9c 00 00       	call   c3a0 <printf>
    2712:	83 c4 10             	add    $0x10,%esp
    2715:	83 ec 0c             	sub    $0xc,%esp
    2718:	68 10 e9 00 00       	push   $0xe910
    271d:	e8 3e 97 00 00       	call   be60 <strlen>
    2722:	89 c6                	mov    %eax,%esi
    2724:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    272b:	e8 30 97 00 00       	call   be60 <strlen>
    2730:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2734:	83 c4 10             	add    $0x10,%esp
    2737:	39 d8                	cmp    %ebx,%eax
    2739:	77 c5                	ja     2700 <test_limiting_cpu_max_and_period+0x270>
    273b:	83 ec 0c             	sub    $0xc,%esp
    273e:	68 e5 01 00 00       	push   $0x1e5
    2743:	68 30 c8 00 00       	push   $0xc830
    2748:	57                   	push   %edi
    2749:	68 58 e9 00 00       	push   $0xe958
    274e:	6a 01                	push   $0x1
    2750:	e8 4b 9c 00 00       	call   c3a0 <printf>
    2755:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    275c:	00 00 00 
    275f:	83 c4 20             	add    $0x20,%esp
    2762:	e9 ab fd ff ff       	jmp    2512 <test_limiting_cpu_max_and_period+0x82>

    // Disable cpu controller
    ASSERT_TRUE(disable_controller(CPU_CNT));
    2767:	83 ec 0c             	sub    $0xc,%esp
    276a:	31 db                	xor    %ebx,%ebx
    276c:	6a 00                	push   $0x0
    276e:	e8 fd dc ff ff       	call   470 <disable_controller>
    2773:	83 c4 10             	add    $0x10,%esp
    2776:	85 c0                	test   %eax,%eax
    2778:	74 1b                	je     2795 <test_limiting_cpu_max_and_period+0x305>
    277a:	e9 93 fd ff ff       	jmp    2512 <test_limiting_cpu_max_and_period+0x82>
    277f:	90                   	nop
    2780:	83 ec 08             	sub    $0x8,%esp
    2783:	83 c3 01             	add    $0x1,%ebx
    2786:	68 18 c8 00 00       	push   $0xc818
    278b:	6a 01                	push   $0x1
    278d:	e8 0e 9c 00 00       	call   c3a0 <printf>
    2792:	83 c4 10             	add    $0x10,%esp
    2795:	83 ec 0c             	sub    $0xc,%esp
    2798:	68 9f cc 00 00       	push   $0xcc9f
    279d:	e8 be 96 00 00       	call   be60 <strlen>
    27a2:	89 c6                	mov    %eax,%esi
    27a4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    27ab:	e8 b0 96 00 00       	call   be60 <strlen>
    27b0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    27b4:	83 c4 10             	add    $0x10,%esp
    27b7:	39 d8                	cmp    %ebx,%eax
    27b9:	77 c5                	ja     2780 <test_limiting_cpu_max_and_period+0x2f0>
    27bb:	83 ec 0c             	sub    $0xc,%esp
    27be:	68 e8 01 00 00       	push   $0x1e8
    27c3:	68 30 c8 00 00       	push   $0xc830
    27c8:	57                   	push   %edi
    27c9:	68 c8 e9 00 00       	push   $0xe9c8
    27ce:	6a 01                	push   $0x1
    27d0:	e8 cb 9b 00 00       	call   c3a0 <printf>
    27d5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    27dc:	00 00 00 
    27df:	83 c4 20             	add    $0x20,%esp
    27e2:	e9 2b fd ff ff       	jmp    2512 <test_limiting_cpu_max_and_period+0x82>
    27e7:	89 f6                	mov    %esi,%esi
    27e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000027f0 <test_limiting_pids>:
}

TEST(test_limiting_pids)
{
    27f0:	55                   	push   %ebp
    27f1:	89 e5                	mov    %esp,%ebp
    27f3:	56                   	push   %esi
    27f4:	53                   	push   %ebx
    27f5:	31 db                	xor    %ebx,%ebx
    // Enable pid controller
    ASSERT_TRUE(enable_controller(PID_CNT));
    27f7:	83 ec 0c             	sub    $0xc,%esp
    27fa:	6a 01                	push   $0x1
    27fc:	e8 1f dc ff ff       	call   420 <enable_controller>
    2801:	83 c4 10             	add    $0x10,%esp
    2804:	85 c0                	test   %eax,%eax
    2806:	74 1d                	je     2825 <test_limiting_pids+0x35>
    2808:	eb 76                	jmp    2880 <test_limiting_pids+0x90>
    280a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2810:	83 ec 08             	sub    $0x8,%esp
    2813:	83 c3 01             	add    $0x1,%ebx
    2816:	68 18 c8 00 00       	push   $0xc818
    281b:	6a 01                	push   $0x1
    281d:	e8 7e 9b 00 00       	call   c3a0 <printf>
    2822:	83 c4 10             	add    $0x10,%esp
    2825:	83 ec 0c             	sub    $0xc,%esp
    2828:	68 bb cc 00 00       	push   $0xccbb
    282d:	e8 2e 96 00 00       	call   be60 <strlen>
    2832:	89 c6                	mov    %eax,%esi
    2834:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    283b:	e8 20 96 00 00       	call   be60 <strlen>
    2840:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2844:	83 c4 10             	add    $0x10,%esp
    2847:	39 d8                	cmp    %ebx,%eax
    2849:	77 c5                	ja     2810 <test_limiting_pids+0x20>
    284b:	83 ec 0c             	sub    $0xc,%esp
    284e:	68 ee 01 00 00       	push   $0x1ee
    2853:	68 30 c8 00 00       	push   $0xc830
    2858:	ff 75 08             	pushl  0x8(%ebp)
    285b:	68 10 ea 00 00       	push   $0xea10
    2860:	6a 01                	push   $0x1
    2862:	e8 39 9b 00 00       	call   c3a0 <printf>
    2867:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    286e:	00 00 00 
    2871:	83 c4 20             	add    $0x20,%esp
    // Restore to 64
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "64"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_PID_MAX, 0), "max - 64\n"));
}
    2874:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2877:	5b                   	pop    %ebx
    2878:	5e                   	pop    %esi
    2879:	5d                   	pop    %ebp
    287a:	c3                   	ret    
    287b:	90                   	nop
    287c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
{
    // Enable pid controller
    ASSERT_TRUE(enable_controller(PID_CNT));

    // Update pid limit
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "10"));
    2880:	83 ec 08             	sub    $0x8,%esp
    2883:	31 db                	xor    %ebx,%ebx
    2885:	68 d6 cc 00 00       	push   $0xccd6
    288a:	68 84 ca 00 00       	push   $0xca84
    288f:	e8 4c da ff ff       	call   2e0 <write_file>
    2894:	83 c4 10             	add    $0x10,%esp
    2897:	85 c0                	test   %eax,%eax
    2899:	74 1a                	je     28b5 <test_limiting_pids+0xc5>
    289b:	eb 73                	jmp    2910 <test_limiting_pids+0x120>
    289d:	8d 76 00             	lea    0x0(%esi),%esi
    28a0:	83 ec 08             	sub    $0x8,%esp
    28a3:	83 c3 01             	add    $0x1,%ebx
    28a6:	68 18 c8 00 00       	push   $0xc818
    28ab:	6a 01                	push   $0x1
    28ad:	e8 ee 9a 00 00       	call   c3a0 <printf>
    28b2:	83 c4 10             	add    $0x10,%esp
    28b5:	83 ec 0c             	sub    $0xc,%esp
    28b8:	68 54 ea 00 00       	push   $0xea54
    28bd:	e8 9e 95 00 00       	call   be60 <strlen>
    28c2:	89 c6                	mov    %eax,%esi
    28c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    28cb:	e8 90 95 00 00       	call   be60 <strlen>
    28d0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    28d4:	83 c4 10             	add    $0x10,%esp
    28d7:	39 d8                	cmp    %ebx,%eax
    28d9:	77 c5                	ja     28a0 <test_limiting_pids+0xb0>
    28db:	83 ec 0c             	sub    $0xc,%esp
    28de:	68 f1 01 00 00       	push   $0x1f1
    28e3:	68 30 c8 00 00       	push   $0xc830
    28e8:	ff 75 08             	pushl  0x8(%ebp)
    28eb:	68 78 ea 00 00       	push   $0xea78
    28f0:	6a 01                	push   $0x1
    28f2:	e8 a9 9a 00 00       	call   c3a0 <printf>
    28f7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    28fe:	00 00 00 
    2901:	83 c4 20             	add    $0x20,%esp
    // Restore to 64
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "64"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_PID_MAX, 0), "max - 64\n"));
}
    2904:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2907:	5b                   	pop    %ebx
    2908:	5e                   	pop    %esi
    2909:	5d                   	pop    %ebp
    290a:	c3                   	ret    
    290b:	90                   	nop
    290c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

    // Update pid limit
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "10"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_PID_MAX, 0), "max - 10\n"));
    2910:	83 ec 08             	sub    $0x8,%esp
    2913:	6a 00                	push   $0x0
    2915:	68 84 ca 00 00       	push   $0xca84
    291a:	e8 01 d9 ff ff       	call   220 <read_file>
    291f:	5b                   	pop    %ebx
    2920:	5e                   	pop    %esi
    2921:	68 d9 cc 00 00       	push   $0xccd9
    2926:	50                   	push   %eax
    2927:	31 db                	xor    %ebx,%ebx
    2929:	e8 52 94 00 00       	call   bd80 <strcmp>
    292e:	83 c4 10             	add    $0x10,%esp
    2931:	85 c0                	test   %eax,%eax
    2933:	75 20                	jne    2955 <test_limiting_pids+0x165>
    2935:	eb 72                	jmp    29a9 <test_limiting_pids+0x1b9>
    2937:	89 f6                	mov    %esi,%esi
    2939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    2940:	83 ec 08             	sub    $0x8,%esp
    2943:	83 c3 01             	add    $0x1,%ebx
    2946:	68 18 c8 00 00       	push   $0xc818
    294b:	6a 01                	push   $0x1
    294d:	e8 4e 9a 00 00       	call   c3a0 <printf>
    2952:	83 c4 10             	add    $0x10,%esp
    2955:	83 ec 0c             	sub    $0xc,%esp
    2958:	68 c4 ea 00 00       	push   $0xeac4
    295d:	e8 fe 94 00 00       	call   be60 <strlen>
    2962:	89 c6                	mov    %eax,%esi
    2964:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    296b:	e8 f0 94 00 00       	call   be60 <strlen>
    2970:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2974:	83 c4 10             	add    $0x10,%esp
    2977:	39 d8                	cmp    %ebx,%eax
    2979:	77 c5                	ja     2940 <test_limiting_pids+0x150>
    297b:	83 ec 0c             	sub    $0xc,%esp
    297e:	68 f4 01 00 00       	push   $0x1f4
    2983:	68 30 c8 00 00       	push   $0xc830
    2988:	ff 75 08             	pushl  0x8(%ebp)
    298b:	68 f8 ea 00 00       	push   $0xeaf8
    2990:	6a 01                	push   $0x1
    2992:	e8 09 9a 00 00       	call   c3a0 <printf>
    2997:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    299e:	00 00 00 
    29a1:	83 c4 20             	add    $0x20,%esp
    29a4:	e9 cb fe ff ff       	jmp    2874 <test_limiting_pids+0x84>

    // Restore to 64
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "64"));
    29a9:	83 ec 08             	sub    $0x8,%esp
    29ac:	31 db                	xor    %ebx,%ebx
    29ae:	68 e3 cc 00 00       	push   $0xcce3
    29b3:	68 84 ca 00 00       	push   $0xca84
    29b8:	e8 23 d9 ff ff       	call   2e0 <write_file>
    29bd:	83 c4 10             	add    $0x10,%esp
    29c0:	85 c0                	test   %eax,%eax
    29c2:	74 21                	je     29e5 <test_limiting_pids+0x1f5>
    29c4:	eb 73                	jmp    2a39 <test_limiting_pids+0x249>
    29c6:	8d 76 00             	lea    0x0(%esi),%esi
    29c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    29d0:	83 ec 08             	sub    $0x8,%esp
    29d3:	83 c3 01             	add    $0x1,%ebx
    29d6:	68 18 c8 00 00       	push   $0xc818
    29db:	6a 01                	push   $0x1
    29dd:	e8 be 99 00 00       	call   c3a0 <printf>
    29e2:	83 c4 10             	add    $0x10,%esp
    29e5:	83 ec 0c             	sub    $0xc,%esp
    29e8:	68 54 eb 00 00       	push   $0xeb54
    29ed:	e8 6e 94 00 00       	call   be60 <strlen>
    29f2:	89 c6                	mov    %eax,%esi
    29f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    29fb:	e8 60 94 00 00       	call   be60 <strlen>
    2a00:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2a04:	83 c4 10             	add    $0x10,%esp
    2a07:	39 d8                	cmp    %ebx,%eax
    2a09:	77 c5                	ja     29d0 <test_limiting_pids+0x1e0>
    2a0b:	83 ec 0c             	sub    $0xc,%esp
    2a0e:	68 f7 01 00 00       	push   $0x1f7
    2a13:	68 30 c8 00 00       	push   $0xc830
    2a18:	ff 75 08             	pushl  0x8(%ebp)
    2a1b:	68 78 eb 00 00       	push   $0xeb78
    2a20:	6a 01                	push   $0x1
    2a22:	e8 79 99 00 00       	call   c3a0 <printf>
    2a27:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2a2e:	00 00 00 
    2a31:	83 c4 20             	add    $0x20,%esp
    2a34:	e9 3b fe ff ff       	jmp    2874 <test_limiting_pids+0x84>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_PID_MAX, 0), "max - 64\n"));
    2a39:	83 ec 08             	sub    $0x8,%esp
    2a3c:	31 db                	xor    %ebx,%ebx
    2a3e:	6a 00                	push   $0x0
    2a40:	68 84 ca 00 00       	push   $0xca84
    2a45:	e8 d6 d7 ff ff       	call   220 <read_file>
    2a4a:	5a                   	pop    %edx
    2a4b:	59                   	pop    %ecx
    2a4c:	68 e6 cc 00 00       	push   $0xcce6
    2a51:	50                   	push   %eax
    2a52:	e8 29 93 00 00       	call   bd80 <strcmp>
    2a57:	83 c4 10             	add    $0x10,%esp
    2a5a:	85 c0                	test   %eax,%eax
    2a5c:	75 1f                	jne    2a7d <test_limiting_pids+0x28d>
    2a5e:	e9 11 fe ff ff       	jmp    2874 <test_limiting_pids+0x84>
    2a63:	90                   	nop
    2a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2a68:	83 ec 08             	sub    $0x8,%esp
    2a6b:	83 c3 01             	add    $0x1,%ebx
    2a6e:	68 18 c8 00 00       	push   $0xc818
    2a73:	6a 01                	push   $0x1
    2a75:	e8 26 99 00 00       	call   c3a0 <printf>
    2a7a:	83 c4 10             	add    $0x10,%esp
    2a7d:	83 ec 0c             	sub    $0xc,%esp
    2a80:	68 c4 eb 00 00       	push   $0xebc4
    2a85:	e8 d6 93 00 00       	call   be60 <strlen>
    2a8a:	89 c6                	mov    %eax,%esi
    2a8c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2a93:	e8 c8 93 00 00       	call   be60 <strlen>
    2a98:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2a9c:	83 c4 10             	add    $0x10,%esp
    2a9f:	39 d8                	cmp    %ebx,%eax
    2aa1:	77 c5                	ja     2a68 <test_limiting_pids+0x278>
    2aa3:	83 ec 0c             	sub    $0xc,%esp
    2aa6:	68 fa 01 00 00       	push   $0x1fa
    2aab:	68 30 c8 00 00       	push   $0xc830
    2ab0:	ff 75 08             	pushl  0x8(%ebp)
    2ab3:	68 f8 eb 00 00       	push   $0xebf8
    2ab8:	6a 01                	push   $0x1
    2aba:	e8 e1 98 00 00       	call   c3a0 <printf>
    2abf:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2ac6:	00 00 00 
    2ac9:	83 c4 20             	add    $0x20,%esp
    2acc:	e9 a3 fd ff ff       	jmp    2874 <test_limiting_pids+0x84>
    2ad1:	eb 0d                	jmp    2ae0 <test_move_failure>
    2ad3:	90                   	nop
    2ad4:	90                   	nop
    2ad5:	90                   	nop
    2ad6:	90                   	nop
    2ad7:	90                   	nop
    2ad8:	90                   	nop
    2ad9:	90                   	nop
    2ada:	90                   	nop
    2adb:	90                   	nop
    2adc:	90                   	nop
    2add:	90                   	nop
    2ade:	90                   	nop
    2adf:	90                   	nop

00002ae0 <test_move_failure>:
}

TEST(test_move_failure)
{
    2ae0:	55                   	push   %ebp
    2ae1:	89 e5                	mov    %esp,%ebp
    2ae3:	57                   	push   %edi
    2ae4:	56                   	push   %esi
    2ae5:	53                   	push   %ebx
    2ae6:	31 db                	xor    %ebx,%ebx
    2ae8:	83 ec 18             	sub    $0x18,%esp
    2aeb:	8b 7d 08             	mov    0x8(%ebp),%edi
    // Enable pid controller
    ASSERT_TRUE(enable_controller(PID_CNT));
    2aee:	6a 01                	push   $0x1
    2af0:	e8 2b d9 ff ff       	call   420 <enable_controller>
    2af5:	83 c4 10             	add    $0x10,%esp
    2af8:	85 c0                	test   %eax,%eax
    2afa:	74 19                	je     2b15 <test_move_failure+0x35>
    2afc:	eb 72                	jmp    2b70 <test_move_failure+0x90>
    2afe:	66 90                	xchg   %ax,%ax
    2b00:	83 ec 08             	sub    $0x8,%esp
    2b03:	83 c3 01             	add    $0x1,%ebx
    2b06:	68 18 c8 00 00       	push   $0xc818
    2b0b:	6a 01                	push   $0x1
    2b0d:	e8 8e 98 00 00       	call   c3a0 <printf>
    2b12:	83 c4 10             	add    $0x10,%esp
    2b15:	83 ec 0c             	sub    $0xc,%esp
    2b18:	68 bb cc 00 00       	push   $0xccbb
    2b1d:	e8 3e 93 00 00       	call   be60 <strlen>
    2b22:	89 c6                	mov    %eax,%esi
    2b24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2b2b:	e8 30 93 00 00       	call   be60 <strlen>
    2b30:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2b34:	83 c4 10             	add    $0x10,%esp
    2b37:	39 d8                	cmp    %ebx,%eax
    2b39:	77 c5                	ja     2b00 <test_move_failure+0x20>
    2b3b:	83 ec 0c             	sub    $0xc,%esp
    2b3e:	68 00 02 00 00       	push   $0x200
    2b43:	68 30 c8 00 00       	push   $0xc830
    2b48:	57                   	push   %edi
    2b49:	68 10 ea 00 00       	push   $0xea10
    2b4e:	6a 01                	push   $0x1
    2b50:	e8 4b 98 00 00       	call   c3a0 <printf>
    2b55:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2b5c:	00 00 00 
    2b5f:	83 c4 20             	add    $0x20,%esp
    // Check that the process is still in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

    // Disable PID controller
    ASSERT_TRUE(disable_controller(PID_CNT));
}
    2b62:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2b65:	5b                   	pop    %ebx
    2b66:	5e                   	pop    %esi
    2b67:	5f                   	pop    %edi
    2b68:	5d                   	pop    %ebp
    2b69:	c3                   	ret    
    2b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Enable pid controller
    ASSERT_TRUE(enable_controller(PID_CNT));

    // Update pid limit
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "0"));
    2b70:	83 ec 08             	sub    $0x8,%esp
    2b73:	31 db                	xor    %ebx,%ebx
    2b75:	68 82 cc 00 00       	push   $0xcc82
    2b7a:	68 84 ca 00 00       	push   $0xca84
    2b7f:	e8 5c d7 ff ff       	call   2e0 <write_file>
    2b84:	83 c4 10             	add    $0x10,%esp
    2b87:	85 c0                	test   %eax,%eax
    2b89:	74 1a                	je     2ba5 <test_move_failure+0xc5>
    2b8b:	eb 73                	jmp    2c00 <test_move_failure+0x120>
    2b8d:	8d 76 00             	lea    0x0(%esi),%esi
    2b90:	83 ec 08             	sub    $0x8,%esp
    2b93:	83 c3 01             	add    $0x1,%ebx
    2b96:	68 18 c8 00 00       	push   $0xc818
    2b9b:	6a 01                	push   $0x1
    2b9d:	e8 fe 97 00 00       	call   c3a0 <printf>
    2ba2:	83 c4 10             	add    $0x10,%esp
    2ba5:	83 ec 0c             	sub    $0xc,%esp
    2ba8:	68 54 ec 00 00       	push   $0xec54
    2bad:	e8 ae 92 00 00       	call   be60 <strlen>
    2bb2:	89 c6                	mov    %eax,%esi
    2bb4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2bbb:	e8 a0 92 00 00       	call   be60 <strlen>
    2bc0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2bc4:	83 c4 10             	add    $0x10,%esp
    2bc7:	39 d8                	cmp    %ebx,%eax
    2bc9:	77 c5                	ja     2b90 <test_move_failure+0xb0>
    2bcb:	83 ec 0c             	sub    $0xc,%esp
    2bce:	68 03 02 00 00       	push   $0x203
    2bd3:	68 30 c8 00 00       	push   $0xc830
    2bd8:	57                   	push   %edi
    2bd9:	68 74 ec 00 00       	push   $0xec74
    2bde:	6a 01                	push   $0x1
    2be0:	e8 bb 97 00 00       	call   c3a0 <printf>
    2be5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2bec:	00 00 00 
    2bef:	83 c4 20             	add    $0x20,%esp
    // Check that the process is still in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

    // Disable PID controller
    ASSERT_TRUE(disable_controller(PID_CNT));
}
    2bf2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2bf5:	5b                   	pop    %ebx
    2bf6:	5e                   	pop    %esi
    2bf7:	5f                   	pop    %edi
    2bf8:	5d                   	pop    %ebp
    2bf9:	c3                   	ret    
    2bfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    // Update pid limit
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "0"));

    // Attempt to move the current process to "/cgroup/test1" cgroup.
    // Notice write here should fail, and so we suppress error outputs from this point.
    ASSERT_FALSE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    2c00:	e8 63 96 00 00       	call   c268 <getpid>
    2c05:	83 ec 08             	sub    $0x8,%esp
    2c08:	31 db                	xor    %ebx,%ebx
    2c0a:	50                   	push   %eax
    2c0b:	68 ed c9 00 00       	push   $0xc9ed
    2c10:	e8 0b da ff ff       	call   620 <move_proc>
    2c15:	83 c4 10             	add    $0x10,%esp
    2c18:	85 c0                	test   %eax,%eax
    2c1a:	75 19                	jne    2c35 <test_move_failure+0x155>
    2c1c:	eb 69                	jmp    2c87 <test_move_failure+0x1a7>
    2c1e:	66 90                	xchg   %ax,%ax
    2c20:	83 ec 08             	sub    $0x8,%esp
    2c23:	83 c3 01             	add    $0x1,%ebx
    2c26:	68 18 c8 00 00       	push   $0xc818
    2c2b:	6a 01                	push   $0x1
    2c2d:	e8 6e 97 00 00       	call   c3a0 <printf>
    2c32:	83 c4 10             	add    $0x10,%esp
    2c35:	83 ec 0c             	sub    $0xc,%esp
    2c38:	68 c0 ec 00 00       	push   $0xecc0
    2c3d:	e8 1e 92 00 00       	call   be60 <strlen>
    2c42:	89 c6                	mov    %eax,%esi
    2c44:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2c4b:	e8 10 92 00 00       	call   be60 <strlen>
    2c50:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2c54:	83 c4 10             	add    $0x10,%esp
    2c57:	39 d8                	cmp    %ebx,%eax
    2c59:	77 c5                	ja     2c20 <test_move_failure+0x140>
    2c5b:	83 ec 0c             	sub    $0xc,%esp
    2c5e:	68 07 02 00 00       	push   $0x207
    2c63:	68 30 c8 00 00       	push   $0xc830
    2c68:	57                   	push   %edi
    2c69:	68 ec ec 00 00       	push   $0xecec
    2c6e:	6a 01                	push   $0x1
    2c70:	e8 2b 97 00 00       	call   c3a0 <printf>
    2c75:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2c7c:	00 00 00 
    2c7f:	83 c4 20             	add    $0x20,%esp
    2c82:	e9 db fe ff ff       	jmp    2b62 <test_move_failure+0x82>

    // Check that the process we moved is not in "/cgroup/test1" cgroup.
    // Notice this should fail.
    ASSERT_FALSE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    2c87:	e8 dc 95 00 00       	call   c268 <getpid>
    2c8c:	83 ec 08             	sub    $0x8,%esp
    2c8f:	31 db                	xor    %ebx,%ebx
    2c91:	50                   	push   %eax
    2c92:	68 ed c9 00 00       	push   $0xc9ed
    2c97:	e8 b4 d9 ff ff       	call   650 <is_pid_in_group>
    2c9c:	83 c4 10             	add    $0x10,%esp
    2c9f:	85 c0                	test   %eax,%eax
    2ca1:	75 1a                	jne    2cbd <test_move_failure+0x1dd>
    2ca3:	eb 6a                	jmp    2d0f <test_move_failure+0x22f>
    2ca5:	8d 76 00             	lea    0x0(%esi),%esi
    2ca8:	83 ec 08             	sub    $0x8,%esp
    2cab:	83 c3 01             	add    $0x1,%ebx
    2cae:	68 18 c8 00 00       	push   $0xc818
    2cb3:	6a 01                	push   $0x1
    2cb5:	e8 e6 96 00 00       	call   c3a0 <printf>
    2cba:	83 c4 10             	add    $0x10,%esp
    2cbd:	83 ec 0c             	sub    $0xc,%esp
    2cc0:	68 40 ed 00 00       	push   $0xed40
    2cc5:	e8 96 91 00 00       	call   be60 <strlen>
    2cca:	89 c6                	mov    %eax,%esi
    2ccc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2cd3:	e8 88 91 00 00       	call   be60 <strlen>
    2cd8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2cdc:	83 c4 10             	add    $0x10,%esp
    2cdf:	39 d8                	cmp    %ebx,%eax
    2ce1:	77 c5                	ja     2ca8 <test_move_failure+0x1c8>
    2ce3:	83 ec 0c             	sub    $0xc,%esp
    2ce6:	68 0b 02 00 00       	push   $0x20b
    2ceb:	68 30 c8 00 00       	push   $0xc830
    2cf0:	57                   	push   %edi
    2cf1:	68 70 ed 00 00       	push   $0xed70
    2cf6:	6a 01                	push   $0x1
    2cf8:	e8 a3 96 00 00       	call   c3a0 <printf>
    2cfd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2d04:	00 00 00 
    2d07:	83 c4 20             	add    $0x20,%esp
    2d0a:	e9 53 fe ff ff       	jmp    2b62 <test_move_failure+0x82>

    // Check that the process is still in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    2d0f:	e8 54 95 00 00       	call   c268 <getpid>
    2d14:	83 ec 08             	sub    $0x8,%esp
    2d17:	31 db                	xor    %ebx,%ebx
    2d19:	50                   	push   %eax
    2d1a:	68 f0 cc 00 00       	push   $0xccf0
    2d1f:	e8 2c d9 ff ff       	call   650 <is_pid_in_group>
    2d24:	83 c4 10             	add    $0x10,%esp
    2d27:	85 c0                	test   %eax,%eax
    2d29:	74 1a                	je     2d45 <test_move_failure+0x265>
    2d2b:	eb 6a                	jmp    2d97 <test_move_failure+0x2b7>
    2d2d:	8d 76 00             	lea    0x0(%esi),%esi
    2d30:	83 ec 08             	sub    $0x8,%esp
    2d33:	83 c3 01             	add    $0x1,%ebx
    2d36:	68 18 c8 00 00       	push   $0xc818
    2d3b:	6a 01                	push   $0x1
    2d3d:	e8 5e 96 00 00       	call   c3a0 <printf>
    2d42:	83 c4 10             	add    $0x10,%esp
    2d45:	83 ec 0c             	sub    $0xc,%esp
    2d48:	68 c8 ed 00 00       	push   $0xedc8
    2d4d:	e8 0e 91 00 00       	call   be60 <strlen>
    2d52:	89 c6                	mov    %eax,%esi
    2d54:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2d5b:	e8 00 91 00 00       	call   be60 <strlen>
    2d60:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2d64:	83 c4 10             	add    $0x10,%esp
    2d67:	39 d8                	cmp    %ebx,%eax
    2d69:	77 c5                	ja     2d30 <test_move_failure+0x250>
    2d6b:	83 ec 0c             	sub    $0xc,%esp
    2d6e:	68 0e 02 00 00       	push   $0x20e
    2d73:	68 30 c8 00 00       	push   $0xc830
    2d78:	57                   	push   %edi
    2d79:	68 f8 ed 00 00       	push   $0xedf8
    2d7e:	6a 01                	push   $0x1
    2d80:	e8 1b 96 00 00       	call   c3a0 <printf>
    2d85:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2d8c:	00 00 00 
    2d8f:	83 c4 20             	add    $0x20,%esp
    2d92:	e9 cb fd ff ff       	jmp    2b62 <test_move_failure+0x82>

    // Disable PID controller
    ASSERT_TRUE(disable_controller(PID_CNT));
    2d97:	83 ec 0c             	sub    $0xc,%esp
    2d9a:	31 db                	xor    %ebx,%ebx
    2d9c:	6a 01                	push   $0x1
    2d9e:	e8 cd d6 ff ff       	call   470 <disable_controller>
    2da3:	83 c4 10             	add    $0x10,%esp
    2da6:	85 c0                	test   %eax,%eax
    2da8:	74 1b                	je     2dc5 <test_move_failure+0x2e5>
    2daa:	e9 b3 fd ff ff       	jmp    2b62 <test_move_failure+0x82>
    2daf:	90                   	nop
    2db0:	83 ec 08             	sub    $0x8,%esp
    2db3:	83 c3 01             	add    $0x1,%ebx
    2db6:	68 18 c8 00 00       	push   $0xc818
    2dbb:	6a 01                	push   $0x1
    2dbd:	e8 de 95 00 00       	call   c3a0 <printf>
    2dc2:	83 c4 10             	add    $0x10,%esp
    2dc5:	83 ec 0c             	sub    $0xc,%esp
    2dc8:	68 05 cd 00 00       	push   $0xcd05
    2dcd:	e8 8e 90 00 00       	call   be60 <strlen>
    2dd2:	89 c6                	mov    %eax,%esi
    2dd4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2ddb:	e8 80 90 00 00       	call   be60 <strlen>
    2de0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    2de4:	83 c4 10             	add    $0x10,%esp
    2de7:	39 d8                	cmp    %ebx,%eax
    2de9:	77 c5                	ja     2db0 <test_move_failure+0x2d0>
    2deb:	83 ec 0c             	sub    $0xc,%esp
    2dee:	68 11 02 00 00       	push   $0x211
    2df3:	68 30 c8 00 00       	push   $0xc830
    2df8:	57                   	push   %edi
    2df9:	68 50 ee 00 00       	push   $0xee50
    2dfe:	6a 01                	push   $0x1
    2e00:	e8 9b 95 00 00       	call   c3a0 <printf>
    2e05:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2e0c:	00 00 00 
    2e0f:	83 c4 20             	add    $0x20,%esp
    2e12:	e9 4b fd ff ff       	jmp    2b62 <test_move_failure+0x82>
    2e17:	89 f6                	mov    %esi,%esi
    2e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002e20 <test_fork_failure>:
}

TEST(test_fork_failure)
{
    2e20:	55                   	push   %ebp
    2e21:	89 e5                	mov    %esp,%ebp
    2e23:	57                   	push   %edi
    2e24:	56                   	push   %esi
    2e25:	53                   	push   %ebx
    2e26:	31 db                	xor    %ebx,%ebx
    2e28:	83 ec 18             	sub    $0x18,%esp
    2e2b:	8b 75 08             	mov    0x8(%ebp),%esi
    // Enable pid controller
    ASSERT_TRUE(enable_controller(PID_CNT));
    2e2e:	6a 01                	push   $0x1
    2e30:	e8 eb d5 ff ff       	call   420 <enable_controller>
    2e35:	83 c4 10             	add    $0x10,%esp
    2e38:	85 c0                	test   %eax,%eax
    2e3a:	74 19                	je     2e55 <test_fork_failure+0x35>
    2e3c:	eb 72                	jmp    2eb0 <test_fork_failure+0x90>
    2e3e:	66 90                	xchg   %ax,%ax
    2e40:	83 ec 08             	sub    $0x8,%esp
    2e43:	83 c3 01             	add    $0x1,%ebx
    2e46:	68 18 c8 00 00       	push   $0xc818
    2e4b:	6a 01                	push   $0x1
    2e4d:	e8 4e 95 00 00       	call   c3a0 <printf>
    2e52:	83 c4 10             	add    $0x10,%esp
    2e55:	83 ec 0c             	sub    $0xc,%esp
    2e58:	68 bb cc 00 00       	push   $0xccbb
    2e5d:	e8 fe 8f 00 00       	call   be60 <strlen>
    2e62:	89 c7                	mov    %eax,%edi
    2e64:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2e6b:	e8 f0 8f 00 00       	call   be60 <strlen>
    2e70:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    2e74:	83 c4 10             	add    $0x10,%esp
    2e77:	39 d8                	cmp    %ebx,%eax
    2e79:	77 c5                	ja     2e40 <test_fork_failure+0x20>
    2e7b:	83 ec 0c             	sub    $0xc,%esp
    2e7e:	68 17 02 00 00       	push   $0x217
    2e83:	68 30 c8 00 00       	push   $0xc830
    2e88:	56                   	push   %esi
    2e89:	68 10 ea 00 00       	push   $0xea10
    2e8e:	6a 01                	push   $0x1
    2e90:	e8 0b 95 00 00       	call   c3a0 <printf>
    2e95:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2e9c:	00 00 00 
    2e9f:	83 c4 20             	add    $0x20,%esp
    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

    // Disable PID controller
    ASSERT_TRUE(disable_controller(PID_CNT));
}
    2ea2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2ea5:	5b                   	pop    %ebx
    2ea6:	5e                   	pop    %esi
    2ea7:	5f                   	pop    %edi
    2ea8:	5d                   	pop    %ebp
    2ea9:	c3                   	ret    
    2eaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Enable pid controller
    ASSERT_TRUE(enable_controller(PID_CNT));

    // Update pid limit
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "1"));
    2eb0:	83 ec 08             	sub    $0x8,%esp
    2eb3:	31 db                	xor    %ebx,%ebx
    2eb5:	68 1e cf 00 00       	push   $0xcf1e
    2eba:	68 84 ca 00 00       	push   $0xca84
    2ebf:	e8 1c d4 ff ff       	call   2e0 <write_file>
    2ec4:	83 c4 10             	add    $0x10,%esp
    2ec7:	85 c0                	test   %eax,%eax
    2ec9:	74 1a                	je     2ee5 <test_fork_failure+0xc5>
    2ecb:	eb 73                	jmp    2f40 <test_fork_failure+0x120>
    2ecd:	8d 76 00             	lea    0x0(%esi),%esi
    2ed0:	83 ec 08             	sub    $0x8,%esp
    2ed3:	83 c3 01             	add    $0x1,%ebx
    2ed6:	68 18 c8 00 00       	push   $0xc818
    2edb:	6a 01                	push   $0x1
    2edd:	e8 be 94 00 00       	call   c3a0 <printf>
    2ee2:	83 c4 10             	add    $0x10,%esp
    2ee5:	83 ec 0c             	sub    $0xc,%esp
    2ee8:	68 98 ee 00 00       	push   $0xee98
    2eed:	e8 6e 8f 00 00       	call   be60 <strlen>
    2ef2:	89 c7                	mov    %eax,%edi
    2ef4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2efb:	e8 60 8f 00 00       	call   be60 <strlen>
    2f00:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    2f04:	83 c4 10             	add    $0x10,%esp
    2f07:	39 d8                	cmp    %ebx,%eax
    2f09:	77 c5                	ja     2ed0 <test_fork_failure+0xb0>
    2f0b:	83 ec 0c             	sub    $0xc,%esp
    2f0e:	68 1a 02 00 00       	push   $0x21a
    2f13:	68 30 c8 00 00       	push   $0xc830
    2f18:	56                   	push   %esi
    2f19:	68 b8 ee 00 00       	push   $0xeeb8
    2f1e:	6a 01                	push   $0x1
    2f20:	e8 7b 94 00 00       	call   c3a0 <printf>
    2f25:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2f2c:	00 00 00 
    2f2f:	83 c4 20             	add    $0x20,%esp
    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

    // Disable PID controller
    ASSERT_TRUE(disable_controller(PID_CNT));
}
    2f32:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2f35:	5b                   	pop    %ebx
    2f36:	5e                   	pop    %esi
    2f37:	5f                   	pop    %edi
    2f38:	5d                   	pop    %ebp
    2f39:	c3                   	ret    
    2f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update pid limit
    ASSERT_TRUE(write_file(TEST_1_PID_MAX, "1"));

    // Move the current process to "/cgroup/test1" cgroup.
    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    2f40:	e8 23 93 00 00       	call   c268 <getpid>
    2f45:	83 ec 08             	sub    $0x8,%esp
    2f48:	31 db                	xor    %ebx,%ebx
    2f4a:	50                   	push   %eax
    2f4b:	68 ed c9 00 00       	push   $0xc9ed
    2f50:	e8 cb d6 ff ff       	call   620 <move_proc>
    2f55:	83 c4 10             	add    $0x10,%esp
    2f58:	85 c0                	test   %eax,%eax
    2f5a:	74 19                	je     2f75 <test_fork_failure+0x155>
    2f5c:	eb 69                	jmp    2fc7 <test_fork_failure+0x1a7>
    2f5e:	66 90                	xchg   %ax,%ax
    2f60:	83 ec 08             	sub    $0x8,%esp
    2f63:	83 c3 01             	add    $0x1,%ebx
    2f66:	68 18 c8 00 00       	push   $0xc818
    2f6b:	6a 01                	push   $0x1
    2f6d:	e8 2e 94 00 00       	call   c3a0 <printf>
    2f72:	83 c4 10             	add    $0x10,%esp
    2f75:	83 ec 0c             	sub    $0xc,%esp
    2f78:	68 c0 ec 00 00       	push   $0xecc0
    2f7d:	e8 de 8e 00 00       	call   be60 <strlen>
    2f82:	89 c7                	mov    %eax,%edi
    2f84:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    2f8b:	e8 d0 8e 00 00       	call   be60 <strlen>
    2f90:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    2f94:	83 c4 10             	add    $0x10,%esp
    2f97:	39 d8                	cmp    %ebx,%eax
    2f99:	77 c5                	ja     2f60 <test_fork_failure+0x140>
    2f9b:	83 ec 0c             	sub    $0xc,%esp
    2f9e:	68 1d 02 00 00       	push   $0x21d
    2fa3:	68 30 c8 00 00       	push   $0xc830
    2fa8:	56                   	push   %esi
    2fa9:	68 04 ef 00 00       	push   $0xef04
    2fae:	6a 01                	push   $0x1
    2fb0:	e8 eb 93 00 00       	call   c3a0 <printf>
    2fb5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    2fbc:	00 00 00 
    2fbf:	83 c4 20             	add    $0x20,%esp
    2fc2:	e9 db fe ff ff       	jmp    2ea2 <test_fork_failure+0x82>

    // Check that the process we moved is really in "/cgroup/test1" cgroup.
    ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    2fc7:	e8 9c 92 00 00       	call   c268 <getpid>
    2fcc:	83 ec 08             	sub    $0x8,%esp
    2fcf:	31 db                	xor    %ebx,%ebx
    2fd1:	50                   	push   %eax
    2fd2:	68 ed c9 00 00       	push   $0xc9ed
    2fd7:	e8 74 d6 ff ff       	call   650 <is_pid_in_group>
    2fdc:	83 c4 10             	add    $0x10,%esp
    2fdf:	85 c0                	test   %eax,%eax
    2fe1:	74 1a                	je     2ffd <test_fork_failure+0x1dd>
    2fe3:	eb 6a                	jmp    304f <test_fork_failure+0x22f>
    2fe5:	8d 76 00             	lea    0x0(%esi),%esi
    2fe8:	83 ec 08             	sub    $0x8,%esp
    2feb:	83 c3 01             	add    $0x1,%ebx
    2fee:	68 18 c8 00 00       	push   $0xc818
    2ff3:	6a 01                	push   $0x1
    2ff5:	e8 a6 93 00 00       	call   c3a0 <printf>
    2ffa:	83 c4 10             	add    $0x10,%esp
    2ffd:	83 ec 0c             	sub    $0xc,%esp
    3000:	68 40 ed 00 00       	push   $0xed40
    3005:	e8 56 8e 00 00       	call   be60 <strlen>
    300a:	89 c7                	mov    %eax,%edi
    300c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3013:	e8 48 8e 00 00       	call   be60 <strlen>
    3018:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    301c:	83 c4 10             	add    $0x10,%esp
    301f:	39 d8                	cmp    %ebx,%eax
    3021:	77 c5                	ja     2fe8 <test_fork_failure+0x1c8>
    3023:	83 ec 0c             	sub    $0xc,%esp
    3026:	68 20 02 00 00       	push   $0x220
    302b:	68 30 c8 00 00       	push   $0xc830
    3030:	56                   	push   %esi
    3031:	68 58 ef 00 00       	push   $0xef58
    3036:	6a 01                	push   $0x1
    3038:	e8 63 93 00 00       	call   c3a0 <printf>
    303d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3044:	00 00 00 
    3047:	83 c4 20             	add    $0x20,%esp
    304a:	e9 53 fe ff ff       	jmp    2ea2 <test_fork_failure+0x82>

    // Attempt to fork, notice this operation should fail and return -1.
    ASSERT_UINT_EQ(fork(), -1);
    304f:	e8 8c 91 00 00       	call   c1e0 <fork>
    3054:	83 f8 ff             	cmp    $0xffffffff,%eax
    3057:	74 2d                	je     3086 <test_fork_failure+0x266>
    3059:	e8 82 91 00 00       	call   c1e0 <fork>
    305e:	83 ec 0c             	sub    $0xc,%esp
    3061:	68 23 02 00 00       	push   $0x223
    3066:	68 30 c8 00 00       	push   $0xc830
    306b:	6a ff                	push   $0xffffffff
    306d:	50                   	push   %eax
    306e:	56                   	push   %esi
    306f:	e8 0c d0 ff ff       	call   80 <print_error>
    3074:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    307b:	00 00 00 
    307e:	83 c4 20             	add    $0x20,%esp
    3081:	e9 1c fe ff ff       	jmp    2ea2 <test_fork_failure+0x82>

    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    3086:	e8 dd 91 00 00       	call   c268 <getpid>
    308b:	83 ec 08             	sub    $0x8,%esp
    308e:	31 db                	xor    %ebx,%ebx
    3090:	50                   	push   %eax
    3091:	68 f0 cc 00 00       	push   $0xccf0
    3096:	e8 85 d5 ff ff       	call   620 <move_proc>
    309b:	83 c4 10             	add    $0x10,%esp
    309e:	85 c0                	test   %eax,%eax
    30a0:	74 1b                	je     30bd <test_fork_failure+0x29d>
    30a2:	eb 6b                	jmp    310f <test_fork_failure+0x2ef>
    30a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    30a8:	83 ec 08             	sub    $0x8,%esp
    30ab:	83 c3 01             	add    $0x1,%ebx
    30ae:	68 18 c8 00 00       	push   $0xc818
    30b3:	6a 01                	push   $0x1
    30b5:	e8 e6 92 00 00       	call   c3a0 <printf>
    30ba:	83 c4 10             	add    $0x10,%esp
    30bd:	83 ec 0c             	sub    $0xc,%esp
    30c0:	68 b0 ef 00 00       	push   $0xefb0
    30c5:	e8 96 8d 00 00       	call   be60 <strlen>
    30ca:	89 c7                	mov    %eax,%edi
    30cc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    30d3:	e8 88 8d 00 00       	call   be60 <strlen>
    30d8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    30dc:	83 c4 10             	add    $0x10,%esp
    30df:	39 d8                	cmp    %ebx,%eax
    30e1:	77 c5                	ja     30a8 <test_fork_failure+0x288>
    30e3:	83 ec 0c             	sub    $0xc,%esp
    30e6:	68 26 02 00 00       	push   $0x226
    30eb:	68 30 c8 00 00       	push   $0xc830
    30f0:	56                   	push   %esi
    30f1:	68 d8 ef 00 00       	push   $0xefd8
    30f6:	6a 01                	push   $0x1
    30f8:	e8 a3 92 00 00       	call   c3a0 <printf>
    30fd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3104:	00 00 00 
    3107:	83 c4 20             	add    $0x20,%esp
    310a:	e9 93 fd ff ff       	jmp    2ea2 <test_fork_failure+0x82>

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    310f:	e8 54 91 00 00       	call   c268 <getpid>
    3114:	83 ec 08             	sub    $0x8,%esp
    3117:	31 db                	xor    %ebx,%ebx
    3119:	50                   	push   %eax
    311a:	68 f0 cc 00 00       	push   $0xccf0
    311f:	e8 2c d5 ff ff       	call   650 <is_pid_in_group>
    3124:	83 c4 10             	add    $0x10,%esp
    3127:	85 c0                	test   %eax,%eax
    3129:	74 1a                	je     3145 <test_fork_failure+0x325>
    312b:	eb 6a                	jmp    3197 <test_fork_failure+0x377>
    312d:	8d 76 00             	lea    0x0(%esi),%esi
    3130:	83 ec 08             	sub    $0x8,%esp
    3133:	83 c3 01             	add    $0x1,%ebx
    3136:	68 18 c8 00 00       	push   $0xc818
    313b:	6a 01                	push   $0x1
    313d:	e8 5e 92 00 00       	call   c3a0 <printf>
    3142:	83 c4 10             	add    $0x10,%esp
    3145:	83 ec 0c             	sub    $0xc,%esp
    3148:	68 c8 ed 00 00       	push   $0xedc8
    314d:	e8 0e 8d 00 00       	call   be60 <strlen>
    3152:	89 c7                	mov    %eax,%edi
    3154:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    315b:	e8 00 8d 00 00       	call   be60 <strlen>
    3160:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    3164:	83 c4 10             	add    $0x10,%esp
    3167:	39 d8                	cmp    %ebx,%eax
    3169:	77 c5                	ja     3130 <test_fork_failure+0x310>
    316b:	83 ec 0c             	sub    $0xc,%esp
    316e:	68 29 02 00 00       	push   $0x229
    3173:	68 30 c8 00 00       	push   $0xc830
    3178:	56                   	push   %esi
    3179:	68 f8 ed 00 00       	push   $0xedf8
    317e:	6a 01                	push   $0x1
    3180:	e8 1b 92 00 00       	call   c3a0 <printf>
    3185:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    318c:	00 00 00 
    318f:	83 c4 20             	add    $0x20,%esp
    3192:	e9 0b fd ff ff       	jmp    2ea2 <test_fork_failure+0x82>

    // Disable PID controller
    ASSERT_TRUE(disable_controller(PID_CNT));
    3197:	83 ec 0c             	sub    $0xc,%esp
    319a:	31 db                	xor    %ebx,%ebx
    319c:	6a 01                	push   $0x1
    319e:	e8 cd d2 ff ff       	call   470 <disable_controller>
    31a3:	83 c4 10             	add    $0x10,%esp
    31a6:	85 c0                	test   %eax,%eax
    31a8:	74 1b                	je     31c5 <test_fork_failure+0x3a5>
    31aa:	e9 f3 fc ff ff       	jmp    2ea2 <test_fork_failure+0x82>
    31af:	90                   	nop
    31b0:	83 ec 08             	sub    $0x8,%esp
    31b3:	83 c3 01             	add    $0x1,%ebx
    31b6:	68 18 c8 00 00       	push   $0xc818
    31bb:	6a 01                	push   $0x1
    31bd:	e8 de 91 00 00       	call   c3a0 <printf>
    31c2:	83 c4 10             	add    $0x10,%esp
    31c5:	83 ec 0c             	sub    $0xc,%esp
    31c8:	68 05 cd 00 00       	push   $0xcd05
    31cd:	e8 8e 8c 00 00       	call   be60 <strlen>
    31d2:	89 c7                	mov    %eax,%edi
    31d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    31db:	e8 80 8c 00 00       	call   be60 <strlen>
    31e0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    31e4:	83 c4 10             	add    $0x10,%esp
    31e7:	39 d8                	cmp    %ebx,%eax
    31e9:	77 c5                	ja     31b0 <test_fork_failure+0x390>
    31eb:	83 ec 0c             	sub    $0xc,%esp
    31ee:	68 2c 02 00 00       	push   $0x22c
    31f3:	68 30 c8 00 00       	push   $0xc830
    31f8:	56                   	push   %esi
    31f9:	68 50 ee 00 00       	push   $0xee50
    31fe:	6a 01                	push   $0x1
    3200:	e8 9b 91 00 00       	call   c3a0 <printf>
    3205:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    320c:	00 00 00 
    320f:	83 c4 20             	add    $0x20,%esp
    3212:	e9 8b fc ff ff       	jmp    2ea2 <test_fork_failure+0x82>
    3217:	89 f6                	mov    %esi,%esi
    3219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003220 <test_pid_current>:
}

TEST(test_pid_current)
{
    3220:	55                   	push   %ebp
    3221:	89 e5                	mov    %esp,%ebp
    3223:	56                   	push   %esi
    3224:	53                   	push   %ebx
    3225:	31 db                	xor    %ebx,%ebx
    // Move the current process to "/cgroup/test1" cgroup.
    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    3227:	e8 3c 90 00 00       	call   c268 <getpid>
    322c:	83 ec 08             	sub    $0x8,%esp
    322f:	50                   	push   %eax
    3230:	68 ed c9 00 00       	push   $0xc9ed
    3235:	e8 e6 d3 ff ff       	call   620 <move_proc>
    323a:	83 c4 10             	add    $0x10,%esp
    323d:	85 c0                	test   %eax,%eax
    323f:	74 1c                	je     325d <test_pid_current+0x3d>
    3241:	eb 75                	jmp    32b8 <test_pid_current+0x98>
    3243:	90                   	nop
    3244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3248:	83 ec 08             	sub    $0x8,%esp
    324b:	83 c3 01             	add    $0x1,%ebx
    324e:	68 18 c8 00 00       	push   $0xc818
    3253:	6a 01                	push   $0x1
    3255:	e8 46 91 00 00       	call   c3a0 <printf>
    325a:	83 c4 10             	add    $0x10,%esp
    325d:	83 ec 0c             	sub    $0xc,%esp
    3260:	68 c0 ec 00 00       	push   $0xecc0
    3265:	e8 f6 8b 00 00       	call   be60 <strlen>
    326a:	89 c6                	mov    %eax,%esi
    326c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3273:	e8 e8 8b 00 00       	call   be60 <strlen>
    3278:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    327c:	83 c4 10             	add    $0x10,%esp
    327f:	39 d8                	cmp    %ebx,%eax
    3281:	77 c5                	ja     3248 <test_pid_current+0x28>
    3283:	83 ec 0c             	sub    $0xc,%esp
    3286:	68 32 02 00 00       	push   $0x232
    328b:	68 30 c8 00 00       	push   $0xc830
    3290:	ff 75 08             	pushl  0x8(%ebp)
    3293:	68 04 ef 00 00       	push   $0xef04
    3298:	6a 01                	push   $0x1
    329a:	e8 01 91 00 00       	call   c3a0 <printf>
    329f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    32a6:	00 00 00 
    32a9:	83 c4 20             	add    $0x20,%esp
    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    32ac:	8d 65 f8             	lea    -0x8(%ebp),%esp
    32af:	5b                   	pop    %ebx
    32b0:	5e                   	pop    %esi
    32b1:	5d                   	pop    %ebp
    32b2:	c3                   	ret    
    32b3:	90                   	nop
    32b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
{
    // Move the current process to "/cgroup/test1" cgroup.
    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));

    // Check that the process we moved is really in "/cgroup/test1" cgroup.
    ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    32b8:	e8 ab 8f 00 00       	call   c268 <getpid>
    32bd:	83 ec 08             	sub    $0x8,%esp
    32c0:	31 db                	xor    %ebx,%ebx
    32c2:	50                   	push   %eax
    32c3:	68 ed c9 00 00       	push   $0xc9ed
    32c8:	e8 83 d3 ff ff       	call   650 <is_pid_in_group>
    32cd:	83 c4 10             	add    $0x10,%esp
    32d0:	85 c0                	test   %eax,%eax
    32d2:	74 21                	je     32f5 <test_pid_current+0xd5>
    32d4:	eb 7a                	jmp    3350 <test_pid_current+0x130>
    32d6:	8d 76 00             	lea    0x0(%esi),%esi
    32d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    32e0:	83 ec 08             	sub    $0x8,%esp
    32e3:	83 c3 01             	add    $0x1,%ebx
    32e6:	68 18 c8 00 00       	push   $0xc818
    32eb:	6a 01                	push   $0x1
    32ed:	e8 ae 90 00 00       	call   c3a0 <printf>
    32f2:	83 c4 10             	add    $0x10,%esp
    32f5:	83 ec 0c             	sub    $0xc,%esp
    32f8:	68 40 ed 00 00       	push   $0xed40
    32fd:	e8 5e 8b 00 00       	call   be60 <strlen>
    3302:	89 c6                	mov    %eax,%esi
    3304:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    330b:	e8 50 8b 00 00       	call   be60 <strlen>
    3310:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3314:	83 c4 10             	add    $0x10,%esp
    3317:	39 d8                	cmp    %ebx,%eax
    3319:	77 c5                	ja     32e0 <test_pid_current+0xc0>
    331b:	83 ec 0c             	sub    $0xc,%esp
    331e:	68 35 02 00 00       	push   $0x235
    3323:	68 30 c8 00 00       	push   $0xc830
    3328:	ff 75 08             	pushl  0x8(%ebp)
    332b:	68 58 ef 00 00       	push   $0xef58
    3330:	6a 01                	push   $0x1
    3332:	e8 69 90 00 00       	call   c3a0 <printf>
    3337:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    333e:	00 00 00 
    3341:	83 c4 20             	add    $0x20,%esp
    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    3344:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3347:	5b                   	pop    %ebx
    3348:	5e                   	pop    %esi
    3349:	5d                   	pop    %ebp
    334a:	c3                   	ret    
    334b:	90                   	nop
    334c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

    // Check that the process we moved is really in "/cgroup/test1" cgroup.
    ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));

    // Check pid.current changed to display 1
    ASSERT_FALSE(strcmp(read_file(TEST_1_PID_CURRENT, 0), "num_of_procs - 1\n"));
    3350:	83 ec 08             	sub    $0x8,%esp
    3353:	31 db                	xor    %ebx,%ebx
    3355:	6a 00                	push   $0x0
    3357:	68 9a ca 00 00       	push   $0xca9a
    335c:	e8 bf ce ff ff       	call   220 <read_file>
    3361:	5a                   	pop    %edx
    3362:	59                   	pop    %ecx
    3363:	68 21 cd 00 00       	push   $0xcd21
    3368:	50                   	push   %eax
    3369:	e8 12 8a 00 00       	call   bd80 <strcmp>
    336e:	83 c4 10             	add    $0x10,%esp
    3371:	85 c0                	test   %eax,%eax
    3373:	75 20                	jne    3395 <test_pid_current+0x175>
    3375:	eb 72                	jmp    33e9 <test_pid_current+0x1c9>
    3377:	89 f6                	mov    %esi,%esi
    3379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3380:	83 ec 08             	sub    $0x8,%esp
    3383:	83 c3 01             	add    $0x1,%ebx
    3386:	68 18 c8 00 00       	push   $0xc818
    338b:	6a 01                	push   $0x1
    338d:	e8 0e 90 00 00       	call   c3a0 <printf>
    3392:	83 c4 10             	add    $0x10,%esp
    3395:	83 ec 0c             	sub    $0xc,%esp
    3398:	68 28 f0 00 00       	push   $0xf028
    339d:	e8 be 8a 00 00       	call   be60 <strlen>
    33a2:	89 c6                	mov    %eax,%esi
    33a4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    33ab:	e8 b0 8a 00 00       	call   be60 <strlen>
    33b0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    33b4:	83 c4 10             	add    $0x10,%esp
    33b7:	39 d8                	cmp    %ebx,%eax
    33b9:	77 c5                	ja     3380 <test_pid_current+0x160>
    33bb:	83 ec 0c             	sub    $0xc,%esp
    33be:	68 38 02 00 00       	push   $0x238
    33c3:	68 30 c8 00 00       	push   $0xc830
    33c8:	ff 75 08             	pushl  0x8(%ebp)
    33cb:	68 68 f0 00 00       	push   $0xf068
    33d0:	6a 01                	push   $0x1
    33d2:	e8 c9 8f 00 00       	call   c3a0 <printf>
    33d7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    33de:	00 00 00 
    33e1:	83 c4 20             	add    $0x20,%esp
    33e4:	e9 c3 fe ff ff       	jmp    32ac <test_pid_current+0x8c>

    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    33e9:	e8 7a 8e 00 00       	call   c268 <getpid>
    33ee:	83 ec 08             	sub    $0x8,%esp
    33f1:	31 db                	xor    %ebx,%ebx
    33f3:	50                   	push   %eax
    33f4:	68 f0 cc 00 00       	push   $0xccf0
    33f9:	e8 22 d2 ff ff       	call   620 <move_proc>
    33fe:	83 c4 10             	add    $0x10,%esp
    3401:	85 c0                	test   %eax,%eax
    3403:	74 20                	je     3425 <test_pid_current+0x205>
    3405:	eb 72                	jmp    3479 <test_pid_current+0x259>
    3407:	89 f6                	mov    %esi,%esi
    3409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3410:	83 ec 08             	sub    $0x8,%esp
    3413:	83 c3 01             	add    $0x1,%ebx
    3416:	68 18 c8 00 00       	push   $0xc818
    341b:	6a 01                	push   $0x1
    341d:	e8 7e 8f 00 00       	call   c3a0 <printf>
    3422:	83 c4 10             	add    $0x10,%esp
    3425:	83 ec 0c             	sub    $0xc,%esp
    3428:	68 b0 ef 00 00       	push   $0xefb0
    342d:	e8 2e 8a 00 00       	call   be60 <strlen>
    3432:	89 c6                	mov    %eax,%esi
    3434:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    343b:	e8 20 8a 00 00       	call   be60 <strlen>
    3440:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3444:	83 c4 10             	add    $0x10,%esp
    3447:	39 d8                	cmp    %ebx,%eax
    3449:	77 c5                	ja     3410 <test_pid_current+0x1f0>
    344b:	83 ec 0c             	sub    $0xc,%esp
    344e:	68 3b 02 00 00       	push   $0x23b
    3453:	68 30 c8 00 00       	push   $0xc830
    3458:	ff 75 08             	pushl  0x8(%ebp)
    345b:	68 d8 ef 00 00       	push   $0xefd8
    3460:	6a 01                	push   $0x1
    3462:	e8 39 8f 00 00       	call   c3a0 <printf>
    3467:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    346e:	00 00 00 
    3471:	83 c4 20             	add    $0x20,%esp
    3474:	e9 33 fe ff ff       	jmp    32ac <test_pid_current+0x8c>

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    3479:	e8 ea 8d 00 00       	call   c268 <getpid>
    347e:	83 ec 08             	sub    $0x8,%esp
    3481:	31 db                	xor    %ebx,%ebx
    3483:	50                   	push   %eax
    3484:	68 f0 cc 00 00       	push   $0xccf0
    3489:	e8 c2 d1 ff ff       	call   650 <is_pid_in_group>
    348e:	83 c4 10             	add    $0x10,%esp
    3491:	85 c0                	test   %eax,%eax
    3493:	74 20                	je     34b5 <test_pid_current+0x295>
    3495:	e9 12 fe ff ff       	jmp    32ac <test_pid_current+0x8c>
    349a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    34a0:	83 ec 08             	sub    $0x8,%esp
    34a3:	83 c3 01             	add    $0x1,%ebx
    34a6:	68 18 c8 00 00       	push   $0xc818
    34ab:	6a 01                	push   $0x1
    34ad:	e8 ee 8e 00 00       	call   c3a0 <printf>
    34b2:	83 c4 10             	add    $0x10,%esp
    34b5:	83 ec 0c             	sub    $0xc,%esp
    34b8:	68 c8 ed 00 00       	push   $0xedc8
    34bd:	e8 9e 89 00 00       	call   be60 <strlen>
    34c2:	89 c6                	mov    %eax,%esi
    34c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    34cb:	e8 90 89 00 00       	call   be60 <strlen>
    34d0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    34d4:	83 c4 10             	add    $0x10,%esp
    34d7:	39 d8                	cmp    %ebx,%eax
    34d9:	77 c5                	ja     34a0 <test_pid_current+0x280>
    34db:	83 ec 0c             	sub    $0xc,%esp
    34de:	68 3e 02 00 00       	push   $0x23e
    34e3:	68 30 c8 00 00       	push   $0xc830
    34e8:	ff 75 08             	pushl  0x8(%ebp)
    34eb:	68 f8 ed 00 00       	push   $0xedf8
    34f0:	6a 01                	push   $0x1
    34f2:	e8 a9 8e 00 00       	call   c3a0 <printf>
    34f7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    34fe:	00 00 00 
    3501:	83 c4 20             	add    $0x20,%esp
    3504:	e9 a3 fd ff ff       	jmp    32ac <test_pid_current+0x8c>
    3509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003510 <test_moving_process>:
}

TEST(test_moving_process)
{
    3510:	55                   	push   %ebp
    3511:	89 e5                	mov    %esp,%ebp
    3513:	56                   	push   %esi
    3514:	53                   	push   %ebx
    3515:	31 db                	xor    %ebx,%ebx
    // Move the current process to "/cgroup/test1" cgroup.
    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    3517:	e8 4c 8d 00 00       	call   c268 <getpid>
    351c:	83 ec 08             	sub    $0x8,%esp
    351f:	50                   	push   %eax
    3520:	68 ed c9 00 00       	push   $0xc9ed
    3525:	e8 f6 d0 ff ff       	call   620 <move_proc>
    352a:	83 c4 10             	add    $0x10,%esp
    352d:	85 c0                	test   %eax,%eax
    352f:	74 1c                	je     354d <test_moving_process+0x3d>
    3531:	eb 75                	jmp    35a8 <test_moving_process+0x98>
    3533:	90                   	nop
    3534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3538:	83 ec 08             	sub    $0x8,%esp
    353b:	83 c3 01             	add    $0x1,%ebx
    353e:	68 18 c8 00 00       	push   $0xc818
    3543:	6a 01                	push   $0x1
    3545:	e8 56 8e 00 00       	call   c3a0 <printf>
    354a:	83 c4 10             	add    $0x10,%esp
    354d:	83 ec 0c             	sub    $0xc,%esp
    3550:	68 c0 ec 00 00       	push   $0xecc0
    3555:	e8 06 89 00 00       	call   be60 <strlen>
    355a:	89 c6                	mov    %eax,%esi
    355c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3563:	e8 f8 88 00 00       	call   be60 <strlen>
    3568:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    356c:	83 c4 10             	add    $0x10,%esp
    356f:	39 d8                	cmp    %ebx,%eax
    3571:	77 c5                	ja     3538 <test_moving_process+0x28>
    3573:	83 ec 0c             	sub    $0xc,%esp
    3576:	68 44 02 00 00       	push   $0x244
    357b:	68 30 c8 00 00       	push   $0xc830
    3580:	ff 75 08             	pushl  0x8(%ebp)
    3583:	68 04 ef 00 00       	push   $0xef04
    3588:	6a 01                	push   $0x1
    358a:	e8 11 8e 00 00       	call   c3a0 <printf>
    358f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3596:	00 00 00 
    3599:	83 c4 20             	add    $0x20,%esp
    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    359c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    359f:	5b                   	pop    %ebx
    35a0:	5e                   	pop    %esi
    35a1:	5d                   	pop    %ebp
    35a2:	c3                   	ret    
    35a3:	90                   	nop
    35a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
{
    // Move the current process to "/cgroup/test1" cgroup.
    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));

    // Check that the process we moved is really in "/cgroup/test1" cgroup.
    ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    35a8:	e8 bb 8c 00 00       	call   c268 <getpid>
    35ad:	83 ec 08             	sub    $0x8,%esp
    35b0:	31 db                	xor    %ebx,%ebx
    35b2:	50                   	push   %eax
    35b3:	68 ed c9 00 00       	push   $0xc9ed
    35b8:	e8 93 d0 ff ff       	call   650 <is_pid_in_group>
    35bd:	83 c4 10             	add    $0x10,%esp
    35c0:	85 c0                	test   %eax,%eax
    35c2:	74 21                	je     35e5 <test_moving_process+0xd5>
    35c4:	eb 7a                	jmp    3640 <test_moving_process+0x130>
    35c6:	8d 76 00             	lea    0x0(%esi),%esi
    35c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    35d0:	83 ec 08             	sub    $0x8,%esp
    35d3:	83 c3 01             	add    $0x1,%ebx
    35d6:	68 18 c8 00 00       	push   $0xc818
    35db:	6a 01                	push   $0x1
    35dd:	e8 be 8d 00 00       	call   c3a0 <printf>
    35e2:	83 c4 10             	add    $0x10,%esp
    35e5:	83 ec 0c             	sub    $0xc,%esp
    35e8:	68 40 ed 00 00       	push   $0xed40
    35ed:	e8 6e 88 00 00       	call   be60 <strlen>
    35f2:	89 c6                	mov    %eax,%esi
    35f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    35fb:	e8 60 88 00 00       	call   be60 <strlen>
    3600:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3604:	83 c4 10             	add    $0x10,%esp
    3607:	39 d8                	cmp    %ebx,%eax
    3609:	77 c5                	ja     35d0 <test_moving_process+0xc0>
    360b:	83 ec 0c             	sub    $0xc,%esp
    360e:	68 47 02 00 00       	push   $0x247
    3613:	68 30 c8 00 00       	push   $0xc830
    3618:	ff 75 08             	pushl  0x8(%ebp)
    361b:	68 58 ef 00 00       	push   $0xef58
    3620:	6a 01                	push   $0x1
    3622:	e8 79 8d 00 00       	call   c3a0 <printf>
    3627:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    362e:	00 00 00 
    3631:	83 c4 20             	add    $0x20,%esp
    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    3634:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3637:	5b                   	pop    %ebx
    3638:	5e                   	pop    %esi
    3639:	5d                   	pop    %ebp
    363a:	c3                   	ret    
    363b:	90                   	nop
    363c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

    // Check that the process we moved is really in "/cgroup/test1" cgroup.
    ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));

    // Check that events recorded it correctly.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 1\nfrozen - 0\n"));
    3640:	83 ec 08             	sub    $0x8,%esp
    3643:	31 db                	xor    %ebx,%ebx
    3645:	6a 00                	push   $0x0
    3647:	68 08 ca 00 00       	push   $0xca08
    364c:	e8 cf cb ff ff       	call   220 <read_file>
    3651:	5a                   	pop    %edx
    3652:	59                   	pop    %ecx
    3653:	68 33 cd 00 00       	push   $0xcd33
    3658:	50                   	push   %eax
    3659:	e8 22 87 00 00       	call   bd80 <strcmp>
    365e:	83 c4 10             	add    $0x10,%esp
    3661:	85 c0                	test   %eax,%eax
    3663:	75 20                	jne    3685 <test_moving_process+0x175>
    3665:	eb 72                	jmp    36d9 <test_moving_process+0x1c9>
    3667:	89 f6                	mov    %esi,%esi
    3669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3670:	83 ec 08             	sub    $0x8,%esp
    3673:	83 c3 01             	add    $0x1,%ebx
    3676:	68 18 c8 00 00       	push   $0xc818
    367b:	6a 01                	push   $0x1
    367d:	e8 1e 8d 00 00       	call   c3a0 <printf>
    3682:	83 c4 10             	add    $0x10,%esp
    3685:	83 ec 0c             	sub    $0xc,%esp
    3688:	68 d0 f0 00 00       	push   $0xf0d0
    368d:	e8 ce 87 00 00       	call   be60 <strlen>
    3692:	89 c6                	mov    %eax,%esi
    3694:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    369b:	e8 c0 87 00 00       	call   be60 <strlen>
    36a0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    36a4:	83 c4 10             	add    $0x10,%esp
    36a7:	39 d8                	cmp    %ebx,%eax
    36a9:	77 c5                	ja     3670 <test_moving_process+0x160>
    36ab:	83 ec 0c             	sub    $0xc,%esp
    36ae:	68 4a 02 00 00       	push   $0x24a
    36b3:	68 30 c8 00 00       	push   $0xc830
    36b8:	ff 75 08             	pushl  0x8(%ebp)
    36bb:	68 1c f1 00 00       	push   $0xf11c
    36c0:	6a 01                	push   $0x1
    36c2:	e8 d9 8c 00 00       	call   c3a0 <printf>
    36c7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    36ce:	00 00 00 
    36d1:	83 c4 20             	add    $0x20,%esp
    36d4:	e9 c3 fe ff ff       	jmp    359c <test_moving_process+0x8c>

    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    36d9:	e8 8a 8b 00 00       	call   c268 <getpid>
    36de:	83 ec 08             	sub    $0x8,%esp
    36e1:	31 db                	xor    %ebx,%ebx
    36e3:	50                   	push   %eax
    36e4:	68 f0 cc 00 00       	push   $0xccf0
    36e9:	e8 32 cf ff ff       	call   620 <move_proc>
    36ee:	83 c4 10             	add    $0x10,%esp
    36f1:	85 c0                	test   %eax,%eax
    36f3:	74 20                	je     3715 <test_moving_process+0x205>
    36f5:	eb 72                	jmp    3769 <test_moving_process+0x259>
    36f7:	89 f6                	mov    %esi,%esi
    36f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3700:	83 ec 08             	sub    $0x8,%esp
    3703:	83 c3 01             	add    $0x1,%ebx
    3706:	68 18 c8 00 00       	push   $0xc818
    370b:	6a 01                	push   $0x1
    370d:	e8 8e 8c 00 00       	call   c3a0 <printf>
    3712:	83 c4 10             	add    $0x10,%esp
    3715:	83 ec 0c             	sub    $0xc,%esp
    3718:	68 b0 ef 00 00       	push   $0xefb0
    371d:	e8 3e 87 00 00       	call   be60 <strlen>
    3722:	89 c6                	mov    %eax,%esi
    3724:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    372b:	e8 30 87 00 00       	call   be60 <strlen>
    3730:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3734:	83 c4 10             	add    $0x10,%esp
    3737:	39 d8                	cmp    %ebx,%eax
    3739:	77 c5                	ja     3700 <test_moving_process+0x1f0>
    373b:	83 ec 0c             	sub    $0xc,%esp
    373e:	68 4d 02 00 00       	push   $0x24d
    3743:	68 30 c8 00 00       	push   $0xc830
    3748:	ff 75 08             	pushl  0x8(%ebp)
    374b:	68 d8 ef 00 00       	push   $0xefd8
    3750:	6a 01                	push   $0x1
    3752:	e8 49 8c 00 00       	call   c3a0 <printf>
    3757:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    375e:	00 00 00 
    3761:	83 c4 20             	add    $0x20,%esp
    3764:	e9 33 fe ff ff       	jmp    359c <test_moving_process+0x8c>

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    3769:	e8 fa 8a 00 00       	call   c268 <getpid>
    376e:	83 ec 08             	sub    $0x8,%esp
    3771:	31 db                	xor    %ebx,%ebx
    3773:	50                   	push   %eax
    3774:	68 f0 cc 00 00       	push   $0xccf0
    3779:	e8 d2 ce ff ff       	call   650 <is_pid_in_group>
    377e:	83 c4 10             	add    $0x10,%esp
    3781:	85 c0                	test   %eax,%eax
    3783:	74 20                	je     37a5 <test_moving_process+0x295>
    3785:	e9 12 fe ff ff       	jmp    359c <test_moving_process+0x8c>
    378a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3790:	83 ec 08             	sub    $0x8,%esp
    3793:	83 c3 01             	add    $0x1,%ebx
    3796:	68 18 c8 00 00       	push   $0xc818
    379b:	6a 01                	push   $0x1
    379d:	e8 fe 8b 00 00       	call   c3a0 <printf>
    37a2:	83 c4 10             	add    $0x10,%esp
    37a5:	83 ec 0c             	sub    $0xc,%esp
    37a8:	68 c8 ed 00 00       	push   $0xedc8
    37ad:	e8 ae 86 00 00       	call   be60 <strlen>
    37b2:	89 c6                	mov    %eax,%esi
    37b4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    37bb:	e8 a0 86 00 00       	call   be60 <strlen>
    37c0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    37c4:	83 c4 10             	add    $0x10,%esp
    37c7:	39 d8                	cmp    %ebx,%eax
    37c9:	77 c5                	ja     3790 <test_moving_process+0x280>
    37cb:	83 ec 0c             	sub    $0xc,%esp
    37ce:	68 50 02 00 00       	push   $0x250
    37d3:	68 30 c8 00 00       	push   $0xc830
    37d8:	ff 75 08             	pushl  0x8(%ebp)
    37db:	68 f8 ed 00 00       	push   $0xedf8
    37e0:	6a 01                	push   $0x1
    37e2:	e8 b9 8b 00 00       	call   c3a0 <printf>
    37e7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    37ee:	00 00 00 
    37f1:	83 c4 20             	add    $0x20,%esp
    37f4:	e9 a3 fd ff ff       	jmp    359c <test_moving_process+0x8c>
    37f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003800 <test_setting_max_descendants_and_max_depth>:
}

TEST(test_setting_max_descendants_and_max_depth)
{
    3800:	55                   	push   %ebp
    3801:	89 e5                	mov    %esp,%ebp
    3803:	56                   	push   %esi
    3804:	53                   	push   %ebx
    3805:	31 db                	xor    %ebx,%ebx
    // Set new values for max descendants allowed and max depth allowed
    ASSERT_TRUE(write_file(TEST_1_CGROUP_DESCENDANTS, "30"));
    3807:	83 ec 08             	sub    $0x8,%esp
    380a:	68 4d cd 00 00       	push   $0xcd4d
    380f:	68 60 d9 00 00       	push   $0xd960
    3814:	e8 c7 ca ff ff       	call   2e0 <write_file>
    3819:	83 c4 10             	add    $0x10,%esp
    381c:	85 c0                	test   %eax,%eax
    381e:	74 1d                	je     383d <test_setting_max_descendants_and_max_depth+0x3d>
    3820:	eb 76                	jmp    3898 <test_setting_max_descendants_and_max_depth+0x98>
    3822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3828:	83 ec 08             	sub    $0x8,%esp
    382b:	83 c3 01             	add    $0x1,%ebx
    382e:	68 18 c8 00 00       	push   $0xc818
    3833:	6a 01                	push   $0x1
    3835:	e8 66 8b 00 00       	call   c3a0 <printf>
    383a:	83 c4 10             	add    $0x10,%esp
    383d:	83 ec 0c             	sub    $0xc,%esp
    3840:	68 90 f1 00 00       	push   $0xf190
    3845:	e8 16 86 00 00       	call   be60 <strlen>
    384a:	89 c6                	mov    %eax,%esi
    384c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3853:	e8 08 86 00 00       	call   be60 <strlen>
    3858:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    385c:	83 c4 10             	add    $0x10,%esp
    385f:	39 d8                	cmp    %ebx,%eax
    3861:	77 c5                	ja     3828 <test_setting_max_descendants_and_max_depth+0x28>
    3863:	83 ec 0c             	sub    $0xc,%esp
    3866:	68 56 02 00 00       	push   $0x256
    386b:	68 30 c8 00 00       	push   $0xc830
    3870:	ff 75 08             	pushl  0x8(%ebp)
    3873:	68 bc f1 00 00       	push   $0xf1bc
    3878:	6a 01                	push   $0x1
    387a:	e8 21 8b 00 00       	call   c3a0 <printf>
    387f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3886:	00 00 00 
    3889:	83 c4 20             	add    $0x20,%esp
    ASSERT_TRUE(write_file(TEST_1_CGROUP_MAX_DEPTH, "20"));

    // Check that the values have really been set
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_DESCENDANTS, 0), "30\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_MAX_DEPTH, 0), "20\n"));
}
    388c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    388f:	5b                   	pop    %ebx
    3890:	5e                   	pop    %esi
    3891:	5d                   	pop    %ebp
    3892:	c3                   	ret    
    3893:	90                   	nop
    3894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

TEST(test_setting_max_descendants_and_max_depth)
{
    // Set new values for max descendants allowed and max depth allowed
    ASSERT_TRUE(write_file(TEST_1_CGROUP_DESCENDANTS, "30"));
    ASSERT_TRUE(write_file(TEST_1_CGROUP_MAX_DEPTH, "20"));
    3898:	83 ec 08             	sub    $0x8,%esp
    389b:	31 db                	xor    %ebx,%ebx
    389d:	68 50 cd 00 00       	push   $0xcd50
    38a2:	68 08 da 00 00       	push   $0xda08
    38a7:	e8 34 ca ff ff       	call   2e0 <write_file>
    38ac:	83 c4 10             	add    $0x10,%esp
    38af:	85 c0                	test   %eax,%eax
    38b1:	74 1a                	je     38cd <test_setting_max_descendants_and_max_depth+0xcd>
    38b3:	eb 73                	jmp    3928 <test_setting_max_descendants_and_max_depth+0x128>
    38b5:	8d 76 00             	lea    0x0(%esi),%esi
    38b8:	83 ec 08             	sub    $0x8,%esp
    38bb:	83 c3 01             	add    $0x1,%ebx
    38be:	68 18 c8 00 00       	push   $0xc818
    38c3:	6a 01                	push   $0x1
    38c5:	e8 d6 8a 00 00       	call   c3a0 <printf>
    38ca:	83 c4 10             	add    $0x10,%esp
    38cd:	83 ec 0c             	sub    $0xc,%esp
    38d0:	68 14 f2 00 00       	push   $0xf214
    38d5:	e8 86 85 00 00       	call   be60 <strlen>
    38da:	89 c6                	mov    %eax,%esi
    38dc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    38e3:	e8 78 85 00 00       	call   be60 <strlen>
    38e8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    38ec:	83 c4 10             	add    $0x10,%esp
    38ef:	39 d8                	cmp    %ebx,%eax
    38f1:	77 c5                	ja     38b8 <test_setting_max_descendants_and_max_depth+0xb8>
    38f3:	83 ec 0c             	sub    $0xc,%esp
    38f6:	68 57 02 00 00       	push   $0x257
    38fb:	68 30 c8 00 00       	push   $0xc830
    3900:	ff 75 08             	pushl  0x8(%ebp)
    3903:	68 40 f2 00 00       	push   $0xf240
    3908:	6a 01                	push   $0x1
    390a:	e8 91 8a 00 00       	call   c3a0 <printf>
    390f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3916:	00 00 00 
    3919:	83 c4 20             	add    $0x20,%esp

    // Check that the values have really been set
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_DESCENDANTS, 0), "30\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_MAX_DEPTH, 0), "20\n"));
}
    391c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    391f:	5b                   	pop    %ebx
    3920:	5e                   	pop    %esi
    3921:	5d                   	pop    %ebp
    3922:	c3                   	ret    
    3923:	90                   	nop
    3924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    // Set new values for max descendants allowed and max depth allowed
    ASSERT_TRUE(write_file(TEST_1_CGROUP_DESCENDANTS, "30"));
    ASSERT_TRUE(write_file(TEST_1_CGROUP_MAX_DEPTH, "20"));

    // Check that the values have really been set
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_DESCENDANTS, 0), "30\n"));
    3928:	83 ec 08             	sub    $0x8,%esp
    392b:	6a 00                	push   $0x0
    392d:	68 60 d9 00 00       	push   $0xd960
    3932:	e8 e9 c8 ff ff       	call   220 <read_file>
    3937:	5b                   	pop    %ebx
    3938:	5e                   	pop    %esi
    3939:	68 53 cd 00 00       	push   $0xcd53
    393e:	50                   	push   %eax
    393f:	31 db                	xor    %ebx,%ebx
    3941:	e8 3a 84 00 00       	call   bd80 <strcmp>
    3946:	83 c4 10             	add    $0x10,%esp
    3949:	85 c0                	test   %eax,%eax
    394b:	75 18                	jne    3965 <test_setting_max_descendants_and_max_depth+0x165>
    394d:	eb 6a                	jmp    39b9 <test_setting_max_descendants_and_max_depth+0x1b9>
    394f:	90                   	nop
    3950:	83 ec 08             	sub    $0x8,%esp
    3953:	83 c3 01             	add    $0x1,%ebx
    3956:	68 18 c8 00 00       	push   $0xc818
    395b:	6a 01                	push   $0x1
    395d:	e8 3e 8a 00 00       	call   c3a0 <printf>
    3962:	83 c4 10             	add    $0x10,%esp
    3965:	83 ec 0c             	sub    $0xc,%esp
    3968:	68 94 f2 00 00       	push   $0xf294
    396d:	e8 ee 84 00 00       	call   be60 <strlen>
    3972:	89 c6                	mov    %eax,%esi
    3974:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    397b:	e8 e0 84 00 00       	call   be60 <strlen>
    3980:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3984:	83 c4 10             	add    $0x10,%esp
    3987:	39 d8                	cmp    %ebx,%eax
    3989:	77 c5                	ja     3950 <test_setting_max_descendants_and_max_depth+0x150>
    398b:	83 ec 0c             	sub    $0xc,%esp
    398e:	68 5a 02 00 00       	push   $0x25a
    3993:	68 30 c8 00 00       	push   $0xc830
    3998:	ff 75 08             	pushl  0x8(%ebp)
    399b:	68 cc f2 00 00       	push   $0xf2cc
    39a0:	6a 01                	push   $0x1
    39a2:	e8 f9 89 00 00       	call   c3a0 <printf>
    39a7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    39ae:	00 00 00 
    39b1:	83 c4 20             	add    $0x20,%esp
    39b4:	e9 d3 fe ff ff       	jmp    388c <test_setting_max_descendants_and_max_depth+0x8c>
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_MAX_DEPTH, 0), "20\n"));
    39b9:	83 ec 08             	sub    $0x8,%esp
    39bc:	31 db                	xor    %ebx,%ebx
    39be:	6a 00                	push   $0x0
    39c0:	68 08 da 00 00       	push   $0xda08
    39c5:	e8 56 c8 ff ff       	call   220 <read_file>
    39ca:	5a                   	pop    %edx
    39cb:	59                   	pop    %ecx
    39cc:	68 57 cd 00 00       	push   $0xcd57
    39d1:	50                   	push   %eax
    39d2:	e8 a9 83 00 00       	call   bd80 <strcmp>
    39d7:	83 c4 10             	add    $0x10,%esp
    39da:	85 c0                	test   %eax,%eax
    39dc:	75 1f                	jne    39fd <test_setting_max_descendants_and_max_depth+0x1fd>
    39de:	e9 a9 fe ff ff       	jmp    388c <test_setting_max_descendants_and_max_depth+0x8c>
    39e3:	90                   	nop
    39e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    39e8:	83 ec 08             	sub    $0x8,%esp
    39eb:	83 c3 01             	add    $0x1,%ebx
    39ee:	68 18 c8 00 00       	push   $0xc818
    39f3:	6a 01                	push   $0x1
    39f5:	e8 a6 89 00 00       	call   c3a0 <printf>
    39fa:	83 c4 10             	add    $0x10,%esp
    39fd:	83 ec 0c             	sub    $0xc,%esp
    3a00:	68 30 f3 00 00       	push   $0xf330
    3a05:	e8 56 84 00 00       	call   be60 <strlen>
    3a0a:	89 c6                	mov    %eax,%esi
    3a0c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3a13:	e8 48 84 00 00       	call   be60 <strlen>
    3a18:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3a1c:	83 c4 10             	add    $0x10,%esp
    3a1f:	39 d8                	cmp    %ebx,%eax
    3a21:	77 c5                	ja     39e8 <test_setting_max_descendants_and_max_depth+0x1e8>
    3a23:	83 ec 0c             	sub    $0xc,%esp
    3a26:	68 5b 02 00 00       	push   $0x25b
    3a2b:	68 30 c8 00 00       	push   $0xc830
    3a30:	ff 75 08             	pushl  0x8(%ebp)
    3a33:	68 68 f3 00 00       	push   $0xf368
    3a38:	6a 01                	push   $0x1
    3a3a:	e8 61 89 00 00       	call   c3a0 <printf>
    3a3f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3a46:	00 00 00 
    3a49:	83 c4 20             	add    $0x20,%esp
    3a4c:	e9 3b fe ff ff       	jmp    388c <test_setting_max_descendants_and_max_depth+0x8c>
    3a51:	eb 0d                	jmp    3a60 <test_enable_and_disable_set_controller>
    3a53:	90                   	nop
    3a54:	90                   	nop
    3a55:	90                   	nop
    3a56:	90                   	nop
    3a57:	90                   	nop
    3a58:	90                   	nop
    3a59:	90                   	nop
    3a5a:	90                   	nop
    3a5b:	90                   	nop
    3a5c:	90                   	nop
    3a5d:	90                   	nop
    3a5e:	90                   	nop
    3a5f:	90                   	nop

00003a60 <test_enable_and_disable_set_controller>:
}


TEST(test_enable_and_disable_set_controller)
{
    3a60:	55                   	push   %ebp
    3a61:	89 e5                	mov    %esp,%ebp
    3a63:	56                   	push   %esi
    3a64:	53                   	push   %ebx
    3a65:	31 db                	xor    %ebx,%ebx
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));
    3a67:	83 ec 0c             	sub    $0xc,%esp
    3a6a:	6a 02                	push   $0x2
    3a6c:	e8 af c9 ff ff       	call   420 <enable_controller>
    3a71:	83 c4 10             	add    $0x10,%esp
    3a74:	85 c0                	test   %eax,%eax
    3a76:	74 1d                	je     3a95 <test_enable_and_disable_set_controller+0x35>
    3a78:	eb 76                	jmp    3af0 <test_enable_and_disable_set_controller+0x90>
    3a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3a80:	83 ec 08             	sub    $0x8,%esp
    3a83:	83 c3 01             	add    $0x1,%ebx
    3a86:	68 18 c8 00 00       	push   $0xc818
    3a8b:	6a 01                	push   $0x1
    3a8d:	e8 0e 89 00 00       	call   c3a0 <printf>
    3a92:	83 c4 10             	add    $0x10,%esp
    3a95:	83 ec 0c             	sub    $0xc,%esp
    3a98:	68 5b cd 00 00       	push   $0xcd5b
    3a9d:	e8 be 83 00 00       	call   be60 <strlen>
    3aa2:	89 c6                	mov    %eax,%esi
    3aa4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3aab:	e8 b0 83 00 00       	call   be60 <strlen>
    3ab0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3ab4:	83 c4 10             	add    $0x10,%esp
    3ab7:	39 d8                	cmp    %ebx,%eax
    3ab9:	77 c5                	ja     3a80 <test_enable_and_disable_set_controller+0x20>
    3abb:	83 ec 0c             	sub    $0xc,%esp
    3abe:	68 62 02 00 00       	push   $0x262
    3ac3:	68 30 c8 00 00       	push   $0xc830
    3ac8:	ff 75 08             	pushl  0x8(%ebp)
    3acb:	68 c8 f3 00 00       	push   $0xf3c8
    3ad0:	6a 01                	push   $0x1
    3ad2:	e8 c9 88 00 00       	call   c3a0 <printf>
    3ad7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3ade:	00 00 00 
    3ae1:	83 c4 20             	add    $0x20,%esp
    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));

    // Check that cpu set controller is really disabled.
    ASSERT_TRUE(verify_controller_disabled(SET_CNT));
}
    3ae4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3ae7:	5b                   	pop    %ebx
    3ae8:	5e                   	pop    %esi
    3ae9:	5d                   	pop    %ebp
    3aea:	c3                   	ret    
    3aeb:	90                   	nop
    3aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
{
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));

    // Check that cpu set controller is really enabled.
    ASSERT_TRUE(verify_controller_enabled(SET_CNT));
    3af0:	83 ec 0c             	sub    $0xc,%esp
    3af3:	31 db                	xor    %ebx,%ebx
    3af5:	6a 02                	push   $0x2
    3af7:	e8 c4 c9 ff ff       	call   4c0 <verify_controller_enabled>
    3afc:	83 c4 10             	add    $0x10,%esp
    3aff:	85 c0                	test   %eax,%eax
    3b01:	74 1a                	je     3b1d <test_enable_and_disable_set_controller+0xbd>
    3b03:	eb 73                	jmp    3b78 <test_enable_and_disable_set_controller+0x118>
    3b05:	8d 76 00             	lea    0x0(%esi),%esi
    3b08:	83 ec 08             	sub    $0x8,%esp
    3b0b:	83 c3 01             	add    $0x1,%ebx
    3b0e:	68 18 c8 00 00       	push   $0xc818
    3b13:	6a 01                	push   $0x1
    3b15:	e8 86 88 00 00       	call   c3a0 <printf>
    3b1a:	83 c4 10             	add    $0x10,%esp
    3b1d:	83 ec 0c             	sub    $0xc,%esp
    3b20:	68 0c f4 00 00       	push   $0xf40c
    3b25:	e8 36 83 00 00       	call   be60 <strlen>
    3b2a:	89 c6                	mov    %eax,%esi
    3b2c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3b33:	e8 28 83 00 00       	call   be60 <strlen>
    3b38:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3b3c:	83 c4 10             	add    $0x10,%esp
    3b3f:	39 d8                	cmp    %ebx,%eax
    3b41:	77 c5                	ja     3b08 <test_enable_and_disable_set_controller+0xa8>
    3b43:	83 ec 0c             	sub    $0xc,%esp
    3b46:	68 65 02 00 00       	push   $0x265
    3b4b:	68 30 c8 00 00       	push   $0xc830
    3b50:	ff 75 08             	pushl  0x8(%ebp)
    3b53:	68 30 f4 00 00       	push   $0xf430
    3b58:	6a 01                	push   $0x1
    3b5a:	e8 41 88 00 00       	call   c3a0 <printf>
    3b5f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3b66:	00 00 00 
    3b69:	83 c4 20             	add    $0x20,%esp
    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));

    // Check that cpu set controller is really disabled.
    ASSERT_TRUE(verify_controller_disabled(SET_CNT));
}
    3b6c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3b6f:	5b                   	pop    %ebx
    3b70:	5e                   	pop    %esi
    3b71:	5d                   	pop    %ebp
    3b72:	c3                   	ret    
    3b73:	90                   	nop
    3b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

    // Check that cpu set controller is really enabled.
    ASSERT_TRUE(verify_controller_enabled(SET_CNT));

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
    3b78:	83 ec 0c             	sub    $0xc,%esp
    3b7b:	31 db                	xor    %ebx,%ebx
    3b7d:	6a 02                	push   $0x2
    3b7f:	e8 ec c8 ff ff       	call   470 <disable_controller>
    3b84:	83 c4 10             	add    $0x10,%esp
    3b87:	85 c0                	test   %eax,%eax
    3b89:	74 1a                	je     3ba5 <test_enable_and_disable_set_controller+0x145>
    3b8b:	eb 6c                	jmp    3bf9 <test_enable_and_disable_set_controller+0x199>
    3b8d:	8d 76 00             	lea    0x0(%esi),%esi
    3b90:	83 ec 08             	sub    $0x8,%esp
    3b93:	83 c3 01             	add    $0x1,%ebx
    3b96:	68 18 c8 00 00       	push   $0xc818
    3b9b:	6a 01                	push   $0x1
    3b9d:	e8 fe 87 00 00       	call   c3a0 <printf>
    3ba2:	83 c4 10             	add    $0x10,%esp
    3ba5:	83 ec 0c             	sub    $0xc,%esp
    3ba8:	68 76 cd 00 00       	push   $0xcd76
    3bad:	e8 ae 82 00 00       	call   be60 <strlen>
    3bb2:	89 c6                	mov    %eax,%esi
    3bb4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3bbb:	e8 a0 82 00 00       	call   be60 <strlen>
    3bc0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3bc4:	83 c4 10             	add    $0x10,%esp
    3bc7:	39 d8                	cmp    %ebx,%eax
    3bc9:	77 c5                	ja     3b90 <test_enable_and_disable_set_controller+0x130>
    3bcb:	83 ec 0c             	sub    $0xc,%esp
    3bce:	68 68 02 00 00       	push   $0x268
    3bd3:	68 30 c8 00 00       	push   $0xc830
    3bd8:	ff 75 08             	pushl  0x8(%ebp)
    3bdb:	68 7c f4 00 00       	push   $0xf47c
    3be0:	6a 01                	push   $0x1
    3be2:	e8 b9 87 00 00       	call   c3a0 <printf>
    3be7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3bee:	00 00 00 
    3bf1:	83 c4 20             	add    $0x20,%esp
    3bf4:	e9 eb fe ff ff       	jmp    3ae4 <test_enable_and_disable_set_controller+0x84>

    // Check that cpu set controller is really disabled.
    ASSERT_TRUE(verify_controller_disabled(SET_CNT));
    3bf9:	83 ec 0c             	sub    $0xc,%esp
    3bfc:	31 db                	xor    %ebx,%ebx
    3bfe:	6a 02                	push   $0x2
    3c00:	e8 5b c9 ff ff       	call   560 <verify_controller_disabled>
    3c05:	83 c4 10             	add    $0x10,%esp
    3c08:	85 c0                	test   %eax,%eax
    3c0a:	74 21                	je     3c2d <test_enable_and_disable_set_controller+0x1cd>
    3c0c:	e9 d3 fe ff ff       	jmp    3ae4 <test_enable_and_disable_set_controller+0x84>
    3c11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c18:	83 ec 08             	sub    $0x8,%esp
    3c1b:	83 c3 01             	add    $0x1,%ebx
    3c1e:	68 18 c8 00 00       	push   $0xc818
    3c23:	6a 01                	push   $0x1
    3c25:	e8 76 87 00 00       	call   c3a0 <printf>
    3c2a:	83 c4 10             	add    $0x10,%esp
    3c2d:	83 ec 0c             	sub    $0xc,%esp
    3c30:	68 c4 f4 00 00       	push   $0xf4c4
    3c35:	e8 26 82 00 00       	call   be60 <strlen>
    3c3a:	89 c6                	mov    %eax,%esi
    3c3c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3c43:	e8 18 82 00 00       	call   be60 <strlen>
    3c48:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3c4c:	83 c4 10             	add    $0x10,%esp
    3c4f:	39 d8                	cmp    %ebx,%eax
    3c51:	77 c5                	ja     3c18 <test_enable_and_disable_set_controller+0x1b8>
    3c53:	83 ec 0c             	sub    $0xc,%esp
    3c56:	68 6b 02 00 00       	push   $0x26b
    3c5b:	68 30 c8 00 00       	push   $0xc830
    3c60:	ff 75 08             	pushl  0x8(%ebp)
    3c63:	68 e8 f4 00 00       	push   $0xf4e8
    3c68:	6a 01                	push   $0x1
    3c6a:	e8 31 87 00 00       	call   c3a0 <printf>
    3c6f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3c76:	00 00 00 
    3c79:	83 c4 20             	add    $0x20,%esp
    3c7c:	e9 63 fe ff ff       	jmp    3ae4 <test_enable_and_disable_set_controller+0x84>
    3c81:	eb 0d                	jmp    3c90 <test_setting_cpu_id>
    3c83:	90                   	nop
    3c84:	90                   	nop
    3c85:	90                   	nop
    3c86:	90                   	nop
    3c87:	90                   	nop
    3c88:	90                   	nop
    3c89:	90                   	nop
    3c8a:	90                   	nop
    3c8b:	90                   	nop
    3c8c:	90                   	nop
    3c8d:	90                   	nop
    3c8e:	90                   	nop
    3c8f:	90                   	nop

00003c90 <test_setting_cpu_id>:
}

TEST(test_setting_cpu_id)
{
    3c90:	55                   	push   %ebp
    3c91:	89 e5                	mov    %esp,%ebp
    3c93:	57                   	push   %edi
    3c94:	56                   	push   %esi
    3c95:	53                   	push   %ebx
    3c96:	31 db                	xor    %ebx,%ebx
    3c98:	83 ec 18             	sub    $0x18,%esp
    3c9b:	8b 7d 08             	mov    0x8(%ebp),%edi
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));
    3c9e:	6a 02                	push   $0x2
    3ca0:	e8 7b c7 ff ff       	call   420 <enable_controller>
    3ca5:	83 c4 10             	add    $0x10,%esp
    3ca8:	85 c0                	test   %eax,%eax
    3caa:	74 19                	je     3cc5 <test_setting_cpu_id+0x35>
    3cac:	eb 72                	jmp    3d20 <test_setting_cpu_id+0x90>
    3cae:	66 90                	xchg   %ax,%ax
    3cb0:	83 ec 08             	sub    $0x8,%esp
    3cb3:	83 c3 01             	add    $0x1,%ebx
    3cb6:	68 18 c8 00 00       	push   $0xc818
    3cbb:	6a 01                	push   $0x1
    3cbd:	e8 de 86 00 00       	call   c3a0 <printf>
    3cc2:	83 c4 10             	add    $0x10,%esp
    3cc5:	83 ec 0c             	sub    $0xc,%esp
    3cc8:	68 5b cd 00 00       	push   $0xcd5b
    3ccd:	e8 8e 81 00 00       	call   be60 <strlen>
    3cd2:	89 c6                	mov    %eax,%esi
    3cd4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3cdb:	e8 80 81 00 00       	call   be60 <strlen>
    3ce0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3ce4:	83 c4 10             	add    $0x10,%esp
    3ce7:	39 d8                	cmp    %ebx,%eax
    3ce9:	77 c5                	ja     3cb0 <test_setting_cpu_id+0x20>
    3ceb:	83 ec 0c             	sub    $0xc,%esp
    3cee:	68 71 02 00 00       	push   $0x271
    3cf3:	68 30 c8 00 00       	push   $0xc830
    3cf8:	57                   	push   %edi
    3cf9:	68 c8 f3 00 00       	push   $0xf3c8
    3cfe:	6a 01                	push   $0x1
    3d00:	e8 9b 86 00 00       	call   c3a0 <printf>
    3d05:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3d0c:	00 00 00 
    3d0f:	83 c4 20             	add    $0x20,%esp
    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
}
    3d12:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d15:	5b                   	pop    %ebx
    3d16:	5e                   	pop    %esi
    3d17:	5f                   	pop    %edi
    3d18:	5d                   	pop    %ebp
    3d19:	c3                   	ret    
    3d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));

    // Update cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "1"));
    3d20:	83 ec 08             	sub    $0x8,%esp
    3d23:	31 db                	xor    %ebx,%ebx
    3d25:	68 1e cf 00 00       	push   $0xcf1e
    3d2a:	68 b4 ca 00 00       	push   $0xcab4
    3d2f:	e8 ac c5 ff ff       	call   2e0 <write_file>
    3d34:	83 c4 10             	add    $0x10,%esp
    3d37:	85 c0                	test   %eax,%eax
    3d39:	74 1a                	je     3d55 <test_setting_cpu_id+0xc5>
    3d3b:	eb 73                	jmp    3db0 <test_setting_cpu_id+0x120>
    3d3d:	8d 76 00             	lea    0x0(%esi),%esi
    3d40:	83 ec 08             	sub    $0x8,%esp
    3d43:	83 c3 01             	add    $0x1,%ebx
    3d46:	68 18 c8 00 00       	push   $0xc818
    3d4b:	6a 01                	push   $0x1
    3d4d:	e8 4e 86 00 00       	call   c3a0 <printf>
    3d52:	83 c4 10             	add    $0x10,%esp
    3d55:	83 ec 0c             	sub    $0xc,%esp
    3d58:	68 38 f5 00 00       	push   $0xf538
    3d5d:	e8 fe 80 00 00       	call   be60 <strlen>
    3d62:	89 c6                	mov    %eax,%esi
    3d64:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3d6b:	e8 f0 80 00 00       	call   be60 <strlen>
    3d70:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3d74:	83 c4 10             	add    $0x10,%esp
    3d77:	39 d8                	cmp    %ebx,%eax
    3d79:	77 c5                	ja     3d40 <test_setting_cpu_id+0xb0>
    3d7b:	83 ec 0c             	sub    $0xc,%esp
    3d7e:	68 74 02 00 00       	push   $0x274
    3d83:	68 30 c8 00 00       	push   $0xc830
    3d88:	57                   	push   %edi
    3d89:	68 58 f5 00 00       	push   $0xf558
    3d8e:	6a 01                	push   $0x1
    3d90:	e8 0b 86 00 00       	call   c3a0 <printf>
    3d95:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3d9c:	00 00 00 
    3d9f:	83 c4 20             	add    $0x20,%esp
    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
}
    3da2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3da5:	5b                   	pop    %ebx
    3da6:	5e                   	pop    %esi
    3da7:	5f                   	pop    %edi
    3da8:	5d                   	pop    %ebp
    3da9:	c3                   	ret    
    3daa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "1"));

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 1\n"));
    3db0:	83 ec 08             	sub    $0x8,%esp
    3db3:	6a 00                	push   $0x0
    3db5:	68 b4 ca 00 00       	push   $0xcab4
    3dba:	e8 61 c4 ff ff       	call   220 <read_file>
    3dbf:	5b                   	pop    %ebx
    3dc0:	5e                   	pop    %esi
    3dc1:	68 92 cd 00 00       	push   $0xcd92
    3dc6:	50                   	push   %eax
    3dc7:	31 db                	xor    %ebx,%ebx
    3dc9:	e8 b2 7f 00 00       	call   bd80 <strcmp>
    3dce:	83 c4 10             	add    $0x10,%esp
    3dd1:	85 c0                	test   %eax,%eax
    3dd3:	75 20                	jne    3df5 <test_setting_cpu_id+0x165>
    3dd5:	eb 70                	jmp    3e47 <test_setting_cpu_id+0x1b7>
    3dd7:	89 f6                	mov    %esi,%esi
    3dd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3de0:	83 ec 08             	sub    $0x8,%esp
    3de3:	83 c3 01             	add    $0x1,%ebx
    3de6:	68 18 c8 00 00       	push   $0xc818
    3deb:	6a 01                	push   $0x1
    3ded:	e8 ae 85 00 00       	call   c3a0 <printf>
    3df2:	83 c4 10             	add    $0x10,%esp
    3df5:	83 ec 0c             	sub    $0xc,%esp
    3df8:	68 a4 f5 00 00       	push   $0xf5a4
    3dfd:	e8 5e 80 00 00       	call   be60 <strlen>
    3e02:	89 c6                	mov    %eax,%esi
    3e04:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3e0b:	e8 50 80 00 00       	call   be60 <strlen>
    3e10:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3e14:	83 c4 10             	add    $0x10,%esp
    3e17:	39 d8                	cmp    %ebx,%eax
    3e19:	77 c5                	ja     3de0 <test_setting_cpu_id+0x150>
    3e1b:	83 ec 0c             	sub    $0xc,%esp
    3e1e:	68 77 02 00 00       	push   $0x277
    3e23:	68 30 c8 00 00       	push   $0xc830
    3e28:	57                   	push   %edi
    3e29:	68 dc f5 00 00       	push   $0xf5dc
    3e2e:	6a 01                	push   $0x1
    3e30:	e8 6b 85 00 00       	call   c3a0 <printf>
    3e35:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3e3c:	00 00 00 
    3e3f:	83 c4 20             	add    $0x20,%esp
    3e42:	e9 cb fe ff ff       	jmp    3d12 <test_setting_cpu_id+0x82>

    // Restore default cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "0"));
    3e47:	83 ec 08             	sub    $0x8,%esp
    3e4a:	31 db                	xor    %ebx,%ebx
    3e4c:	68 82 cc 00 00       	push   $0xcc82
    3e51:	68 b4 ca 00 00       	push   $0xcab4
    3e56:	e8 85 c4 ff ff       	call   2e0 <write_file>
    3e5b:	83 c4 10             	add    $0x10,%esp
    3e5e:	85 c0                	test   %eax,%eax
    3e60:	74 1b                	je     3e7d <test_setting_cpu_id+0x1ed>
    3e62:	eb 6b                	jmp    3ecf <test_setting_cpu_id+0x23f>
    3e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3e68:	83 ec 08             	sub    $0x8,%esp
    3e6b:	83 c3 01             	add    $0x1,%ebx
    3e6e:	68 18 c8 00 00       	push   $0xc818
    3e73:	6a 01                	push   $0x1
    3e75:	e8 26 85 00 00       	call   c3a0 <printf>
    3e7a:	83 c4 10             	add    $0x10,%esp
    3e7d:	83 ec 0c             	sub    $0xc,%esp
    3e80:	68 3c f6 00 00       	push   $0xf63c
    3e85:	e8 d6 7f 00 00       	call   be60 <strlen>
    3e8a:	89 c6                	mov    %eax,%esi
    3e8c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3e93:	e8 c8 7f 00 00       	call   be60 <strlen>
    3e98:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3e9c:	83 c4 10             	add    $0x10,%esp
    3e9f:	39 d8                	cmp    %ebx,%eax
    3ea1:	77 c5                	ja     3e68 <test_setting_cpu_id+0x1d8>
    3ea3:	83 ec 0c             	sub    $0xc,%esp
    3ea6:	68 7a 02 00 00       	push   $0x27a
    3eab:	68 30 c8 00 00       	push   $0xc830
    3eb0:	57                   	push   %edi
    3eb1:	68 5c f6 00 00       	push   $0xf65c
    3eb6:	6a 01                	push   $0x1
    3eb8:	e8 e3 84 00 00       	call   c3a0 <printf>
    3ebd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3ec4:	00 00 00 
    3ec7:	83 c4 20             	add    $0x20,%esp
    3eca:	e9 43 fe ff ff       	jmp    3d12 <test_setting_cpu_id+0x82>

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));
    3ecf:	83 ec 08             	sub    $0x8,%esp
    3ed2:	31 db                	xor    %ebx,%ebx
    3ed4:	6a 00                	push   $0x0
    3ed6:	68 b4 ca 00 00       	push   $0xcab4
    3edb:	e8 40 c3 ff ff       	call   220 <read_file>
    3ee0:	5a                   	pop    %edx
    3ee1:	59                   	pop    %ecx
    3ee2:	68 9f cd 00 00       	push   $0xcd9f
    3ee7:	50                   	push   %eax
    3ee8:	e8 93 7e 00 00       	call   bd80 <strcmp>
    3eed:	83 c4 10             	add    $0x10,%esp
    3ef0:	85 c0                	test   %eax,%eax
    3ef2:	75 21                	jne    3f15 <test_setting_cpu_id+0x285>
    3ef4:	eb 71                	jmp    3f67 <test_setting_cpu_id+0x2d7>
    3ef6:	8d 76 00             	lea    0x0(%esi),%esi
    3ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3f00:	83 ec 08             	sub    $0x8,%esp
    3f03:	83 c3 01             	add    $0x1,%ebx
    3f06:	68 18 c8 00 00       	push   $0xc818
    3f0b:	6a 01                	push   $0x1
    3f0d:	e8 8e 84 00 00       	call   c3a0 <printf>
    3f12:	83 c4 10             	add    $0x10,%esp
    3f15:	83 ec 0c             	sub    $0xc,%esp
    3f18:	68 a8 f6 00 00       	push   $0xf6a8
    3f1d:	e8 3e 7f 00 00       	call   be60 <strlen>
    3f22:	89 c6                	mov    %eax,%esi
    3f24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3f2b:	e8 30 7f 00 00       	call   be60 <strlen>
    3f30:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3f34:	83 c4 10             	add    $0x10,%esp
    3f37:	39 d8                	cmp    %ebx,%eax
    3f39:	77 c5                	ja     3f00 <test_setting_cpu_id+0x270>
    3f3b:	83 ec 0c             	sub    $0xc,%esp
    3f3e:	68 7d 02 00 00       	push   $0x27d
    3f43:	68 30 c8 00 00       	push   $0xc830
    3f48:	57                   	push   %edi
    3f49:	68 e0 f6 00 00       	push   $0xf6e0
    3f4e:	6a 01                	push   $0x1
    3f50:	e8 4b 84 00 00       	call   c3a0 <printf>
    3f55:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3f5c:	00 00 00 
    3f5f:	83 c4 20             	add    $0x20,%esp
    3f62:	e9 ab fd ff ff       	jmp    3d12 <test_setting_cpu_id+0x82>

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
    3f67:	83 ec 0c             	sub    $0xc,%esp
    3f6a:	31 db                	xor    %ebx,%ebx
    3f6c:	6a 02                	push   $0x2
    3f6e:	e8 fd c4 ff ff       	call   470 <disable_controller>
    3f73:	83 c4 10             	add    $0x10,%esp
    3f76:	85 c0                	test   %eax,%eax
    3f78:	74 1b                	je     3f95 <test_setting_cpu_id+0x305>
    3f7a:	e9 93 fd ff ff       	jmp    3d12 <test_setting_cpu_id+0x82>
    3f7f:	90                   	nop
    3f80:	83 ec 08             	sub    $0x8,%esp
    3f83:	83 c3 01             	add    $0x1,%ebx
    3f86:	68 18 c8 00 00       	push   $0xc818
    3f8b:	6a 01                	push   $0x1
    3f8d:	e8 0e 84 00 00       	call   c3a0 <printf>
    3f92:	83 c4 10             	add    $0x10,%esp
    3f95:	83 ec 0c             	sub    $0xc,%esp
    3f98:	68 76 cd 00 00       	push   $0xcd76
    3f9d:	e8 be 7e 00 00       	call   be60 <strlen>
    3fa2:	89 c6                	mov    %eax,%esi
    3fa4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    3fab:	e8 b0 7e 00 00       	call   be60 <strlen>
    3fb0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    3fb4:	83 c4 10             	add    $0x10,%esp
    3fb7:	39 d8                	cmp    %ebx,%eax
    3fb9:	77 c5                	ja     3f80 <test_setting_cpu_id+0x2f0>
    3fbb:	83 ec 0c             	sub    $0xc,%esp
    3fbe:	68 80 02 00 00       	push   $0x280
    3fc3:	68 30 c8 00 00       	push   $0xc830
    3fc8:	57                   	push   %edi
    3fc9:	68 7c f4 00 00       	push   $0xf47c
    3fce:	6a 01                	push   $0x1
    3fd0:	e8 cb 83 00 00       	call   c3a0 <printf>
    3fd5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    3fdc:	00 00 00 
    3fdf:	83 c4 20             	add    $0x20,%esp
    3fe2:	e9 2b fd ff ff       	jmp    3d12 <test_setting_cpu_id+0x82>
    3fe7:	89 f6                	mov    %esi,%esi
    3fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ff0 <test_correct_cpu_running>:
}

TEST(test_correct_cpu_running)
{
    3ff0:	55                   	push   %ebp
    3ff1:	89 e5                	mov    %esp,%ebp
    3ff3:	57                   	push   %edi
    3ff4:	56                   	push   %esi
    3ff5:	53                   	push   %ebx
    3ff6:	31 db                	xor    %ebx,%ebx
    3ff8:	83 ec 18             	sub    $0x18,%esp
    3ffb:	8b 75 08             	mov    0x8(%ebp),%esi
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));
    3ffe:	6a 02                	push   $0x2
    4000:	e8 1b c4 ff ff       	call   420 <enable_controller>
    4005:	83 c4 10             	add    $0x10,%esp
    4008:	85 c0                	test   %eax,%eax
    400a:	74 19                	je     4025 <test_correct_cpu_running+0x35>
    400c:	eb 72                	jmp    4080 <test_correct_cpu_running+0x90>
    400e:	66 90                	xchg   %ax,%ax
    4010:	83 ec 08             	sub    $0x8,%esp
    4013:	83 c3 01             	add    $0x1,%ebx
    4016:	68 18 c8 00 00       	push   $0xc818
    401b:	6a 01                	push   $0x1
    401d:	e8 7e 83 00 00       	call   c3a0 <printf>
    4022:	83 c4 10             	add    $0x10,%esp
    4025:	83 ec 0c             	sub    $0xc,%esp
    4028:	68 5b cd 00 00       	push   $0xcd5b
    402d:	e8 2e 7e 00 00       	call   be60 <strlen>
    4032:	89 c7                	mov    %eax,%edi
    4034:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    403b:	e8 20 7e 00 00       	call   be60 <strlen>
    4040:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4044:	83 c4 10             	add    $0x10,%esp
    4047:	39 d8                	cmp    %ebx,%eax
    4049:	77 c5                	ja     4010 <test_correct_cpu_running+0x20>
    404b:	83 ec 0c             	sub    $0xc,%esp
    404e:	68 86 02 00 00       	push   $0x286
    4053:	68 30 c8 00 00       	push   $0xc830
    4058:	56                   	push   %esi
    4059:	68 c8 f3 00 00       	push   $0xf3c8
    405e:	6a 01                	push   $0x1
    4060:	e8 3b 83 00 00       	call   c3a0 <printf>
    4065:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    406c:	00 00 00 
    406f:	83 c4 20             	add    $0x20,%esp
    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
}
    4072:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4075:	5b                   	pop    %ebx
    4076:	5e                   	pop    %esi
    4077:	5f                   	pop    %edi
    4078:	5d                   	pop    %ebp
    4079:	c3                   	ret    
    407a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));

    // Update cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "1"));
    4080:	83 ec 08             	sub    $0x8,%esp
    4083:	31 db                	xor    %ebx,%ebx
    4085:	68 1e cf 00 00       	push   $0xcf1e
    408a:	68 b4 ca 00 00       	push   $0xcab4
    408f:	e8 4c c2 ff ff       	call   2e0 <write_file>
    4094:	83 c4 10             	add    $0x10,%esp
    4097:	85 c0                	test   %eax,%eax
    4099:	74 1a                	je     40b5 <test_correct_cpu_running+0xc5>
    409b:	eb 73                	jmp    4110 <test_correct_cpu_running+0x120>
    409d:	8d 76 00             	lea    0x0(%esi),%esi
    40a0:	83 ec 08             	sub    $0x8,%esp
    40a3:	83 c3 01             	add    $0x1,%ebx
    40a6:	68 18 c8 00 00       	push   $0xc818
    40ab:	6a 01                	push   $0x1
    40ad:	e8 ee 82 00 00       	call   c3a0 <printf>
    40b2:	83 c4 10             	add    $0x10,%esp
    40b5:	83 ec 0c             	sub    $0xc,%esp
    40b8:	68 38 f5 00 00       	push   $0xf538
    40bd:	e8 9e 7d 00 00       	call   be60 <strlen>
    40c2:	89 c7                	mov    %eax,%edi
    40c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    40cb:	e8 90 7d 00 00       	call   be60 <strlen>
    40d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    40d4:	83 c4 10             	add    $0x10,%esp
    40d7:	39 d8                	cmp    %ebx,%eax
    40d9:	77 c5                	ja     40a0 <test_correct_cpu_running+0xb0>
    40db:	83 ec 0c             	sub    $0xc,%esp
    40de:	68 89 02 00 00       	push   $0x289
    40e3:	68 30 c8 00 00       	push   $0xc830
    40e8:	56                   	push   %esi
    40e9:	68 58 f5 00 00       	push   $0xf558
    40ee:	6a 01                	push   $0x1
    40f0:	e8 ab 82 00 00       	call   c3a0 <printf>
    40f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    40fc:	00 00 00 
    40ff:	83 c4 20             	add    $0x20,%esp
    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
}
    4102:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4105:	5b                   	pop    %ebx
    4106:	5e                   	pop    %esi
    4107:	5f                   	pop    %edi
    4108:	5d                   	pop    %ebp
    4109:	c3                   	ret    
    410a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "1"));

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 1\n"));
    4110:	83 ec 08             	sub    $0x8,%esp
    4113:	6a 00                	push   $0x0
    4115:	68 b4 ca 00 00       	push   $0xcab4
    411a:	e8 01 c1 ff ff       	call   220 <read_file>
    411f:	59                   	pop    %ecx
    4120:	5b                   	pop    %ebx
    4121:	68 92 cd 00 00       	push   $0xcd92
    4126:	50                   	push   %eax
    4127:	31 db                	xor    %ebx,%ebx
    4129:	e8 52 7c 00 00       	call   bd80 <strcmp>
    412e:	83 c4 10             	add    $0x10,%esp
    4131:	85 c0                	test   %eax,%eax
    4133:	75 20                	jne    4155 <test_correct_cpu_running+0x165>
    4135:	eb 70                	jmp    41a7 <test_correct_cpu_running+0x1b7>
    4137:	89 f6                	mov    %esi,%esi
    4139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4140:	83 ec 08             	sub    $0x8,%esp
    4143:	83 c3 01             	add    $0x1,%ebx
    4146:	68 18 c8 00 00       	push   $0xc818
    414b:	6a 01                	push   $0x1
    414d:	e8 4e 82 00 00       	call   c3a0 <printf>
    4152:	83 c4 10             	add    $0x10,%esp
    4155:	83 ec 0c             	sub    $0xc,%esp
    4158:	68 a4 f5 00 00       	push   $0xf5a4
    415d:	e8 fe 7c 00 00       	call   be60 <strlen>
    4162:	89 c7                	mov    %eax,%edi
    4164:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    416b:	e8 f0 7c 00 00       	call   be60 <strlen>
    4170:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4174:	83 c4 10             	add    $0x10,%esp
    4177:	39 d8                	cmp    %ebx,%eax
    4179:	77 c5                	ja     4140 <test_correct_cpu_running+0x150>
    417b:	83 ec 0c             	sub    $0xc,%esp
    417e:	68 8c 02 00 00       	push   $0x28c
    4183:	68 30 c8 00 00       	push   $0xc830
    4188:	56                   	push   %esi
    4189:	68 dc f5 00 00       	push   $0xf5dc
    418e:	6a 01                	push   $0x1
    4190:	e8 0b 82 00 00       	call   c3a0 <printf>
    4195:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    419c:	00 00 00 
    419f:	83 c4 20             	add    $0x20,%esp
    41a2:	e9 cb fe ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Move the current process to "/cgroup/test1" cgroup.
    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    41a7:	e8 bc 80 00 00       	call   c268 <getpid>
    41ac:	83 ec 08             	sub    $0x8,%esp
    41af:	31 db                	xor    %ebx,%ebx
    41b1:	50                   	push   %eax
    41b2:	68 ed c9 00 00       	push   $0xc9ed
    41b7:	e8 64 c4 ff ff       	call   620 <move_proc>
    41bc:	83 c4 10             	add    $0x10,%esp
    41bf:	85 c0                	test   %eax,%eax
    41c1:	74 1a                	je     41dd <test_correct_cpu_running+0x1ed>
    41c3:	eb 6a                	jmp    422f <test_correct_cpu_running+0x23f>
    41c5:	8d 76 00             	lea    0x0(%esi),%esi
    41c8:	83 ec 08             	sub    $0x8,%esp
    41cb:	83 c3 01             	add    $0x1,%ebx
    41ce:	68 18 c8 00 00       	push   $0xc818
    41d3:	6a 01                	push   $0x1
    41d5:	e8 c6 81 00 00       	call   c3a0 <printf>
    41da:	83 c4 10             	add    $0x10,%esp
    41dd:	83 ec 0c             	sub    $0xc,%esp
    41e0:	68 c0 ec 00 00       	push   $0xecc0
    41e5:	e8 76 7c 00 00       	call   be60 <strlen>
    41ea:	89 c7                	mov    %eax,%edi
    41ec:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    41f3:	e8 68 7c 00 00       	call   be60 <strlen>
    41f8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    41fc:	83 c4 10             	add    $0x10,%esp
    41ff:	39 d8                	cmp    %ebx,%eax
    4201:	77 c5                	ja     41c8 <test_correct_cpu_running+0x1d8>
    4203:	83 ec 0c             	sub    $0xc,%esp
    4206:	68 8f 02 00 00       	push   $0x28f
    420b:	68 30 c8 00 00       	push   $0xc830
    4210:	56                   	push   %esi
    4211:	68 04 ef 00 00       	push   $0xef04
    4216:	6a 01                	push   $0x1
    4218:	e8 83 81 00 00       	call   c3a0 <printf>
    421d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4224:	00 00 00 
    4227:	83 c4 20             	add    $0x20,%esp
    422a:	e9 43 fe ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Check that the process we moved is really in "/cgroup/test1" cgroup.
    ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    422f:	e8 34 80 00 00       	call   c268 <getpid>
    4234:	83 ec 08             	sub    $0x8,%esp
    4237:	31 db                	xor    %ebx,%ebx
    4239:	50                   	push   %eax
    423a:	68 ed c9 00 00       	push   $0xc9ed
    423f:	e8 0c c4 ff ff       	call   650 <is_pid_in_group>
    4244:	83 c4 10             	add    $0x10,%esp
    4247:	85 c0                	test   %eax,%eax
    4249:	74 1a                	je     4265 <test_correct_cpu_running+0x275>
    424b:	eb 6a                	jmp    42b7 <test_correct_cpu_running+0x2c7>
    424d:	8d 76 00             	lea    0x0(%esi),%esi
    4250:	83 ec 08             	sub    $0x8,%esp
    4253:	83 c3 01             	add    $0x1,%ebx
    4256:	68 18 c8 00 00       	push   $0xc818
    425b:	6a 01                	push   $0x1
    425d:	e8 3e 81 00 00       	call   c3a0 <printf>
    4262:	83 c4 10             	add    $0x10,%esp
    4265:	83 ec 0c             	sub    $0xc,%esp
    4268:	68 40 ed 00 00       	push   $0xed40
    426d:	e8 ee 7b 00 00       	call   be60 <strlen>
    4272:	89 c7                	mov    %eax,%edi
    4274:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    427b:	e8 e0 7b 00 00       	call   be60 <strlen>
    4280:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4284:	83 c4 10             	add    $0x10,%esp
    4287:	39 d8                	cmp    %ebx,%eax
    4289:	77 c5                	ja     4250 <test_correct_cpu_running+0x260>
    428b:	83 ec 0c             	sub    $0xc,%esp
    428e:	68 92 02 00 00       	push   $0x292
    4293:	68 30 c8 00 00       	push   $0xc830
    4298:	56                   	push   %esi
    4299:	68 58 ef 00 00       	push   $0xef58
    429e:	6a 01                	push   $0x1
    42a0:	e8 fb 80 00 00       	call   c3a0 <printf>
    42a5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    42ac:	00 00 00 
    42af:	83 c4 20             	add    $0x20,%esp
    42b2:	e9 bb fd ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Go to sleep in order to make the process is rescheduled.
    sleep(5);
    42b7:	83 ec 0c             	sub    $0xc,%esp
    42ba:	6a 05                	push   $0x5
    42bc:	e8 b7 7f 00 00       	call   c278 <sleep>

    // Verify that the process is scheduled on the set cpu.
    ASSERT_UINT_EQ(getcpu(), 1);
    42c1:	e8 02 80 00 00       	call   c2c8 <getcpu>
    42c6:	83 c4 10             	add    $0x10,%esp
    42c9:	83 f8 01             	cmp    $0x1,%eax
    42cc:	74 2d                	je     42fb <test_correct_cpu_running+0x30b>
    42ce:	e8 f5 7f 00 00       	call   c2c8 <getcpu>
    42d3:	83 ec 0c             	sub    $0xc,%esp
    42d6:	68 98 02 00 00       	push   $0x298
    42db:	68 30 c8 00 00       	push   $0xc830
    42e0:	6a 01                	push   $0x1
    42e2:	50                   	push   %eax
    42e3:	56                   	push   %esi
    42e4:	e8 97 bd ff ff       	call   80 <print_error>
    42e9:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    42f0:	00 00 00 
    42f3:	83 c4 20             	add    $0x20,%esp
    42f6:	e9 77 fd ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Return the process to root cgroup.
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    42fb:	e8 68 7f 00 00       	call   c268 <getpid>
    4300:	83 ec 08             	sub    $0x8,%esp
    4303:	31 db                	xor    %ebx,%ebx
    4305:	50                   	push   %eax
    4306:	68 f0 cc 00 00       	push   $0xccf0
    430b:	e8 10 c3 ff ff       	call   620 <move_proc>
    4310:	83 c4 10             	add    $0x10,%esp
    4313:	85 c0                	test   %eax,%eax
    4315:	74 1e                	je     4335 <test_correct_cpu_running+0x345>
    4317:	eb 6e                	jmp    4387 <test_correct_cpu_running+0x397>
    4319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4320:	83 ec 08             	sub    $0x8,%esp
    4323:	83 c3 01             	add    $0x1,%ebx
    4326:	68 18 c8 00 00       	push   $0xc818
    432b:	6a 01                	push   $0x1
    432d:	e8 6e 80 00 00       	call   c3a0 <printf>
    4332:	83 c4 10             	add    $0x10,%esp
    4335:	83 ec 0c             	sub    $0xc,%esp
    4338:	68 b0 ef 00 00       	push   $0xefb0
    433d:	e8 1e 7b 00 00       	call   be60 <strlen>
    4342:	89 c7                	mov    %eax,%edi
    4344:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    434b:	e8 10 7b 00 00       	call   be60 <strlen>
    4350:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4354:	83 c4 10             	add    $0x10,%esp
    4357:	39 d8                	cmp    %ebx,%eax
    4359:	77 c5                	ja     4320 <test_correct_cpu_running+0x330>
    435b:	83 ec 0c             	sub    $0xc,%esp
    435e:	68 9b 02 00 00       	push   $0x29b
    4363:	68 30 c8 00 00       	push   $0xc830
    4368:	56                   	push   %esi
    4369:	68 d8 ef 00 00       	push   $0xefd8
    436e:	6a 01                	push   $0x1
    4370:	e8 2b 80 00 00       	call   c3a0 <printf>
    4375:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    437c:	00 00 00 
    437f:	83 c4 20             	add    $0x20,%esp
    4382:	e9 eb fc ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Check that the process we returned is really in root cgroup.
    ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    4387:	e8 dc 7e 00 00       	call   c268 <getpid>
    438c:	52                   	push   %edx
    438d:	52                   	push   %edx
    438e:	50                   	push   %eax
    438f:	68 f0 cc 00 00       	push   $0xccf0
    4394:	e8 b7 c2 ff ff       	call   650 <is_pid_in_group>
    4399:	83 c4 10             	add    $0x10,%esp
    439c:	85 c0                	test   %eax,%eax
    439e:	75 6f                	jne    440f <test_correct_cpu_running+0x41f>
    43a0:	31 db                	xor    %ebx,%ebx
    43a2:	eb 19                	jmp    43bd <test_correct_cpu_running+0x3cd>
    43a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    43a8:	83 ec 08             	sub    $0x8,%esp
    43ab:	83 c3 01             	add    $0x1,%ebx
    43ae:	68 18 c8 00 00       	push   $0xc818
    43b3:	6a 01                	push   $0x1
    43b5:	e8 e6 7f 00 00       	call   c3a0 <printf>
    43ba:	83 c4 10             	add    $0x10,%esp
    43bd:	83 ec 0c             	sub    $0xc,%esp
    43c0:	68 c8 ed 00 00       	push   $0xedc8
    43c5:	e8 96 7a 00 00       	call   be60 <strlen>
    43ca:	89 c7                	mov    %eax,%edi
    43cc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    43d3:	e8 88 7a 00 00       	call   be60 <strlen>
    43d8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    43dc:	83 c4 10             	add    $0x10,%esp
    43df:	39 d8                	cmp    %ebx,%eax
    43e1:	77 c5                	ja     43a8 <test_correct_cpu_running+0x3b8>
    43e3:	83 ec 0c             	sub    $0xc,%esp
    43e6:	68 9e 02 00 00       	push   $0x29e
    43eb:	68 30 c8 00 00       	push   $0xc830
    43f0:	56                   	push   %esi
    43f1:	68 f8 ed 00 00       	push   $0xedf8
    43f6:	6a 01                	push   $0x1
    43f8:	e8 a3 7f 00 00       	call   c3a0 <printf>
    43fd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4404:	00 00 00 
    4407:	83 c4 20             	add    $0x20,%esp
    440a:	e9 63 fc ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Restore default cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "0"));
    440f:	50                   	push   %eax
    4410:	50                   	push   %eax
    4411:	68 82 cc 00 00       	push   $0xcc82
    4416:	68 b4 ca 00 00       	push   $0xcab4
    441b:	e8 c0 be ff ff       	call   2e0 <write_file>
    4420:	83 c4 10             	add    $0x10,%esp
    4423:	85 c0                	test   %eax,%eax
    4425:	75 70                	jne    4497 <test_correct_cpu_running+0x4a7>
    4427:	31 db                	xor    %ebx,%ebx
    4429:	eb 1a                	jmp    4445 <test_correct_cpu_running+0x455>
    442b:	90                   	nop
    442c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4430:	83 ec 08             	sub    $0x8,%esp
    4433:	83 c3 01             	add    $0x1,%ebx
    4436:	68 18 c8 00 00       	push   $0xc818
    443b:	6a 01                	push   $0x1
    443d:	e8 5e 7f 00 00       	call   c3a0 <printf>
    4442:	83 c4 10             	add    $0x10,%esp
    4445:	83 ec 0c             	sub    $0xc,%esp
    4448:	68 3c f6 00 00       	push   $0xf63c
    444d:	e8 0e 7a 00 00       	call   be60 <strlen>
    4452:	89 c7                	mov    %eax,%edi
    4454:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    445b:	e8 00 7a 00 00       	call   be60 <strlen>
    4460:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4464:	83 c4 10             	add    $0x10,%esp
    4467:	39 d8                	cmp    %ebx,%eax
    4469:	77 c5                	ja     4430 <test_correct_cpu_running+0x440>
    446b:	83 ec 0c             	sub    $0xc,%esp
    446e:	68 a1 02 00 00       	push   $0x2a1
    4473:	68 30 c8 00 00       	push   $0xc830
    4478:	56                   	push   %esi
    4479:	68 5c f6 00 00       	push   $0xf65c
    447e:	6a 01                	push   $0x1
    4480:	e8 1b 7f 00 00       	call   c3a0 <printf>
    4485:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    448c:	00 00 00 
    448f:	83 c4 20             	add    $0x20,%esp
    4492:	e9 db fb ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));
    4497:	51                   	push   %ecx
    4498:	51                   	push   %ecx
    4499:	6a 00                	push   $0x0
    449b:	68 b4 ca 00 00       	push   $0xcab4
    44a0:	e8 7b bd ff ff       	call   220 <read_file>
    44a5:	5b                   	pop    %ebx
    44a6:	5f                   	pop    %edi
    44a7:	68 9f cd 00 00       	push   $0xcd9f
    44ac:	50                   	push   %eax
    44ad:	e8 ce 78 00 00       	call   bd80 <strcmp>
    44b2:	83 c4 10             	add    $0x10,%esp
    44b5:	85 c0                	test   %eax,%eax
    44b7:	74 3e                	je     44f7 <test_correct_cpu_running+0x507>
    44b9:	31 db                	xor    %ebx,%ebx
    44bb:	83 ec 0c             	sub    $0xc,%esp
    44be:	68 a8 f6 00 00       	push   $0xf6a8
    44c3:	e8 98 79 00 00       	call   be60 <strlen>
    44c8:	89 c7                	mov    %eax,%edi
    44ca:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    44d1:	e8 8a 79 00 00       	call   be60 <strlen>
    44d6:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    44da:	83 c4 10             	add    $0x10,%esp
    44dd:	39 d8                	cmp    %ebx,%eax
    44df:	76 69                	jbe    454a <test_correct_cpu_running+0x55a>
    44e1:	52                   	push   %edx
    44e2:	52                   	push   %edx
    44e3:	83 c3 01             	add    $0x1,%ebx
    44e6:	68 18 c8 00 00       	push   $0xc818
    44eb:	6a 01                	push   $0x1
    44ed:	e8 ae 7e 00 00       	call   c3a0 <printf>
    44f2:	83 c4 10             	add    $0x10,%esp
    44f5:	eb c4                	jmp    44bb <test_correct_cpu_running+0x4cb>

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
    44f7:	83 ec 0c             	sub    $0xc,%esp
    44fa:	31 db                	xor    %ebx,%ebx
    44fc:	6a 02                	push   $0x2
    44fe:	e8 6d bf ff ff       	call   470 <disable_controller>
    4503:	83 c4 10             	add    $0x10,%esp
    4506:	85 c0                	test   %eax,%eax
    4508:	0f 85 64 fb ff ff    	jne    4072 <test_correct_cpu_running+0x82>
    450e:	83 ec 0c             	sub    $0xc,%esp
    4511:	68 76 cd 00 00       	push   $0xcd76
    4516:	e8 45 79 00 00       	call   be60 <strlen>
    451b:	89 c7                	mov    %eax,%edi
    451d:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4524:	e8 37 79 00 00       	call   be60 <strlen>
    4529:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    452d:	83 c4 10             	add    $0x10,%esp
    4530:	39 d8                	cmp    %ebx,%eax
    4532:	76 42                	jbe    4576 <test_correct_cpu_running+0x586>
    4534:	50                   	push   %eax
    4535:	50                   	push   %eax
    4536:	83 c3 01             	add    $0x1,%ebx
    4539:	68 18 c8 00 00       	push   $0xc818
    453e:	6a 01                	push   $0x1
    4540:	e8 5b 7e 00 00       	call   c3a0 <printf>
    4545:	83 c4 10             	add    $0x10,%esp
    4548:	eb c4                	jmp    450e <test_correct_cpu_running+0x51e>

    // Restore default cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "0"));

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_CPU, 0), "use_cpu - 0\n"));
    454a:	83 ec 0c             	sub    $0xc,%esp
    454d:	68 a4 02 00 00       	push   $0x2a4
    4552:	68 30 c8 00 00       	push   $0xc830
    4557:	56                   	push   %esi
    4558:	68 e0 f6 00 00       	push   $0xf6e0
    455d:	6a 01                	push   $0x1
    455f:	e8 3c 7e 00 00       	call   c3a0 <printf>
    4564:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    456b:	00 00 00 
    456e:	83 c4 20             	add    $0x20,%esp
    4571:	e9 fc fa ff ff       	jmp    4072 <test_correct_cpu_running+0x82>

    // Disable cpu set controller.
    ASSERT_TRUE(disable_controller(SET_CNT));
    4576:	83 ec 0c             	sub    $0xc,%esp
    4579:	68 a7 02 00 00       	push   $0x2a7
    457e:	68 30 c8 00 00       	push   $0xc830
    4583:	56                   	push   %esi
    4584:	68 7c f4 00 00       	push   $0xf47c
    4589:	6a 01                	push   $0x1
    458b:	e8 10 7e 00 00       	call   c3a0 <printf>
    4590:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4597:	00 00 00 
    459a:	83 c4 20             	add    $0x20,%esp
    459d:	e9 d0 fa ff ff       	jmp    4072 <test_correct_cpu_running+0x82>
    45a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    45a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000045b0 <test_no_run>:
}

TEST(test_no_run)
{
    45b0:	55                   	push   %ebp
    45b1:	89 e5                	mov    %esp,%ebp
    45b3:	57                   	push   %edi
    45b4:	56                   	push   %esi
    45b5:	53                   	push   %ebx
    45b6:	31 db                	xor    %ebx,%ebx
    45b8:	83 ec 28             	sub    $0x28,%esp
    45bb:	8b 75 08             	mov    0x8(%ebp),%esi
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));
    45be:	6a 02                	push   $0x2
    45c0:	e8 5b be ff ff       	call   420 <enable_controller>
    45c5:	83 c4 10             	add    $0x10,%esp
    45c8:	85 c0                	test   %eax,%eax
    45ca:	74 19                	je     45e5 <test_no_run+0x35>
    45cc:	eb 72                	jmp    4640 <test_no_run+0x90>
    45ce:	66 90                	xchg   %ax,%ax
    45d0:	83 ec 08             	sub    $0x8,%esp
    45d3:	83 c3 01             	add    $0x1,%ebx
    45d6:	68 18 c8 00 00       	push   $0xc818
    45db:	6a 01                	push   $0x1
    45dd:	e8 be 7d 00 00       	call   c3a0 <printf>
    45e2:	83 c4 10             	add    $0x10,%esp
    45e5:	83 ec 0c             	sub    $0xc,%esp
    45e8:	68 5b cd 00 00       	push   $0xcd5b
    45ed:	e8 6e 78 00 00       	call   be60 <strlen>
    45f2:	89 c7                	mov    %eax,%edi
    45f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    45fb:	e8 60 78 00 00       	call   be60 <strlen>
    4600:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4604:	83 c4 10             	add    $0x10,%esp
    4607:	39 d8                	cmp    %ebx,%eax
    4609:	77 c5                	ja     45d0 <test_no_run+0x20>
    460b:	83 ec 0c             	sub    $0xc,%esp
    460e:	68 ad 02 00 00       	push   $0x2ad
    4613:	68 30 c8 00 00       	push   $0xc830
    4618:	56                   	push   %esi
    4619:	68 c8 f3 00 00       	push   $0xf3c8
    461e:	6a 01                	push   $0x1
    4620:	e8 7b 7d 00 00       	call   c3a0 <printf>
    4625:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    462c:	00 00 00 
    462f:	83 c4 20             	add    $0x20,%esp
        ASSERT_TRUE(temp_delete());

        // Disable cpu set controller.
        ASSERT_TRUE(disable_controller(SET_CNT));
    }
}
    4632:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4635:	5b                   	pop    %ebx
    4636:	5e                   	pop    %esi
    4637:	5f                   	pop    %edi
    4638:	5d                   	pop    %ebp
    4639:	c3                   	ret    
    463a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Enable cpu set controller.
    ASSERT_TRUE(enable_controller(SET_CNT));

    // Update cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "2"));
    4640:	83 ec 08             	sub    $0x8,%esp
    4643:	31 db                	xor    %ebx,%ebx
    4645:	68 9b c9 00 00       	push   $0xc99b
    464a:	68 b4 ca 00 00       	push   $0xcab4
    464f:	e8 8c bc ff ff       	call   2e0 <write_file>
    4654:	83 c4 10             	add    $0x10,%esp
    4657:	85 c0                	test   %eax,%eax
    4659:	74 1a                	je     4675 <test_no_run+0xc5>
    465b:	eb 73                	jmp    46d0 <test_no_run+0x120>
    465d:	8d 76 00             	lea    0x0(%esi),%esi
    4660:	83 ec 08             	sub    $0x8,%esp
    4663:	83 c3 01             	add    $0x1,%ebx
    4666:	68 18 c8 00 00       	push   $0xc818
    466b:	6a 01                	push   $0x1
    466d:	e8 2e 7d 00 00       	call   c3a0 <printf>
    4672:	83 c4 10             	add    $0x10,%esp
    4675:	83 ec 0c             	sub    $0xc,%esp
    4678:	68 40 f7 00 00       	push   $0xf740
    467d:	e8 de 77 00 00       	call   be60 <strlen>
    4682:	89 c7                	mov    %eax,%edi
    4684:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    468b:	e8 d0 77 00 00       	call   be60 <strlen>
    4690:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4694:	83 c4 10             	add    $0x10,%esp
    4697:	39 d8                	cmp    %ebx,%eax
    4699:	77 c5                	ja     4660 <test_no_run+0xb0>
    469b:	83 ec 0c             	sub    $0xc,%esp
    469e:	68 b0 02 00 00       	push   $0x2b0
    46a3:	68 30 c8 00 00       	push   $0xc830
    46a8:	56                   	push   %esi
    46a9:	68 60 f7 00 00       	push   $0xf760
    46ae:	6a 01                	push   $0x1
    46b0:	e8 eb 7c 00 00       	call   c3a0 <printf>
    46b5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    46bc:	00 00 00 
    46bf:	83 c4 20             	add    $0x20,%esp
        ASSERT_TRUE(temp_delete());

        // Disable cpu set controller.
        ASSERT_TRUE(disable_controller(SET_CNT));
    }
}
    46c2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    46c5:	5b                   	pop    %ebx
    46c6:	5e                   	pop    %esi
    46c7:	5f                   	pop    %edi
    46c8:	5d                   	pop    %ebp
    46c9:	c3                   	ret    
    46ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update cpu id.
    ASSERT_TRUE(write_file(TEST_1_SET_CPU, "2"));

    // Fork here since the process should not be running after we move it inside the cgroup.
    int pid = fork();
    46d0:	e8 0b 7b 00 00       	call   c1e0 <fork>
    int pidToMove = 0;
    int sum = 0;
    int wstatus;

    // Child
    if (pid == 0) {
    46d5:	85 c0                	test   %eax,%eax
    46d7:	0f 84 02 03 00 00    	je     49df <test_no_run+0x42f>
        temp_write(sum);
        exit(0);
    }
    // Father
    else {
        sleep(5);
    46dd:	83 ec 0c             	sub    $0xc,%esp
    46e0:	6a 05                	push   $0x5
    46e2:	e8 91 7b 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    46e7:	59                   	pop    %ecx
    46e8:	5b                   	pop    %ebx
    46e9:	6a 00                	push   $0x0
    46eb:	68 c6 c8 00 00       	push   $0xc8c6
    46f0:	e8 2b bb ff ff       	call   220 <read_file>
    46f5:	89 04 24             	mov    %eax,(%esp)
    46f8:	e8 a3 78 00 00       	call   bfa0 <atoi>
    else {
        sleep(5);
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));
    46fd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    4704:	89 c3                	mov    %eax,%ebx
    else {
        sleep(5);
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));
    4706:	e8 f5 bf ff ff       	call   700 <temp_write>
    470b:	83 c4 10             	add    $0x10,%esp
    470e:	85 c0                	test   %eax,%eax
    4710:	75 75                	jne    4787 <test_no_run+0x1d7>
    4712:	31 db                	xor    %ebx,%ebx
    4714:	eb 1f                	jmp    4735 <test_no_run+0x185>
    4716:	8d 76 00             	lea    0x0(%esi),%esi
    4719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4720:	83 ec 08             	sub    $0x8,%esp
    4723:	83 c3 01             	add    $0x1,%ebx
    4726:	68 18 c8 00 00       	push   $0xc818
    472b:	6a 01                	push   $0x1
    472d:	e8 6e 7c 00 00       	call   c3a0 <printf>
    4732:	83 c4 10             	add    $0x10,%esp
    4735:	83 ec 0c             	sub    $0xc,%esp
    4738:	68 ac cd 00 00       	push   $0xcdac
    473d:	e8 1e 77 00 00       	call   be60 <strlen>
    4742:	89 c7                	mov    %eax,%edi
    4744:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    474b:	e8 10 77 00 00       	call   be60 <strlen>
    4750:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4754:	83 c4 10             	add    $0x10,%esp
    4757:	39 d8                	cmp    %ebx,%eax
    4759:	77 c5                	ja     4720 <test_no_run+0x170>
    475b:	83 ec 0c             	sub    $0xc,%esp
    475e:	68 d2 02 00 00       	push   $0x2d2
    4763:	68 30 c8 00 00       	push   $0xc830
    4768:	56                   	push   %esi
    4769:	68 ac f7 00 00       	push   $0xf7ac
    476e:	6a 01                	push   $0x1
    4770:	e8 2b 7c 00 00       	call   c3a0 <printf>
    4775:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    477c:	00 00 00 
    477f:	83 c4 20             	add    $0x20,%esp
    4782:	e9 ab fe ff ff       	jmp    4632 <test_no_run+0x82>

        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
    4787:	83 ec 08             	sub    $0x8,%esp
    478a:	53                   	push   %ebx
    478b:	68 ed c9 00 00       	push   $0xc9ed
    4790:	e8 8b be ff ff       	call   620 <move_proc>
    4795:	83 c4 10             	add    $0x10,%esp
    4798:	85 c0                	test   %eax,%eax
    479a:	75 6b                	jne    4807 <test_no_run+0x257>
    479c:	31 db                	xor    %ebx,%ebx
    479e:	eb 15                	jmp    47b5 <test_no_run+0x205>
    47a0:	83 ec 08             	sub    $0x8,%esp
    47a3:	83 c3 01             	add    $0x1,%ebx
    47a6:	68 18 c8 00 00       	push   $0xc818
    47ab:	6a 01                	push   $0x1
    47ad:	e8 ee 7b 00 00       	call   c3a0 <printf>
    47b2:	83 c4 10             	add    $0x10,%esp
    47b5:	83 ec 0c             	sub    $0xc,%esp
    47b8:	68 e4 f7 00 00       	push   $0xf7e4
    47bd:	e8 9e 76 00 00       	call   be60 <strlen>
    47c2:	89 c7                	mov    %eax,%edi
    47c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    47cb:	e8 90 76 00 00       	call   be60 <strlen>
    47d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    47d4:	83 c4 10             	add    $0x10,%esp
    47d7:	39 d8                	cmp    %ebx,%eax
    47d9:	77 c5                	ja     47a0 <test_no_run+0x1f0>
    47db:	83 ec 0c             	sub    $0xc,%esp
    47de:	68 d5 02 00 00       	push   $0x2d5
    47e3:	68 30 c8 00 00       	push   $0xc830
    47e8:	56                   	push   %esi
    47e9:	68 10 f8 00 00       	push   $0xf810
    47ee:	6a 01                	push   $0x1
    47f0:	e8 ab 7b 00 00       	call   c3a0 <printf>
    47f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    47fc:	00 00 00 
    47ff:	83 c4 20             	add    $0x20,%esp
    4802:	e9 2b fe ff ff       	jmp    4632 <test_no_run+0x82>

        // Check that the process we moved is really in "/cgroup/test1" cgroup.
        ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, pidToMove));
    4807:	83 ec 08             	sub    $0x8,%esp
    480a:	53                   	push   %ebx
    480b:	68 ed c9 00 00       	push   $0xc9ed
    4810:	e8 3b be ff ff       	call   650 <is_pid_in_group>
    4815:	83 c4 10             	add    $0x10,%esp
    4818:	85 c0                	test   %eax,%eax
    481a:	75 6b                	jne    4887 <test_no_run+0x2d7>
    481c:	31 db                	xor    %ebx,%ebx
    481e:	eb 15                	jmp    4835 <test_no_run+0x285>
    4820:	83 ec 08             	sub    $0x8,%esp
    4823:	83 c3 01             	add    $0x1,%ebx
    4826:	68 18 c8 00 00       	push   $0xc818
    482b:	6a 01                	push   $0x1
    482d:	e8 6e 7b 00 00       	call   c3a0 <printf>
    4832:	83 c4 10             	add    $0x10,%esp
    4835:	83 ec 0c             	sub    $0xc,%esp
    4838:	68 64 f8 00 00       	push   $0xf864
    483d:	e8 1e 76 00 00       	call   be60 <strlen>
    4842:	89 c7                	mov    %eax,%edi
    4844:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    484b:	e8 10 76 00 00       	call   be60 <strlen>
    4850:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4854:	83 c4 10             	add    $0x10,%esp
    4857:	39 d8                	cmp    %ebx,%eax
    4859:	77 c5                	ja     4820 <test_no_run+0x270>
    485b:	83 ec 0c             	sub    $0xc,%esp
    485e:	68 d8 02 00 00       	push   $0x2d8
    4863:	68 30 c8 00 00       	push   $0xc830
    4868:	56                   	push   %esi
    4869:	68 94 f8 00 00       	push   $0xf894
    486e:	6a 01                	push   $0x1
    4870:	e8 2b 7b 00 00       	call   c3a0 <printf>
    4875:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    487c:	00 00 00 
    487f:	83 c4 20             	add    $0x20,%esp
    4882:	e9 ab fd ff ff       	jmp    4632 <test_no_run+0x82>

        // Go to sleep to ensure the child process had a chance to be scheduled.
        sleep(10);
    4887:	83 ec 0c             	sub    $0xc,%esp
    488a:	6a 0a                	push   $0xa
    488c:	e8 e7 79 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    4891:	58                   	pop    %eax
    4892:	5a                   	pop    %edx
    4893:	6a 00                	push   $0x0
    4895:	68 c6 c8 00 00       	push   $0xc8c6
    489a:	e8 81 b9 ff ff       	call   220 <read_file>
    489f:	89 04 24             	mov    %eax,(%esp)
    48a2:	e8 f9 76 00 00       	call   bfa0 <atoi>
        // Go to sleep to ensure the child process had a chance to be scheduled.
        sleep(10);

        // Verify that the child process have not ran
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 0);
    48a7:	83 c4 10             	add    $0x10,%esp
    48aa:	85 c0                	test   %eax,%eax
    48ac:	74 28                	je     48d6 <test_no_run+0x326>
    48ae:	83 ec 0c             	sub    $0xc,%esp
    48b1:	68 df 02 00 00       	push   $0x2df
    48b6:	68 30 c8 00 00       	push   $0xc830
    48bb:	6a 00                	push   $0x0
        wait(&wstatus);
        ASSERT_TRUE(wstatus);

        // Verify that child did execute the procudure.
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);
    48bd:	50                   	push   %eax
    48be:	56                   	push   %esi
    48bf:	e8 bc b7 ff ff       	call   80 <print_error>
    48c4:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    48cb:	00 00 00 
    48ce:	83 c4 20             	add    $0x20,%esp
    48d1:	e9 5c fd ff ff       	jmp    4632 <test_no_run+0x82>
        // Verify that the child process have not ran
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 0);

        // Return the child to root cgroup.
        ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, pidToMove));
    48d6:	83 ec 08             	sub    $0x8,%esp
    48d9:	53                   	push   %ebx
    48da:	68 f0 cc 00 00       	push   $0xccf0
    48df:	e8 3c bd ff ff       	call   620 <move_proc>
    48e4:	83 c4 10             	add    $0x10,%esp
    48e7:	85 c0                	test   %eax,%eax
    48e9:	75 6b                	jne    4956 <test_no_run+0x3a6>
    48eb:	31 db                	xor    %ebx,%ebx
    48ed:	eb 15                	jmp    4904 <test_no_run+0x354>
    48ef:	83 ec 08             	sub    $0x8,%esp
    48f2:	83 c3 01             	add    $0x1,%ebx
    48f5:	68 18 c8 00 00       	push   $0xc818
    48fa:	6a 01                	push   $0x1
    48fc:	e8 9f 7a 00 00       	call   c3a0 <printf>
    4901:	83 c4 10             	add    $0x10,%esp
    4904:	83 ec 0c             	sub    $0xc,%esp
    4907:	68 f0 f8 00 00       	push   $0xf8f0
    490c:	e8 4f 75 00 00       	call   be60 <strlen>
    4911:	89 c7                	mov    %eax,%edi
    4913:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    491a:	e8 41 75 00 00       	call   be60 <strlen>
    491f:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4923:	83 c4 10             	add    $0x10,%esp
    4926:	39 d8                	cmp    %ebx,%eax
    4928:	77 c5                	ja     48ef <test_no_run+0x33f>
    492a:	83 ec 0c             	sub    $0xc,%esp
    492d:	68 e2 02 00 00       	push   $0x2e2
    4932:	68 30 c8 00 00       	push   $0xc830
    4937:	56                   	push   %esi
    4938:	68 18 f9 00 00       	push   $0xf918
    493d:	6a 01                	push   $0x1
    493f:	e8 5c 7a 00 00       	call   c3a0 <printf>
    4944:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    494b:	00 00 00 
    494e:	83 c4 20             	add    $0x20,%esp
    4951:	e9 dc fc ff ff       	jmp    4632 <test_no_run+0x82>

        // Check that the child we returned is really in root cgroup.
        ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, pidToMove));
    4956:	57                   	push   %edi
    4957:	57                   	push   %edi
    4958:	53                   	push   %ebx
    4959:	68 f0 cc 00 00       	push   $0xccf0
    495e:	e8 ed bc ff ff       	call   650 <is_pid_in_group>
    4963:	83 c4 10             	add    $0x10,%esp
    4966:	85 c0                	test   %eax,%eax
    4968:	0f 85 a3 00 00 00    	jne    4a11 <test_no_run+0x461>
    496e:	31 db                	xor    %ebx,%ebx
    4970:	eb 1b                	jmp    498d <test_no_run+0x3dd>
    4972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4978:	83 ec 08             	sub    $0x8,%esp
    497b:	83 c3 01             	add    $0x1,%ebx
    497e:	68 18 c8 00 00       	push   $0xc818
    4983:	6a 01                	push   $0x1
    4985:	e8 16 7a 00 00       	call   c3a0 <printf>
    498a:	83 c4 10             	add    $0x10,%esp
    498d:	83 ec 0c             	sub    $0xc,%esp
    4990:	68 6c f9 00 00       	push   $0xf96c
    4995:	e8 c6 74 00 00       	call   be60 <strlen>
    499a:	89 c7                	mov    %eax,%edi
    499c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    49a3:	e8 b8 74 00 00       	call   be60 <strlen>
    49a8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    49ac:	83 c4 10             	add    $0x10,%esp
    49af:	39 d8                	cmp    %ebx,%eax
    49b1:	77 c5                	ja     4978 <test_no_run+0x3c8>
    49b3:	83 ec 0c             	sub    $0xc,%esp
    49b6:	68 e5 02 00 00       	push   $0x2e5
    49bb:	68 30 c8 00 00       	push   $0xc830
    49c0:	56                   	push   %esi
    49c1:	68 9c f9 00 00       	push   $0xf99c
    49c6:	6a 01                	push   $0x1
    49c8:	e8 d3 79 00 00       	call   c3a0 <printf>
    49cd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    49d4:	00 00 00 
    49d7:	83 c4 20             	add    $0x20,%esp
    49da:	e9 53 fc ff ff       	jmp    4632 <test_no_run+0x82>
    int sum = 0;
    int wstatus;

    // Child
    if (pid == 0) {
        pidToMove = getpid();
    49df:	e8 84 78 00 00       	call   c268 <getpid>

        // Save the pid of child in temp file.
        temp_write(pidToMove);
    49e4:	83 ec 0c             	sub    $0xc,%esp
    49e7:	50                   	push   %eax
    49e8:	e8 13 bd ff ff       	call   700 <temp_write>

        // Go to sleep for long period of time.
        sleep(20);
    49ed:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
    49f4:	e8 7f 78 00 00       	call   c278 <sleep>
        for (int i = 0; i < 10; i++) {
            sum += 1;
        }

        // Save sum into temp file.
        temp_write(sum);
    49f9:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
    4a00:	e8 fb bc ff ff       	call   700 <temp_write>
        exit(0);
    4a05:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4a0c:	e8 d7 77 00 00       	call   c1e8 <exit>

        // Check that the child we returned is really in root cgroup.
        ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, pidToMove));

        // Wait for child to exit.
        wait(&wstatus);
    4a11:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    4a14:	83 ec 0c             	sub    $0xc,%esp
    4a17:	50                   	push   %eax
    4a18:	e8 d3 77 00 00       	call   c1f0 <wait>
        ASSERT_TRUE(wstatus);
    4a1d:	83 c4 10             	add    $0x10,%esp
    4a20:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    4a24:	75 71                	jne    4a97 <test_no_run+0x4e7>
    4a26:	31 db                	xor    %ebx,%ebx
    4a28:	eb 1b                	jmp    4a45 <test_no_run+0x495>
    4a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4a30:	83 ec 08             	sub    $0x8,%esp
    4a33:	83 c3 01             	add    $0x1,%ebx
    4a36:	68 18 c8 00 00       	push   $0xc818
    4a3b:	6a 01                	push   $0x1
    4a3d:	e8 5e 79 00 00       	call   c3a0 <printf>
    4a42:	83 c4 10             	add    $0x10,%esp
    4a45:	83 ec 0c             	sub    $0xc,%esp
    4a48:	68 ba cd 00 00       	push   $0xcdba
    4a4d:	e8 0e 74 00 00       	call   be60 <strlen>
    4a52:	89 c7                	mov    %eax,%edi
    4a54:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4a5b:	e8 00 74 00 00       	call   be60 <strlen>
    4a60:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4a64:	83 c4 10             	add    $0x10,%esp
    4a67:	39 d8                	cmp    %ebx,%eax
    4a69:	77 c5                	ja     4a30 <test_no_run+0x480>
    4a6b:	83 ec 0c             	sub    $0xc,%esp
    4a6e:	68 e9 02 00 00       	push   $0x2e9
    4a73:	68 30 c8 00 00       	push   $0xc830
    4a78:	56                   	push   %esi
    4a79:	68 f4 f9 00 00       	push   $0xf9f4
    4a7e:	6a 01                	push   $0x1
    4a80:	e8 1b 79 00 00       	call   c3a0 <printf>
    4a85:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4a8c:	00 00 00 
    4a8f:	83 c4 20             	add    $0x20,%esp
    4a92:	e9 9b fb ff ff       	jmp    4632 <test_no_run+0x82>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    4a97:	51                   	push   %ecx
    4a98:	51                   	push   %ecx
    4a99:	6a 00                	push   $0x0
    4a9b:	68 c6 c8 00 00       	push   $0xc8c6
    4aa0:	e8 7b b7 ff ff       	call   220 <read_file>
    4aa5:	89 04 24             	mov    %eax,(%esp)
    4aa8:	e8 f3 74 00 00       	call   bfa0 <atoi>
        wait(&wstatus);
        ASSERT_TRUE(wstatus);

        // Verify that child did execute the procudure.
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);
    4aad:	83 c4 10             	add    $0x10,%esp
    4ab0:	83 f8 0a             	cmp    $0xa,%eax
    4ab3:	74 14                	je     4ac9 <test_no_run+0x519>
    4ab5:	83 ec 0c             	sub    $0xc,%esp
    4ab8:	68 ed 02 00 00       	push   $0x2ed
    4abd:	68 30 c8 00 00       	push   $0xc830
    4ac2:	6a 0a                	push   $0xa
    4ac4:	e9 f4 fd ff ff       	jmp    48bd <test_no_run+0x30d>

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    4ac9:	e8 02 bd ff ff       	call   7d0 <temp_delete>
    4ace:	85 c0                	test   %eax,%eax
    4ad0:	75 3e                	jne    4b10 <test_no_run+0x560>
    4ad2:	31 db                	xor    %ebx,%ebx
    4ad4:	83 ec 0c             	sub    $0xc,%esp
    4ad7:	68 c2 cd 00 00       	push   $0xcdc2
    4adc:	e8 7f 73 00 00       	call   be60 <strlen>
    4ae1:	89 c7                	mov    %eax,%edi
    4ae3:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4aea:	e8 71 73 00 00       	call   be60 <strlen>
    4aef:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4af3:	83 c4 10             	add    $0x10,%esp
    4af6:	39 d8                	cmp    %ebx,%eax
    4af8:	76 69                	jbe    4b63 <test_no_run+0x5b3>
    4afa:	52                   	push   %edx
    4afb:	52                   	push   %edx
    4afc:	83 c3 01             	add    $0x1,%ebx
    4aff:	68 18 c8 00 00       	push   $0xc818
    4b04:	6a 01                	push   $0x1
    4b06:	e8 95 78 00 00       	call   c3a0 <printf>
    4b0b:	83 c4 10             	add    $0x10,%esp
    4b0e:	eb c4                	jmp    4ad4 <test_no_run+0x524>

        // Disable cpu set controller.
        ASSERT_TRUE(disable_controller(SET_CNT));
    4b10:	83 ec 0c             	sub    $0xc,%esp
    4b13:	31 db                	xor    %ebx,%ebx
    4b15:	6a 02                	push   $0x2
    4b17:	e8 54 b9 ff ff       	call   470 <disable_controller>
    4b1c:	83 c4 10             	add    $0x10,%esp
    4b1f:	85 c0                	test   %eax,%eax
    4b21:	0f 85 0b fb ff ff    	jne    4632 <test_no_run+0x82>
    4b27:	83 ec 0c             	sub    $0xc,%esp
    4b2a:	68 76 cd 00 00       	push   $0xcd76
    4b2f:	e8 2c 73 00 00       	call   be60 <strlen>
    4b34:	89 c7                	mov    %eax,%edi
    4b36:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4b3d:	e8 1e 73 00 00       	call   be60 <strlen>
    4b42:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4b46:	83 c4 10             	add    $0x10,%esp
    4b49:	39 d8                	cmp    %ebx,%eax
    4b4b:	76 42                	jbe    4b8f <test_no_run+0x5df>
    4b4d:	50                   	push   %eax
    4b4e:	50                   	push   %eax
    4b4f:	83 c3 01             	add    $0x1,%ebx
    4b52:	68 18 c8 00 00       	push   $0xc818
    4b57:	6a 01                	push   $0x1
    4b59:	e8 42 78 00 00       	call   c3a0 <printf>
    4b5e:	83 c4 10             	add    $0x10,%esp
    4b61:	eb c4                	jmp    4b27 <test_no_run+0x577>
        // Verify that child did execute the procudure.
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    4b63:	83 ec 0c             	sub    $0xc,%esp
    4b66:	68 f0 02 00 00       	push   $0x2f0
    4b6b:	68 30 c8 00 00       	push   $0xc830
    4b70:	56                   	push   %esi
    4b71:	68 28 fa 00 00       	push   $0xfa28
    4b76:	6a 01                	push   $0x1
    4b78:	e8 23 78 00 00       	call   c3a0 <printf>
    4b7d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4b84:	00 00 00 
    4b87:	83 c4 20             	add    $0x20,%esp
    4b8a:	e9 a3 fa ff ff       	jmp    4632 <test_no_run+0x82>

        // Disable cpu set controller.
        ASSERT_TRUE(disable_controller(SET_CNT));
    4b8f:	83 ec 0c             	sub    $0xc,%esp
    4b92:	68 f3 02 00 00       	push   $0x2f3
    4b97:	68 30 c8 00 00       	push   $0xc830
    4b9c:	56                   	push   %esi
    4b9d:	68 7c f4 00 00       	push   $0xf47c
    4ba2:	6a 01                	push   $0x1
    4ba4:	e8 f7 77 00 00       	call   c3a0 <printf>
    4ba9:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4bb0:	00 00 00 
    4bb3:	83 c4 20             	add    $0x20,%esp
    4bb6:	e9 77 fa ff ff       	jmp    4632 <test_no_run+0x82>
    4bbb:	90                   	nop
    4bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004bc0 <test_setting_freeze>:
    }
}

TEST(test_setting_freeze)
{
    4bc0:	55                   	push   %ebp
    4bc1:	89 e5                	mov    %esp,%ebp
    4bc3:	57                   	push   %edi
    4bc4:	56                   	push   %esi
    4bc5:	53                   	push   %ebx
    4bc6:	31 db                	xor    %ebx,%ebx
    4bc8:	83 ec 14             	sub    $0x14,%esp
    4bcb:	8b 75 08             	mov    0x8(%ebp),%esi
    // Verify frozen start as 0.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 0\nfrozen - 0\n"));
    4bce:	6a 00                	push   $0x0
    4bd0:	68 08 ca 00 00       	push   $0xca08
    4bd5:	e8 46 b6 ff ff       	call   220 <read_file>
    4bda:	5a                   	pop    %edx
    4bdb:	59                   	pop    %ecx
    4bdc:	68 d0 cd 00 00       	push   $0xcdd0
    4be1:	50                   	push   %eax
    4be2:	e8 99 71 00 00       	call   bd80 <strcmp>
    4be7:	83 c4 10             	add    $0x10,%esp
    4bea:	85 c0                	test   %eax,%eax
    4bec:	75 17                	jne    4c05 <test_setting_freeze+0x45>
    4bee:	eb 70                	jmp    4c60 <test_setting_freeze+0xa0>
    4bf0:	83 ec 08             	sub    $0x8,%esp
    4bf3:	83 c3 01             	add    $0x1,%ebx
    4bf6:	68 18 c8 00 00       	push   $0xc818
    4bfb:	6a 01                	push   $0x1
    4bfd:	e8 9e 77 00 00       	call   c3a0 <printf>
    4c02:	83 c4 10             	add    $0x10,%esp
    4c05:	83 ec 0c             	sub    $0xc,%esp
    4c08:	68 60 fa 00 00       	push   $0xfa60
    4c0d:	e8 4e 72 00 00       	call   be60 <strlen>
    4c12:	89 c7                	mov    %eax,%edi
    4c14:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4c1b:	e8 40 72 00 00       	call   be60 <strlen>
    4c20:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4c24:	83 c4 10             	add    $0x10,%esp
    4c27:	39 d8                	cmp    %ebx,%eax
    4c29:	77 c5                	ja     4bf0 <test_setting_freeze+0x30>
    4c2b:	83 ec 0c             	sub    $0xc,%esp
    4c2e:	68 fa 02 00 00       	push   $0x2fa

    // Restore frozen.
    ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));

    // Verify frozen is 0 again.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 0\nfrozen - 0\n"));
    4c33:	68 30 c8 00 00       	push   $0xc830
    4c38:	56                   	push   %esi
    4c39:	68 ac fa 00 00       	push   $0xfaac
    4c3e:	6a 01                	push   $0x1
    4c40:	e8 5b 77 00 00       	call   c3a0 <printf>
    4c45:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4c4c:	00 00 00 
    4c4f:	83 c4 20             	add    $0x20,%esp

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_FRZ, 0), "0\n"));
}
    4c52:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4c55:	5b                   	pop    %ebx
    4c56:	5e                   	pop    %esi
    4c57:	5f                   	pop    %edi
    4c58:	5d                   	pop    %ebp
    4c59:	c3                   	ret    
    4c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Verify frozen start as 0.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 0\nfrozen - 0\n"));

    // Update frozen.
    ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "1"));
    4c60:	83 ec 08             	sub    $0x8,%esp
    4c63:	31 db                	xor    %ebx,%ebx
    4c65:	68 1e cf 00 00       	push   $0xcf1e
    4c6a:	68 ce ca 00 00       	push   $0xcace
    4c6f:	e8 6c b6 ff ff       	call   2e0 <write_file>
    4c74:	83 c4 10             	add    $0x10,%esp
    4c77:	85 c0                	test   %eax,%eax
    4c79:	74 1a                	je     4c95 <test_setting_freeze+0xd5>
    4c7b:	eb 73                	jmp    4cf0 <test_setting_freeze+0x130>
    4c7d:	8d 76 00             	lea    0x0(%esi),%esi
    4c80:	83 ec 08             	sub    $0x8,%esp
    4c83:	83 c3 01             	add    $0x1,%ebx
    4c86:	68 18 c8 00 00       	push   $0xc818
    4c8b:	6a 01                	push   $0x1
    4c8d:	e8 0e 77 00 00       	call   c3a0 <printf>
    4c92:	83 c4 10             	add    $0x10,%esp
    4c95:	83 ec 0c             	sub    $0xc,%esp
    4c98:	68 20 fb 00 00       	push   $0xfb20
    4c9d:	e8 be 71 00 00       	call   be60 <strlen>
    4ca2:	89 c7                	mov    %eax,%edi
    4ca4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4cab:	e8 b0 71 00 00       	call   be60 <strlen>
    4cb0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4cb4:	83 c4 10             	add    $0x10,%esp
    4cb7:	39 d8                	cmp    %ebx,%eax
    4cb9:	77 c5                	ja     4c80 <test_setting_freeze+0xc0>
    4cbb:	83 ec 0c             	sub    $0xc,%esp
    4cbe:	68 fd 02 00 00       	push   $0x2fd
    4cc3:	68 30 c8 00 00       	push   $0xc830
    4cc8:	56                   	push   %esi
    4cc9:	68 40 fb 00 00       	push   $0xfb40
    4cce:	6a 01                	push   $0x1
    4cd0:	e8 cb 76 00 00       	call   c3a0 <printf>
    4cd5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4cdc:	00 00 00 
    4cdf:	83 c4 20             	add    $0x20,%esp
    // Verify frozen is 0 again.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 0\nfrozen - 0\n"));

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_FRZ, 0), "0\n"));
}
    4ce2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4ce5:	5b                   	pop    %ebx
    4ce6:	5e                   	pop    %esi
    4ce7:	5f                   	pop    %edi
    4ce8:	5d                   	pop    %ebp
    4ce9:	c3                   	ret    
    4cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update frozen.
    ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "1"));

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_FRZ, 0), "1\n"));
    4cf0:	83 ec 08             	sub    $0x8,%esp
    4cf3:	6a 00                	push   $0x0
    4cf5:	68 ce ca 00 00       	push   $0xcace
    4cfa:	e8 21 b5 ff ff       	call   220 <read_file>
    4cff:	5b                   	pop    %ebx
    4d00:	5f                   	pop    %edi
    4d01:	68 01 ce 00 00       	push   $0xce01
    4d06:	50                   	push   %eax
    4d07:	31 db                	xor    %ebx,%ebx
    4d09:	e8 72 70 00 00       	call   bd80 <strcmp>
    4d0e:	83 c4 10             	add    $0x10,%esp
    4d11:	85 c0                	test   %eax,%eax
    4d13:	75 20                	jne    4d35 <test_setting_freeze+0x175>
    4d15:	eb 70                	jmp    4d87 <test_setting_freeze+0x1c7>
    4d17:	89 f6                	mov    %esi,%esi
    4d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4d20:	83 ec 08             	sub    $0x8,%esp
    4d23:	83 c3 01             	add    $0x1,%ebx
    4d26:	68 18 c8 00 00       	push   $0xc818
    4d2b:	6a 01                	push   $0x1
    4d2d:	e8 6e 76 00 00       	call   c3a0 <printf>
    4d32:	83 c4 10             	add    $0x10,%esp
    4d35:	83 ec 0c             	sub    $0xc,%esp
    4d38:	68 8c fb 00 00       	push   $0xfb8c
    4d3d:	e8 1e 71 00 00       	call   be60 <strlen>
    4d42:	89 c7                	mov    %eax,%edi
    4d44:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4d4b:	e8 10 71 00 00       	call   be60 <strlen>
    4d50:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4d54:	83 c4 10             	add    $0x10,%esp
    4d57:	39 d8                	cmp    %ebx,%eax
    4d59:	77 c5                	ja     4d20 <test_setting_freeze+0x160>
    4d5b:	83 ec 0c             	sub    $0xc,%esp
    4d5e:	68 00 03 00 00       	push   $0x300
    4d63:	68 30 c8 00 00       	push   $0xc830
    4d68:	56                   	push   %esi
    4d69:	68 b8 fb 00 00       	push   $0xfbb8
    4d6e:	6a 01                	push   $0x1
    4d70:	e8 2b 76 00 00       	call   c3a0 <printf>
    4d75:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4d7c:	00 00 00 
    4d7f:	83 c4 20             	add    $0x20,%esp
    4d82:	e9 cb fe ff ff       	jmp    4c52 <test_setting_freeze+0x92>

    // Check Evenets correctly recorded.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 0\nfrozen - 1\n"));
    4d87:	83 ec 08             	sub    $0x8,%esp
    4d8a:	31 db                	xor    %ebx,%ebx
    4d8c:	6a 00                	push   $0x0
    4d8e:	68 08 ca 00 00       	push   $0xca08
    4d93:	e8 88 b4 ff ff       	call   220 <read_file>
    4d98:	5a                   	pop    %edx
    4d99:	59                   	pop    %ecx
    4d9a:	68 ea cd 00 00       	push   $0xcdea
    4d9f:	50                   	push   %eax
    4da0:	e8 db 6f 00 00       	call   bd80 <strcmp>
    4da5:	83 c4 10             	add    $0x10,%esp
    4da8:	85 c0                	test   %eax,%eax
    4daa:	75 19                	jne    4dc5 <test_setting_freeze+0x205>
    4dac:	eb 69                	jmp    4e17 <test_setting_freeze+0x257>
    4dae:	66 90                	xchg   %ax,%ax
    4db0:	83 ec 08             	sub    $0x8,%esp
    4db3:	83 c3 01             	add    $0x1,%ebx
    4db6:	68 18 c8 00 00       	push   $0xc818
    4dbb:	6a 01                	push   $0x1
    4dbd:	e8 de 75 00 00       	call   c3a0 <printf>
    4dc2:	83 c4 10             	add    $0x10,%esp
    4dc5:	83 ec 0c             	sub    $0xc,%esp
    4dc8:	68 10 fc 00 00       	push   $0xfc10
    4dcd:	e8 8e 70 00 00       	call   be60 <strlen>
    4dd2:	89 c7                	mov    %eax,%edi
    4dd4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4ddb:	e8 80 70 00 00       	call   be60 <strlen>
    4de0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4de4:	83 c4 10             	add    $0x10,%esp
    4de7:	39 d8                	cmp    %ebx,%eax
    4de9:	77 c5                	ja     4db0 <test_setting_freeze+0x1f0>
    4deb:	83 ec 0c             	sub    $0xc,%esp
    4dee:	68 03 03 00 00       	push   $0x303
    4df3:	68 30 c8 00 00       	push   $0xc830
    4df8:	56                   	push   %esi
    4df9:	68 5c fc 00 00       	push   $0xfc5c
    4dfe:	6a 01                	push   $0x1
    4e00:	e8 9b 75 00 00       	call   c3a0 <printf>
    4e05:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4e0c:	00 00 00 
    4e0f:	83 c4 20             	add    $0x20,%esp
    4e12:	e9 3b fe ff ff       	jmp    4c52 <test_setting_freeze+0x92>

    // Restore frozen.
    ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    4e17:	83 ec 08             	sub    $0x8,%esp
    4e1a:	31 db                	xor    %ebx,%ebx
    4e1c:	68 82 cc 00 00       	push   $0xcc82
    4e21:	68 ce ca 00 00       	push   $0xcace
    4e26:	e8 b5 b4 ff ff       	call   2e0 <write_file>
    4e2b:	83 c4 10             	add    $0x10,%esp
    4e2e:	85 c0                	test   %eax,%eax
    4e30:	74 1b                	je     4e4d <test_setting_freeze+0x28d>
    4e32:	eb 6b                	jmp    4e9f <test_setting_freeze+0x2df>
    4e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4e38:	83 ec 08             	sub    $0x8,%esp
    4e3b:	83 c3 01             	add    $0x1,%ebx
    4e3e:	68 18 c8 00 00       	push   $0xc818
    4e43:	6a 01                	push   $0x1
    4e45:	e8 56 75 00 00       	call   c3a0 <printf>
    4e4a:	83 c4 10             	add    $0x10,%esp
    4e4d:	83 ec 0c             	sub    $0xc,%esp
    4e50:	68 d0 fc 00 00       	push   $0xfcd0
    4e55:	e8 06 70 00 00       	call   be60 <strlen>
    4e5a:	89 c7                	mov    %eax,%edi
    4e5c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4e63:	e8 f8 6f 00 00       	call   be60 <strlen>
    4e68:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4e6c:	83 c4 10             	add    $0x10,%esp
    4e6f:	39 d8                	cmp    %ebx,%eax
    4e71:	77 c5                	ja     4e38 <test_setting_freeze+0x278>
    4e73:	83 ec 0c             	sub    $0xc,%esp
    4e76:	68 06 03 00 00       	push   $0x306
    4e7b:	68 30 c8 00 00       	push   $0xc830
    4e80:	56                   	push   %esi
    4e81:	68 f0 fc 00 00       	push   $0xfcf0
    4e86:	6a 01                	push   $0x1
    4e88:	e8 13 75 00 00       	call   c3a0 <printf>
    4e8d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4e94:	00 00 00 
    4e97:	83 c4 20             	add    $0x20,%esp
    4e9a:	e9 b3 fd ff ff       	jmp    4c52 <test_setting_freeze+0x92>

    // Verify frozen is 0 again.
    ASSERT_FALSE(strcmp(read_file(TEST_1_CGROUP_EVENTS, 0), "populated - 0\nfrozen - 0\n"));
    4e9f:	83 ec 08             	sub    $0x8,%esp
    4ea2:	6a 00                	push   $0x0
    4ea4:	68 08 ca 00 00       	push   $0xca08
    4ea9:	e8 72 b3 ff ff       	call   220 <read_file>
    4eae:	5b                   	pop    %ebx
    4eaf:	5f                   	pop    %edi
    4eb0:	68 d0 cd 00 00       	push   $0xcdd0
    4eb5:	50                   	push   %eax
    4eb6:	31 db                	xor    %ebx,%ebx
    4eb8:	e8 c3 6e 00 00       	call   bd80 <strcmp>
    4ebd:	83 c4 10             	add    $0x10,%esp
    4ec0:	85 c0                	test   %eax,%eax
    4ec2:	75 21                	jne    4ee5 <test_setting_freeze+0x325>
    4ec4:	eb 52                	jmp    4f18 <test_setting_freeze+0x358>
    4ec6:	8d 76 00             	lea    0x0(%esi),%esi
    4ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4ed0:	83 ec 08             	sub    $0x8,%esp
    4ed3:	83 c3 01             	add    $0x1,%ebx
    4ed6:	68 18 c8 00 00       	push   $0xc818
    4edb:	6a 01                	push   $0x1
    4edd:	e8 be 74 00 00       	call   c3a0 <printf>
    4ee2:	83 c4 10             	add    $0x10,%esp
    4ee5:	83 ec 0c             	sub    $0xc,%esp
    4ee8:	68 60 fa 00 00       	push   $0xfa60
    4eed:	e8 6e 6f 00 00       	call   be60 <strlen>
    4ef2:	89 c7                	mov    %eax,%edi
    4ef4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4efb:	e8 60 6f 00 00       	call   be60 <strlen>
    4f00:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4f04:	83 c4 10             	add    $0x10,%esp
    4f07:	39 d8                	cmp    %ebx,%eax
    4f09:	77 c5                	ja     4ed0 <test_setting_freeze+0x310>
    4f0b:	83 ec 0c             	sub    $0xc,%esp
    4f0e:	68 09 03 00 00       	push   $0x309
    4f13:	e9 1b fd ff ff       	jmp    4c33 <test_setting_freeze+0x73>

    // Check changes.
    ASSERT_FALSE(strcmp(read_file(TEST_1_SET_FRZ, 0), "0\n"));
    4f18:	83 ec 08             	sub    $0x8,%esp
    4f1b:	31 db                	xor    %ebx,%ebx
    4f1d:	6a 00                	push   $0x0
    4f1f:	68 ce ca 00 00       	push   $0xcace
    4f24:	e8 f7 b2 ff ff       	call   220 <read_file>
    4f29:	5a                   	pop    %edx
    4f2a:	59                   	pop    %ecx
    4f2b:	68 e7 cd 00 00       	push   $0xcde7
    4f30:	50                   	push   %eax
    4f31:	e8 4a 6e 00 00       	call   bd80 <strcmp>
    4f36:	83 c4 10             	add    $0x10,%esp
    4f39:	85 c0                	test   %eax,%eax
    4f3b:	75 20                	jne    4f5d <test_setting_freeze+0x39d>
    4f3d:	e9 10 fd ff ff       	jmp    4c52 <test_setting_freeze+0x92>
    4f42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4f48:	83 ec 08             	sub    $0x8,%esp
    4f4b:	83 c3 01             	add    $0x1,%ebx
    4f4e:	68 18 c8 00 00       	push   $0xc818
    4f53:	6a 01                	push   $0x1
    4f55:	e8 46 74 00 00       	call   c3a0 <printf>
    4f5a:	83 c4 10             	add    $0x10,%esp
    4f5d:	83 ec 0c             	sub    $0xc,%esp
    4f60:	68 3c fd 00 00       	push   $0xfd3c
    4f65:	e8 f6 6e 00 00       	call   be60 <strlen>
    4f6a:	89 c7                	mov    %eax,%edi
    4f6c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    4f73:	e8 e8 6e 00 00       	call   be60 <strlen>
    4f78:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    4f7c:	83 c4 10             	add    $0x10,%esp
    4f7f:	39 d8                	cmp    %ebx,%eax
    4f81:	77 c5                	ja     4f48 <test_setting_freeze+0x388>
    4f83:	83 ec 0c             	sub    $0xc,%esp
    4f86:	68 0c 03 00 00       	push   $0x30c
    4f8b:	68 30 c8 00 00       	push   $0xc830
    4f90:	56                   	push   %esi
    4f91:	68 68 fd 00 00       	push   $0xfd68
    4f96:	6a 01                	push   $0x1
    4f98:	e8 03 74 00 00       	call   c3a0 <printf>
    4f9d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    4fa4:	00 00 00 
    4fa7:	83 c4 20             	add    $0x20,%esp
    4faa:	e9 a3 fc ff ff       	jmp    4c52 <test_setting_freeze+0x92>
    4faf:	90                   	nop

00004fb0 <test_frozen_not_running>:
}

TEST(test_frozen_not_running)
{
    4fb0:	55                   	push   %ebp
    4fb1:	89 e5                	mov    %esp,%ebp
    4fb3:	57                   	push   %edi
    4fb4:	56                   	push   %esi
    4fb5:	53                   	push   %ebx
    4fb6:	31 db                	xor    %ebx,%ebx
    4fb8:	83 ec 24             	sub    $0x24,%esp
    4fbb:	8b 75 08             	mov    0x8(%ebp),%esi
    // Update frozen.
    ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "1"));
    4fbe:	68 1e cf 00 00       	push   $0xcf1e
    4fc3:	68 ce ca 00 00       	push   $0xcace
    4fc8:	e8 13 b3 ff ff       	call   2e0 <write_file>
    4fcd:	83 c4 10             	add    $0x10,%esp
    4fd0:	85 c0                	test   %eax,%eax
    4fd2:	74 21                	je     4ff5 <test_frozen_not_running+0x45>
    4fd4:	eb 7a                	jmp    5050 <test_frozen_not_running+0xa0>
    4fd6:	8d 76 00             	lea    0x0(%esi),%esi
    4fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4fe0:	83 ec 08             	sub    $0x8,%esp
    4fe3:	83 c3 01             	add    $0x1,%ebx
    4fe6:	68 18 c8 00 00       	push   $0xc818
    4feb:	6a 01                	push   $0x1
    4fed:	e8 ae 73 00 00       	call   c3a0 <printf>
    4ff2:	83 c4 10             	add    $0x10,%esp
    4ff5:	83 ec 0c             	sub    $0xc,%esp
    4ff8:	68 20 fb 00 00       	push   $0xfb20
    4ffd:	e8 5e 6e 00 00       	call   be60 <strlen>
    5002:	89 c7                	mov    %eax,%edi
    5004:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    500b:	e8 50 6e 00 00       	call   be60 <strlen>
    5010:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5014:	83 c4 10             	add    $0x10,%esp
    5017:	39 d8                	cmp    %ebx,%eax
    5019:	77 c5                	ja     4fe0 <test_frozen_not_running+0x30>
    501b:	83 ec 0c             	sub    $0xc,%esp
    501e:	68 12 03 00 00       	push   $0x312
    5023:	68 30 c8 00 00       	push   $0xc830
    5028:	56                   	push   %esi
    5029:	68 40 fb 00 00       	push   $0xfb40
    502e:	6a 01                	push   $0x1
    5030:	e8 6b 73 00 00       	call   c3a0 <printf>
    5035:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    503c:	00 00 00 
    503f:	83 c4 20             	add    $0x20,%esp
        ASSERT_TRUE(temp_delete());

        // Update frozen.
        ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    }
}
    5042:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5045:	5b                   	pop    %ebx
    5046:	5e                   	pop    %esi
    5047:	5f                   	pop    %edi
    5048:	5d                   	pop    %ebp
    5049:	c3                   	ret    
    504a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
    // Update frozen.
    ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "1"));

    // Fork here since the process should not be running after we move it inside the cgroup.
    int pid = fork();
    5050:	e8 8b 71 00 00       	call   c1e0 <fork>
    int pidToMove = 0;
    int sum = 0;
    int wstatus;

    // Child
    if (pid == 0) {
    5055:	85 c0                	test   %eax,%eax
    5057:	0f 84 b3 00 00 00    	je     5110 <test_frozen_not_running+0x160>
        ASSERT_TRUE(temp_write(sum));
        exit(0);
    }
    // Father
    else {
        sleep(5);
    505d:	83 ec 0c             	sub    $0xc,%esp
    5060:	6a 05                	push   $0x5
    5062:	e8 11 72 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    5067:	58                   	pop    %eax
    5068:	5a                   	pop    %edx
    5069:	6a 00                	push   $0x0
    506b:	68 c6 c8 00 00       	push   $0xc8c6
    5070:	e8 ab b1 ff ff       	call   220 <read_file>
    5075:	89 04 24             	mov    %eax,(%esp)
    5078:	e8 23 6f 00 00       	call   bfa0 <atoi>
    else {
        sleep(5);
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));
    507d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    5084:	89 c3                	mov    %eax,%ebx
    else {
        sleep(5);
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));
    5086:	e8 75 b6 ff ff       	call   700 <temp_write>
    508b:	83 c4 10             	add    $0x10,%esp
    508e:	85 c0                	test   %eax,%eax
    5090:	0f 85 04 01 00 00    	jne    519a <test_frozen_not_running+0x1ea>
    5096:	31 db                	xor    %ebx,%ebx
    5098:	eb 1b                	jmp    50b5 <test_frozen_not_running+0x105>
    509a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    50a0:	83 ec 08             	sub    $0x8,%esp
    50a3:	83 c3 01             	add    $0x1,%ebx
    50a6:	68 18 c8 00 00       	push   $0xc818
    50ab:	6a 01                	push   $0x1
    50ad:	e8 ee 72 00 00       	call   c3a0 <printf>
    50b2:	83 c4 10             	add    $0x10,%esp
    50b5:	83 ec 0c             	sub    $0xc,%esp
    50b8:	68 ac cd 00 00       	push   $0xcdac
    50bd:	e8 9e 6d 00 00       	call   be60 <strlen>
    50c2:	89 c7                	mov    %eax,%edi
    50c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    50cb:	e8 90 6d 00 00       	call   be60 <strlen>
    50d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    50d4:	83 c4 10             	add    $0x10,%esp
    50d7:	39 d8                	cmp    %ebx,%eax
    50d9:	77 c5                	ja     50a0 <test_frozen_not_running+0xf0>
    50db:	83 ec 0c             	sub    $0xc,%esp
    50de:	68 30 03 00 00       	push   $0x330
    50e3:	68 30 c8 00 00       	push   $0xc830
    50e8:	56                   	push   %esi
    50e9:	68 ac f7 00 00       	push   $0xf7ac
    50ee:	6a 01                	push   $0x1
    50f0:	e8 ab 72 00 00       	call   c3a0 <printf>
    50f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    50fc:	00 00 00 
    50ff:	83 c4 20             	add    $0x20,%esp
        ASSERT_TRUE(temp_delete());

        // Update frozen.
        ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    }
}
    5102:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5105:	5b                   	pop    %ebx
    5106:	5e                   	pop    %esi
    5107:	5f                   	pop    %edi
    5108:	5d                   	pop    %ebp
    5109:	c3                   	ret    
    510a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int sum = 0;
    int wstatus;

    // Child
    if (pid == 0) {
        pidToMove = getpid();
    5110:	e8 53 71 00 00       	call   c268 <getpid>
        // Save the pid of child in temp file.
        ASSERT_TRUE(temp_write(pidToMove));
    5115:	83 ec 0c             	sub    $0xc,%esp
    5118:	31 db                	xor    %ebx,%ebx
    511a:	50                   	push   %eax
    511b:	e8 e0 b5 ff ff       	call   700 <temp_write>
    5120:	83 c4 10             	add    $0x10,%esp
    5123:	85 c0                	test   %eax,%eax
    5125:	74 1e                	je     5145 <test_frozen_not_running+0x195>
    5127:	e9 fb 00 00 00       	jmp    5227 <test_frozen_not_running+0x277>
    512c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5130:	83 ec 08             	sub    $0x8,%esp
    5133:	83 c3 01             	add    $0x1,%ebx
    5136:	68 18 c8 00 00       	push   $0xc818
    513b:	6a 01                	push   $0x1
    513d:	e8 5e 72 00 00       	call   c3a0 <printf>
    5142:	83 c4 10             	add    $0x10,%esp
    5145:	83 ec 0c             	sub    $0xc,%esp
    5148:	68 04 ce 00 00       	push   $0xce04
    514d:	e8 0e 6d 00 00       	call   be60 <strlen>
    5152:	89 c7                	mov    %eax,%edi
    5154:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    515b:	e8 00 6d 00 00       	call   be60 <strlen>
    5160:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5164:	83 c4 10             	add    $0x10,%esp
    5167:	39 d8                	cmp    %ebx,%eax
    5169:	77 c5                	ja     5130 <test_frozen_not_running+0x180>
    516b:	83 ec 0c             	sub    $0xc,%esp
    516e:	68 1e 03 00 00       	push   $0x31e
    5173:	68 30 c8 00 00       	push   $0xc830
    5178:	56                   	push   %esi
    5179:	68 c0 fd 00 00       	push   $0xfdc0
    517e:	6a 01                	push   $0x1
    5180:	e8 1b 72 00 00       	call   c3a0 <printf>
    5185:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    518c:	00 00 00 
    518f:	83 c4 20             	add    $0x20,%esp
        ASSERT_TRUE(temp_delete());

        // Update frozen.
        ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    }
}
    5192:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5195:	5b                   	pop    %ebx
    5196:	5e                   	pop    %esi
    5197:	5f                   	pop    %edi
    5198:	5d                   	pop    %ebp
    5199:	c3                   	ret    
        pidToMove = temp_read(0);
        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));

        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
    519a:	83 ec 08             	sub    $0x8,%esp
    519d:	53                   	push   %ebx
    519e:	68 ed c9 00 00       	push   $0xc9ed
    51a3:	e8 78 b4 ff ff       	call   620 <move_proc>
    51a8:	83 c4 10             	add    $0x10,%esp
    51ab:	85 c0                	test   %eax,%eax
    51ad:	0f 85 04 01 00 00    	jne    52b7 <test_frozen_not_running+0x307>
    51b3:	31 db                	xor    %ebx,%ebx
    51b5:	eb 1e                	jmp    51d5 <test_frozen_not_running+0x225>
    51b7:	89 f6                	mov    %esi,%esi
    51b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    51c0:	83 ec 08             	sub    $0x8,%esp
    51c3:	83 c3 01             	add    $0x1,%ebx
    51c6:	68 18 c8 00 00       	push   $0xc818
    51cb:	6a 01                	push   $0x1
    51cd:	e8 ce 71 00 00       	call   c3a0 <printf>
    51d2:	83 c4 10             	add    $0x10,%esp
    51d5:	83 ec 0c             	sub    $0xc,%esp
    51d8:	68 e4 f7 00 00       	push   $0xf7e4
    51dd:	e8 7e 6c 00 00       	call   be60 <strlen>
    51e2:	89 c7                	mov    %eax,%edi
    51e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    51eb:	e8 70 6c 00 00       	call   be60 <strlen>
    51f0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    51f4:	83 c4 10             	add    $0x10,%esp
    51f7:	39 d8                	cmp    %ebx,%eax
    51f9:	77 c5                	ja     51c0 <test_frozen_not_running+0x210>
    51fb:	83 ec 0c             	sub    $0xc,%esp
    51fe:	68 33 03 00 00       	push   $0x333
    5203:	68 30 c8 00 00       	push   $0xc830
    5208:	56                   	push   %esi
    5209:	68 10 f8 00 00       	push   $0xf810
    520e:	6a 01                	push   $0x1
    5210:	e8 8b 71 00 00       	call   c3a0 <printf>
    5215:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    521c:	00 00 00 
    521f:	83 c4 20             	add    $0x20,%esp
    5222:	e9 1b fe ff ff       	jmp    5042 <test_frozen_not_running+0x92>
    if (pid == 0) {
        pidToMove = getpid();
        // Save the pid of child in temp file.
        ASSERT_TRUE(temp_write(pidToMove));
        // Go to sleep for long period of time.
        sleep(20);
    5227:	83 ec 0c             	sub    $0xc,%esp
    522a:	6a 14                	push   $0x14
    522c:	e8 47 70 00 00       	call   c278 <sleep>
        // should not be executed.
        for (int i = 0; i < 10; i++) {
            sum += 1;
        }
        // Save sum into temp file.
        ASSERT_TRUE(temp_write(sum));
    5231:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
    5238:	e8 c3 b4 ff ff       	call   700 <temp_write>
    523d:	83 c4 10             	add    $0x10,%esp
    5240:	85 c0                	test   %eax,%eax
    5242:	0f 85 3f 02 00 00    	jne    5487 <test_frozen_not_running+0x4d7>
    5248:	31 db                	xor    %ebx,%ebx
    524a:	eb 19                	jmp    5265 <test_frozen_not_running+0x2b5>
    524c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5250:	83 ec 08             	sub    $0x8,%esp
    5253:	83 c3 01             	add    $0x1,%ebx
    5256:	68 18 c8 00 00       	push   $0xc818
    525b:	6a 01                	push   $0x1
    525d:	e8 3e 71 00 00       	call   c3a0 <printf>
    5262:	83 c4 10             	add    $0x10,%esp
    5265:	83 ec 0c             	sub    $0xc,%esp
    5268:	68 1a ce 00 00       	push   $0xce1a
    526d:	e8 ee 6b 00 00       	call   be60 <strlen>
    5272:	89 c7                	mov    %eax,%edi
    5274:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    527b:	e8 e0 6b 00 00       	call   be60 <strlen>
    5280:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5284:	83 c4 10             	add    $0x10,%esp
    5287:	39 d8                	cmp    %ebx,%eax
    5289:	77 c5                	ja     5250 <test_frozen_not_running+0x2a0>
    528b:	83 ec 0c             	sub    $0xc,%esp
    528e:	68 27 03 00 00       	push   $0x327
    5293:	68 30 c8 00 00       	push   $0xc830
    5298:	56                   	push   %esi
    5299:	68 00 fe 00 00       	push   $0xfe00
    529e:	6a 01                	push   $0x1
    52a0:	e8 fb 70 00 00       	call   c3a0 <printf>
    52a5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    52ac:	00 00 00 
    52af:	83 c4 20             	add    $0x20,%esp
    52b2:	e9 8b fd ff ff       	jmp    5042 <test_frozen_not_running+0x92>

        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));

        // Check that the process we moved is really in "/cgroup/test1" cgroup.
        ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, pidToMove));
    52b7:	83 ec 08             	sub    $0x8,%esp
    52ba:	53                   	push   %ebx
    52bb:	68 ed c9 00 00       	push   $0xc9ed
    52c0:	e8 8b b3 ff ff       	call   650 <is_pid_in_group>
    52c5:	83 c4 10             	add    $0x10,%esp
    52c8:	85 c0                	test   %eax,%eax
    52ca:	75 6b                	jne    5337 <test_frozen_not_running+0x387>
    52cc:	31 db                	xor    %ebx,%ebx
    52ce:	eb 15                	jmp    52e5 <test_frozen_not_running+0x335>
    52d0:	83 ec 08             	sub    $0x8,%esp
    52d3:	83 c3 01             	add    $0x1,%ebx
    52d6:	68 18 c8 00 00       	push   $0xc818
    52db:	6a 01                	push   $0x1
    52dd:	e8 be 70 00 00       	call   c3a0 <printf>
    52e2:	83 c4 10             	add    $0x10,%esp
    52e5:	83 ec 0c             	sub    $0xc,%esp
    52e8:	68 64 f8 00 00       	push   $0xf864
    52ed:	e8 6e 6b 00 00       	call   be60 <strlen>
    52f2:	89 c7                	mov    %eax,%edi
    52f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    52fb:	e8 60 6b 00 00       	call   be60 <strlen>
    5300:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5304:	83 c4 10             	add    $0x10,%esp
    5307:	39 d8                	cmp    %ebx,%eax
    5309:	77 c5                	ja     52d0 <test_frozen_not_running+0x320>
    530b:	83 ec 0c             	sub    $0xc,%esp
    530e:	68 36 03 00 00       	push   $0x336
    5313:	68 30 c8 00 00       	push   $0xc830
    5318:	56                   	push   %esi
    5319:	68 94 f8 00 00       	push   $0xf894
    531e:	6a 01                	push   $0x1
    5320:	e8 7b 70 00 00       	call   c3a0 <printf>
    5325:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    532c:	00 00 00 
    532f:	83 c4 20             	add    $0x20,%esp
    5332:	e9 0b fd ff ff       	jmp    5042 <test_frozen_not_running+0x92>

        // Go to sleep to ensure the child process had a chance to be scheduled.
        sleep(10);
    5337:	83 ec 0c             	sub    $0xc,%esp
    533a:	6a 0a                	push   $0xa
    533c:	e8 37 6f 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    5341:	5f                   	pop    %edi
    5342:	58                   	pop    %eax
    5343:	6a 00                	push   $0x0
    5345:	68 c6 c8 00 00       	push   $0xc8c6
    534a:	e8 d1 ae ff ff       	call   220 <read_file>
    534f:	89 04 24             	mov    %eax,(%esp)
    5352:	e8 49 6c 00 00       	call   bfa0 <atoi>
        // Go to sleep to ensure the child process had a chance to be scheduled.
        sleep(10);

        // Verify that the child process have not ran
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 0);
    5357:	83 c4 10             	add    $0x10,%esp
    535a:	85 c0                	test   %eax,%eax
    535c:	74 28                	je     5386 <test_frozen_not_running+0x3d6>
    535e:	83 ec 0c             	sub    $0xc,%esp
    5361:	68 3d 03 00 00       	push   $0x33d
    5366:	68 30 c8 00 00       	push   $0xc830
    536b:	6a 00                	push   $0x0
        wait(&wstatus);
        ASSERT_TRUE(wstatus);

        // Verify that child did execute the procudure.
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);
    536d:	50                   	push   %eax
    536e:	56                   	push   %esi
    536f:	e8 0c ad ff ff       	call   80 <print_error>
    5374:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    537b:	00 00 00 
    537e:	83 c4 20             	add    $0x20,%esp
    5381:	e9 bc fc ff ff       	jmp    5042 <test_frozen_not_running+0x92>
        // Verify that the child process have not ran
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 0);

        // Return the child to root cgroup.
        ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, pidToMove));
    5386:	83 ec 08             	sub    $0x8,%esp
    5389:	53                   	push   %ebx
    538a:	68 f0 cc 00 00       	push   $0xccf0
    538f:	e8 8c b2 ff ff       	call   620 <move_proc>
    5394:	83 c4 10             	add    $0x10,%esp
    5397:	85 c0                	test   %eax,%eax
    5399:	75 6c                	jne    5407 <test_frozen_not_running+0x457>
    539b:	31 db                	xor    %ebx,%ebx
    539d:	eb 16                	jmp    53b5 <test_frozen_not_running+0x405>
    539f:	90                   	nop
    53a0:	83 ec 08             	sub    $0x8,%esp
    53a3:	83 c3 01             	add    $0x1,%ebx
    53a6:	68 18 c8 00 00       	push   $0xc818
    53ab:	6a 01                	push   $0x1
    53ad:	e8 ee 6f 00 00       	call   c3a0 <printf>
    53b2:	83 c4 10             	add    $0x10,%esp
    53b5:	83 ec 0c             	sub    $0xc,%esp
    53b8:	68 f0 f8 00 00       	push   $0xf8f0
    53bd:	e8 9e 6a 00 00       	call   be60 <strlen>
    53c2:	89 c7                	mov    %eax,%edi
    53c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    53cb:	e8 90 6a 00 00       	call   be60 <strlen>
    53d0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    53d4:	83 c4 10             	add    $0x10,%esp
    53d7:	39 d8                	cmp    %ebx,%eax
    53d9:	77 c5                	ja     53a0 <test_frozen_not_running+0x3f0>
    53db:	83 ec 0c             	sub    $0xc,%esp
    53de:	68 40 03 00 00       	push   $0x340
    53e3:	68 30 c8 00 00       	push   $0xc830
    53e8:	56                   	push   %esi
    53e9:	68 18 f9 00 00       	push   $0xf918
    53ee:	6a 01                	push   $0x1
    53f0:	e8 ab 6f 00 00       	call   c3a0 <printf>
    53f5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    53fc:	00 00 00 
    53ff:	83 c4 20             	add    $0x20,%esp
    5402:	e9 3b fc ff ff       	jmp    5042 <test_frozen_not_running+0x92>

        // Check that the child we returned is really in root cgroup.
        ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, pidToMove));
    5407:	83 ec 08             	sub    $0x8,%esp
    540a:	53                   	push   %ebx
    540b:	68 f0 cc 00 00       	push   $0xccf0
    5410:	31 db                	xor    %ebx,%ebx
    5412:	e8 39 b2 ff ff       	call   650 <is_pid_in_group>
    5417:	83 c4 10             	add    $0x10,%esp
    541a:	85 c0                	test   %eax,%eax
    541c:	74 17                	je     5435 <test_frozen_not_running+0x485>
    541e:	eb 71                	jmp    5491 <test_frozen_not_running+0x4e1>
    5420:	83 ec 08             	sub    $0x8,%esp
    5423:	83 c3 01             	add    $0x1,%ebx
    5426:	68 18 c8 00 00       	push   $0xc818
    542b:	6a 01                	push   $0x1
    542d:	e8 6e 6f 00 00       	call   c3a0 <printf>
    5432:	83 c4 10             	add    $0x10,%esp
    5435:	83 ec 0c             	sub    $0xc,%esp
    5438:	68 6c f9 00 00       	push   $0xf96c
    543d:	e8 1e 6a 00 00       	call   be60 <strlen>
    5442:	89 c7                	mov    %eax,%edi
    5444:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    544b:	e8 10 6a 00 00       	call   be60 <strlen>
    5450:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5454:	83 c4 10             	add    $0x10,%esp
    5457:	39 d8                	cmp    %ebx,%eax
    5459:	77 c5                	ja     5420 <test_frozen_not_running+0x470>
    545b:	83 ec 0c             	sub    $0xc,%esp
    545e:	68 43 03 00 00       	push   $0x343
    5463:	68 30 c8 00 00       	push   $0xc830
    5468:	56                   	push   %esi
    5469:	68 9c f9 00 00       	push   $0xf99c
    546e:	6a 01                	push   $0x1
    5470:	e8 2b 6f 00 00       	call   c3a0 <printf>
    5475:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    547c:	00 00 00 
    547f:	83 c4 20             	add    $0x20,%esp
    5482:	e9 bb fb ff ff       	jmp    5042 <test_frozen_not_running+0x92>
        for (int i = 0; i < 10; i++) {
            sum += 1;
        }
        // Save sum into temp file.
        ASSERT_TRUE(temp_write(sum));
        exit(0);
    5487:	83 ec 0c             	sub    $0xc,%esp
    548a:	6a 00                	push   $0x0
    548c:	e8 57 6d 00 00       	call   c1e8 <exit>

        // Check that the child we returned is really in root cgroup.
        ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, pidToMove));

        // Wait for child to exit.
        wait(&wstatus);
    5491:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    5494:	83 ec 0c             	sub    $0xc,%esp
    5497:	50                   	push   %eax
    5498:	e8 53 6d 00 00       	call   c1f0 <wait>
        ASSERT_TRUE(wstatus);
    549d:	83 c4 10             	add    $0x10,%esp
    54a0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    54a4:	75 71                	jne    5517 <test_frozen_not_running+0x567>
    54a6:	31 db                	xor    %ebx,%ebx
    54a8:	eb 1b                	jmp    54c5 <test_frozen_not_running+0x515>
    54aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    54b0:	83 ec 08             	sub    $0x8,%esp
    54b3:	83 c3 01             	add    $0x1,%ebx
    54b6:	68 18 c8 00 00       	push   $0xc818
    54bb:	6a 01                	push   $0x1
    54bd:	e8 de 6e 00 00       	call   c3a0 <printf>
    54c2:	83 c4 10             	add    $0x10,%esp
    54c5:	83 ec 0c             	sub    $0xc,%esp
    54c8:	68 ba cd 00 00       	push   $0xcdba
    54cd:	e8 8e 69 00 00       	call   be60 <strlen>
    54d2:	89 c7                	mov    %eax,%edi
    54d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    54db:	e8 80 69 00 00       	call   be60 <strlen>
    54e0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    54e4:	83 c4 10             	add    $0x10,%esp
    54e7:	39 d8                	cmp    %ebx,%eax
    54e9:	77 c5                	ja     54b0 <test_frozen_not_running+0x500>
    54eb:	83 ec 0c             	sub    $0xc,%esp
    54ee:	68 47 03 00 00       	push   $0x347
    54f3:	68 30 c8 00 00       	push   $0xc830
    54f8:	56                   	push   %esi
    54f9:	68 f4 f9 00 00       	push   $0xf9f4
    54fe:	6a 01                	push   $0x1
    5500:	e8 9b 6e 00 00       	call   c3a0 <printf>
    5505:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    550c:	00 00 00 
    550f:	83 c4 20             	add    $0x20,%esp
    5512:	e9 2b fb ff ff       	jmp    5042 <test_frozen_not_running+0x92>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    5517:	53                   	push   %ebx
    5518:	53                   	push   %ebx
    5519:	6a 00                	push   $0x0
    551b:	68 c6 c8 00 00       	push   $0xc8c6
    5520:	e8 fb ac ff ff       	call   220 <read_file>
    5525:	89 04 24             	mov    %eax,(%esp)
    5528:	e8 73 6a 00 00       	call   bfa0 <atoi>
        wait(&wstatus);
        ASSERT_TRUE(wstatus);

        // Verify that child did execute the procudure.
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);
    552d:	83 c4 10             	add    $0x10,%esp
    5530:	83 f8 0a             	cmp    $0xa,%eax
    5533:	74 14                	je     5549 <test_frozen_not_running+0x599>
    5535:	83 ec 0c             	sub    $0xc,%esp
    5538:	68 4b 03 00 00       	push   $0x34b
    553d:	68 30 c8 00 00       	push   $0xc830
    5542:	6a 0a                	push   $0xa
    5544:	e9 24 fe ff ff       	jmp    536d <test_frozen_not_running+0x3bd>

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    5549:	e8 82 b2 ff ff       	call   7d0 <temp_delete>
    554e:	85 c0                	test   %eax,%eax
    5550:	75 3e                	jne    5590 <test_frozen_not_running+0x5e0>
    5552:	31 db                	xor    %ebx,%ebx
    5554:	83 ec 0c             	sub    $0xc,%esp
    5557:	68 c2 cd 00 00       	push   $0xcdc2
    555c:	e8 ff 68 00 00       	call   be60 <strlen>
    5561:	89 c7                	mov    %eax,%edi
    5563:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    556a:	e8 f1 68 00 00       	call   be60 <strlen>
    556f:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5573:	83 c4 10             	add    $0x10,%esp
    5576:	39 d8                	cmp    %ebx,%eax
    5578:	76 70                	jbe    55ea <test_frozen_not_running+0x63a>
    557a:	51                   	push   %ecx
    557b:	51                   	push   %ecx
    557c:	83 c3 01             	add    $0x1,%ebx
    557f:	68 18 c8 00 00       	push   $0xc818
    5584:	6a 01                	push   $0x1
    5586:	e8 15 6e 00 00       	call   c3a0 <printf>
    558b:	83 c4 10             	add    $0x10,%esp
    558e:	eb c4                	jmp    5554 <test_frozen_not_running+0x5a4>

        // Update frozen.
        ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    5590:	52                   	push   %edx
    5591:	52                   	push   %edx
    5592:	31 db                	xor    %ebx,%ebx
    5594:	68 82 cc 00 00       	push   $0xcc82
    5599:	68 ce ca 00 00       	push   $0xcace
    559e:	e8 3d ad ff ff       	call   2e0 <write_file>
    55a3:	83 c4 10             	add    $0x10,%esp
    55a6:	85 c0                	test   %eax,%eax
    55a8:	0f 85 94 fa ff ff    	jne    5042 <test_frozen_not_running+0x92>
    55ae:	83 ec 0c             	sub    $0xc,%esp
    55b1:	68 d0 fc 00 00       	push   $0xfcd0
    55b6:	e8 a5 68 00 00       	call   be60 <strlen>
    55bb:	89 c7                	mov    %eax,%edi
    55bd:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    55c4:	e8 97 68 00 00       	call   be60 <strlen>
    55c9:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    55cd:	83 c4 10             	add    $0x10,%esp
    55d0:	39 d8                	cmp    %ebx,%eax
    55d2:	76 42                	jbe    5616 <test_frozen_not_running+0x666>
    55d4:	50                   	push   %eax
    55d5:	50                   	push   %eax
    55d6:	83 c3 01             	add    $0x1,%ebx
    55d9:	68 18 c8 00 00       	push   $0xc818
    55de:	6a 01                	push   $0x1
    55e0:	e8 bb 6d 00 00       	call   c3a0 <printf>
    55e5:	83 c4 10             	add    $0x10,%esp
    55e8:	eb c4                	jmp    55ae <test_frozen_not_running+0x5fe>
        // Verify that child did execute the procudure.
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    55ea:	83 ec 0c             	sub    $0xc,%esp
    55ed:	68 4e 03 00 00       	push   $0x34e
    55f2:	68 30 c8 00 00       	push   $0xc830
    55f7:	56                   	push   %esi
    55f8:	68 28 fa 00 00       	push   $0xfa28
    55fd:	6a 01                	push   $0x1
    55ff:	e8 9c 6d 00 00       	call   c3a0 <printf>
    5604:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    560b:	00 00 00 
    560e:	83 c4 20             	add    $0x20,%esp
    5611:	e9 2c fa ff ff       	jmp    5042 <test_frozen_not_running+0x92>

        // Update frozen.
        ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    5616:	83 ec 0c             	sub    $0xc,%esp
    5619:	68 51 03 00 00       	push   $0x351
    561e:	68 30 c8 00 00       	push   $0xc830
    5623:	56                   	push   %esi
    5624:	68 f0 fc 00 00       	push   $0xfcf0
    5629:	6a 01                	push   $0x1
    562b:	e8 70 6d 00 00       	call   c3a0 <printf>
    5630:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5637:	00 00 00 
    563a:	83 c4 20             	add    $0x20,%esp
    563d:	e9 00 fa ff ff       	jmp    5042 <test_frozen_not_running+0x92>
    5642:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    5649:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00005650 <test_mem_current>:
    }
}

//In this following memory accounting tests we move only single process to "/cgroup/test1" in order to simplify the testing.
TEST(test_mem_current) {
    5650:	55                   	push   %ebp
    5651:	89 e5                	mov    %esp,%ebp
    5653:	56                   	push   %esi
    5654:	53                   	push   %ebx
  // Save current process memory size.
  char proc_mem[10];
  itoa(proc_mem, getmem());
    5655:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
        ASSERT_TRUE(write_file(TEST_1_SET_FRZ, "0"));
    }
}

//In this following memory accounting tests we move only single process to "/cgroup/test1" in order to simplify the testing.
TEST(test_mem_current) {
    5658:	83 ec 20             	sub    $0x20,%esp
  // Save current process memory size.
  char proc_mem[10];
  itoa(proc_mem, getmem());
    565b:	e8 70 6c 00 00       	call   c2d0 <getmem>
    5660:	83 ec 08             	sub    $0x8,%esp
    5663:	50                   	push   %eax
    5664:	53                   	push   %ebx
    5665:	e8 a6 69 00 00       	call   c010 <itoa>
  strcat(proc_mem, "\n");
    566a:	59                   	pop    %ecx
    566b:	5e                   	pop    %esi
    566c:	68 e1 d0 00 00       	push   $0xd0e1
    5671:	53                   	push   %ebx
    5672:	e8 49 6a 00 00       	call   c0c0 <strcat>
  // Buffer to read contents from memory file.
  char saved_mem[10];

  // Move the current process to "/cgroup/test1" cgroup.
  ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    5677:	e8 ec 6b 00 00       	call   c268 <getpid>
    567c:	5a                   	pop    %edx
    567d:	59                   	pop    %ecx
    567e:	50                   	push   %eax
    567f:	68 ed c9 00 00       	push   $0xc9ed
    5684:	e8 97 af ff ff       	call   620 <move_proc>
    5689:	83 c4 10             	add    $0x10,%esp
    568c:	85 c0                	test   %eax,%eax
    568e:	75 78                	jne    5708 <test_mem_current+0xb8>
    5690:	31 db                	xor    %ebx,%ebx
    5692:	eb 19                	jmp    56ad <test_mem_current+0x5d>
    5694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5698:	83 ec 08             	sub    $0x8,%esp
    569b:	83 c3 01             	add    $0x1,%ebx
    569e:	68 18 c8 00 00       	push   $0xc818
    56a3:	6a 01                	push   $0x1
    56a5:	e8 f6 6c 00 00       	call   c3a0 <printf>
    56aa:	83 c4 10             	add    $0x10,%esp
    56ad:	83 ec 0c             	sub    $0xc,%esp
    56b0:	68 c0 ec 00 00       	push   $0xecc0
    56b5:	e8 a6 67 00 00       	call   be60 <strlen>
    56ba:	89 c6                	mov    %eax,%esi
    56bc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    56c3:	e8 98 67 00 00       	call   be60 <strlen>
    56c8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    56cc:	83 c4 10             	add    $0x10,%esp
    56cf:	39 d8                	cmp    %ebx,%eax
    56d1:	77 c5                	ja     5698 <test_mem_current+0x48>
    56d3:	83 ec 0c             	sub    $0xc,%esp
    56d6:	68 5f 03 00 00       	push   $0x35f
    56db:	68 30 c8 00 00       	push   $0xc830
    56e0:	ff 75 08             	pushl  0x8(%ebp)
    56e3:	68 04 ef 00 00       	push   $0xef04
    56e8:	6a 01                	push   $0x1
    56ea:	e8 b1 6c 00 00       	call   c3a0 <printf>
    56ef:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    56f6:	00 00 00 
    56f9:	83 c4 20             	add    $0x20,%esp
  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    56fc:	8d 65 f8             	lea    -0x8(%ebp),%esp
    56ff:	5b                   	pop    %ebx
    5700:	5e                   	pop    %esi
    5701:	5d                   	pop    %ebp
    5702:	c3                   	ret    
    5703:	90                   	nop
    5704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // Move the current process to "/cgroup/test1" cgroup.
  ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));

  // Check that the process we moved is really in "/cgroup/test1" cgroup.
  ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    5708:	e8 5b 6b 00 00       	call   c268 <getpid>
    570d:	83 ec 08             	sub    $0x8,%esp
    5710:	50                   	push   %eax
    5711:	68 ed c9 00 00       	push   $0xc9ed
    5716:	e8 35 af ff ff       	call   650 <is_pid_in_group>
    571b:	83 c4 10             	add    $0x10,%esp
    571e:	85 c0                	test   %eax,%eax
    5720:	75 7e                	jne    57a0 <test_mem_current+0x150>
    5722:	31 db                	xor    %ebx,%ebx
    5724:	eb 1f                	jmp    5745 <test_mem_current+0xf5>
    5726:	8d 76 00             	lea    0x0(%esi),%esi
    5729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    5730:	83 ec 08             	sub    $0x8,%esp
    5733:	83 c3 01             	add    $0x1,%ebx
    5736:	68 18 c8 00 00       	push   $0xc818
    573b:	6a 01                	push   $0x1
    573d:	e8 5e 6c 00 00       	call   c3a0 <printf>
    5742:	83 c4 10             	add    $0x10,%esp
    5745:	83 ec 0c             	sub    $0xc,%esp
    5748:	68 40 ed 00 00       	push   $0xed40
    574d:	e8 0e 67 00 00       	call   be60 <strlen>
    5752:	89 c6                	mov    %eax,%esi
    5754:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    575b:	e8 00 67 00 00       	call   be60 <strlen>
    5760:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5764:	83 c4 10             	add    $0x10,%esp
    5767:	39 d8                	cmp    %ebx,%eax
    5769:	77 c5                	ja     5730 <test_mem_current+0xe0>
    576b:	83 ec 0c             	sub    $0xc,%esp
    576e:	68 62 03 00 00       	push   $0x362
    5773:	68 30 c8 00 00       	push   $0xc830
    5778:	ff 75 08             	pushl  0x8(%ebp)
    577b:	68 58 ef 00 00       	push   $0xef58
    5780:	6a 01                	push   $0x1
    5782:	e8 19 6c 00 00       	call   c3a0 <printf>
    5787:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    578e:	00 00 00 
    5791:	83 c4 20             	add    $0x20,%esp
  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    5794:	8d 65 f8             	lea    -0x8(%ebp),%esp
    5797:	5b                   	pop    %ebx
    5798:	5e                   	pop    %esi
    5799:	5d                   	pop    %ebp
    579a:	c3                   	ret    
    579b:	90                   	nop
    579c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // Check that the process we moved is really in "/cgroup/test1" cgroup.
  ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));

  // Read the contents of current memory file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_CURRENT, 0));
    57a0:	83 ec 08             	sub    $0x8,%esp
    57a3:	8d 75 ee             	lea    -0x12(%ebp),%esi
    57a6:	6a 00                	push   $0x0
    57a8:	68 ea ca 00 00       	push   $0xcaea
    57ad:	e8 6e aa ff ff       	call   220 <read_file>
    57b2:	5a                   	pop    %edx
    57b3:	59                   	pop    %ecx
    57b4:	50                   	push   %eax
    57b5:	56                   	push   %esi
    57b6:	e8 95 65 00 00       	call   bd50 <strcpy>

  // Check memory usaged updated correctly.
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));
    57bb:	58                   	pop    %eax
    57bc:	5a                   	pop    %edx
    57bd:	53                   	push   %ebx
    57be:	56                   	push   %esi
    57bf:	31 db                	xor    %ebx,%ebx
    57c1:	e8 ba 65 00 00       	call   bd80 <strcmp>
    57c6:	83 c4 10             	add    $0x10,%esp
    57c9:	85 c0                	test   %eax,%eax
    57cb:	75 18                	jne    57e5 <test_mem_current+0x195>
    57cd:	eb 6a                	jmp    5839 <test_mem_current+0x1e9>
    57cf:	90                   	nop
    57d0:	83 ec 08             	sub    $0x8,%esp
    57d3:	83 c3 01             	add    $0x1,%ebx
    57d6:	68 18 c8 00 00       	push   $0xc818
    57db:	6a 01                	push   $0x1
    57dd:	e8 be 6b 00 00       	call   c3a0 <printf>
    57e2:	83 c4 10             	add    $0x10,%esp
    57e5:	83 ec 0c             	sub    $0xc,%esp
    57e8:	68 2a ce 00 00       	push   $0xce2a
    57ed:	e8 6e 66 00 00       	call   be60 <strlen>
    57f2:	89 c6                	mov    %eax,%esi
    57f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    57fb:	e8 60 66 00 00       	call   be60 <strlen>
    5800:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5804:	83 c4 10             	add    $0x10,%esp
    5807:	39 d8                	cmp    %ebx,%eax
    5809:	77 c5                	ja     57d0 <test_mem_current+0x180>
    580b:	83 ec 0c             	sub    $0xc,%esp
    580e:	68 68 03 00 00       	push   $0x368
    5813:	68 30 c8 00 00       	push   $0xc830
    5818:	ff 75 08             	pushl  0x8(%ebp)
    581b:	68 3c fe 00 00       	push   $0xfe3c
    5820:	6a 01                	push   $0x1
    5822:	e8 79 6b 00 00       	call   c3a0 <printf>
    5827:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    582e:	00 00 00 
    5831:	83 c4 20             	add    $0x20,%esp
    5834:	e9 c3 fe ff ff       	jmp    56fc <test_mem_current+0xac>

  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    5839:	e8 2a 6a 00 00       	call   c268 <getpid>
    583e:	83 ec 08             	sub    $0x8,%esp
    5841:	31 db                	xor    %ebx,%ebx
    5843:	50                   	push   %eax
    5844:	68 f0 cc 00 00       	push   $0xccf0
    5849:	e8 d2 ad ff ff       	call   620 <move_proc>
    584e:	83 c4 10             	add    $0x10,%esp
    5851:	85 c0                	test   %eax,%eax
    5853:	74 20                	je     5875 <test_mem_current+0x225>
    5855:	eb 72                	jmp    58c9 <test_mem_current+0x279>
    5857:	89 f6                	mov    %esi,%esi
    5859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    5860:	83 ec 08             	sub    $0x8,%esp
    5863:	83 c3 01             	add    $0x1,%ebx
    5866:	68 18 c8 00 00       	push   $0xc818
    586b:	6a 01                	push   $0x1
    586d:	e8 2e 6b 00 00       	call   c3a0 <printf>
    5872:	83 c4 10             	add    $0x10,%esp
    5875:	83 ec 0c             	sub    $0xc,%esp
    5878:	68 b0 ef 00 00       	push   $0xefb0
    587d:	e8 de 65 00 00       	call   be60 <strlen>
    5882:	89 c6                	mov    %eax,%esi
    5884:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    588b:	e8 d0 65 00 00       	call   be60 <strlen>
    5890:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5894:	83 c4 10             	add    $0x10,%esp
    5897:	39 d8                	cmp    %ebx,%eax
    5899:	77 c5                	ja     5860 <test_mem_current+0x210>
    589b:	83 ec 0c             	sub    $0xc,%esp
    589e:	68 6b 03 00 00       	push   $0x36b
    58a3:	68 30 c8 00 00       	push   $0xc830
    58a8:	ff 75 08             	pushl  0x8(%ebp)
    58ab:	68 d8 ef 00 00       	push   $0xefd8
    58b0:	6a 01                	push   $0x1
    58b2:	e8 e9 6a 00 00       	call   c3a0 <printf>
    58b7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    58be:	00 00 00 
    58c1:	83 c4 20             	add    $0x20,%esp
    58c4:	e9 33 fe ff ff       	jmp    56fc <test_mem_current+0xac>

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    58c9:	e8 9a 69 00 00       	call   c268 <getpid>
    58ce:	83 ec 08             	sub    $0x8,%esp
    58d1:	31 db                	xor    %ebx,%ebx
    58d3:	50                   	push   %eax
    58d4:	68 f0 cc 00 00       	push   $0xccf0
    58d9:	e8 72 ad ff ff       	call   650 <is_pid_in_group>
    58de:	83 c4 10             	add    $0x10,%esp
    58e1:	85 c0                	test   %eax,%eax
    58e3:	74 20                	je     5905 <test_mem_current+0x2b5>
    58e5:	e9 12 fe ff ff       	jmp    56fc <test_mem_current+0xac>
    58ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    58f0:	83 ec 08             	sub    $0x8,%esp
    58f3:	83 c3 01             	add    $0x1,%ebx
    58f6:	68 18 c8 00 00       	push   $0xc818
    58fb:	6a 01                	push   $0x1
    58fd:	e8 9e 6a 00 00       	call   c3a0 <printf>
    5902:	83 c4 10             	add    $0x10,%esp
    5905:	83 ec 0c             	sub    $0xc,%esp
    5908:	68 c8 ed 00 00       	push   $0xedc8
    590d:	e8 4e 65 00 00       	call   be60 <strlen>
    5912:	89 c6                	mov    %eax,%esi
    5914:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    591b:	e8 40 65 00 00       	call   be60 <strlen>
    5920:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5924:	83 c4 10             	add    $0x10,%esp
    5927:	39 d8                	cmp    %ebx,%eax
    5929:	77 c5                	ja     58f0 <test_mem_current+0x2a0>
    592b:	83 ec 0c             	sub    $0xc,%esp
    592e:	68 6e 03 00 00       	push   $0x36e
    5933:	68 30 c8 00 00       	push   $0xc830
    5938:	ff 75 08             	pushl  0x8(%ebp)
    593b:	68 f8 ed 00 00       	push   $0xedf8
    5940:	6a 01                	push   $0x1
    5942:	e8 59 6a 00 00       	call   c3a0 <printf>
    5947:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    594e:	00 00 00 
    5951:	83 c4 20             	add    $0x20,%esp
    5954:	e9 a3 fd ff ff       	jmp    56fc <test_mem_current+0xac>
    5959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00005960 <test_correct_mem_account_of_growth_and_shrink>:
}

TEST(test_correct_mem_account_of_growth_and_shrink) {
    5960:	55                   	push   %ebp
    5961:	89 e5                	mov    %esp,%ebp
    5963:	57                   	push   %edi
    5964:	56                   	push   %esi
    5965:	53                   	push   %ebx
    5966:	31 db                	xor    %ebx,%ebx
    5968:	83 ec 2c             	sub    $0x2c,%esp
    596b:	8b 7d 08             	mov    0x8(%ebp),%edi
  char proc_mem[10];
  // Buffer to read contents from memory file.
  char saved_mem[10];

  // Move the current process to "/cgroup/test1" cgroup.
  ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    596e:	e8 f5 68 00 00       	call   c268 <getpid>
    5973:	83 ec 08             	sub    $0x8,%esp
    5976:	50                   	push   %eax
    5977:	68 ed c9 00 00       	push   $0xc9ed
    597c:	e8 9f ac ff ff       	call   620 <move_proc>
    5981:	83 c4 10             	add    $0x10,%esp
    5984:	85 c0                	test   %eax,%eax
    5986:	74 1d                	je     59a5 <test_correct_mem_account_of_growth_and_shrink+0x45>
    5988:	eb 76                	jmp    5a00 <test_correct_mem_account_of_growth_and_shrink+0xa0>
    598a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    5990:	83 ec 08             	sub    $0x8,%esp
    5993:	83 c3 01             	add    $0x1,%ebx
    5996:	68 18 c8 00 00       	push   $0xc818
    599b:	6a 01                	push   $0x1
    599d:	e8 fe 69 00 00       	call   c3a0 <printf>
    59a2:	83 c4 10             	add    $0x10,%esp
    59a5:	83 ec 0c             	sub    $0xc,%esp
    59a8:	68 c0 ec 00 00       	push   $0xecc0
    59ad:	e8 ae 64 00 00       	call   be60 <strlen>
    59b2:	89 c6                	mov    %eax,%esi
    59b4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    59bb:	e8 a0 64 00 00       	call   be60 <strlen>
    59c0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    59c4:	83 c4 10             	add    $0x10,%esp
    59c7:	39 d8                	cmp    %ebx,%eax
    59c9:	77 c5                	ja     5990 <test_correct_mem_account_of_growth_and_shrink+0x30>
    59cb:	83 ec 0c             	sub    $0xc,%esp
    59ce:	68 78 03 00 00       	push   $0x378
    59d3:	68 30 c8 00 00       	push   $0xc830
    59d8:	57                   	push   %edi
    59d9:	68 04 ef 00 00       	push   $0xef04
    59de:	6a 01                	push   $0x1
    59e0:	e8 bb 69 00 00       	call   c3a0 <printf>
    59e5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    59ec:	00 00 00 
    59ef:	83 c4 20             	add    $0x20,%esp
  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    59f2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    59f5:	5b                   	pop    %ebx
    59f6:	5e                   	pop    %esi
    59f7:	5f                   	pop    %edi
    59f8:	5d                   	pop    %ebp
    59f9:	c3                   	ret    
    59fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Move the current process to "/cgroup/test1" cgroup.
  ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));

  // Check that the process we moved is really in "/cgroup/test1" cgroup.
  ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    5a00:	e8 63 68 00 00       	call   c268 <getpid>
    5a05:	83 ec 08             	sub    $0x8,%esp
    5a08:	31 db                	xor    %ebx,%ebx
    5a0a:	50                   	push   %eax
    5a0b:	68 ed c9 00 00       	push   $0xc9ed
    5a10:	e8 3b ac ff ff       	call   650 <is_pid_in_group>
    5a15:	83 c4 10             	add    $0x10,%esp
    5a18:	85 c0                	test   %eax,%eax
    5a1a:	74 19                	je     5a35 <test_correct_mem_account_of_growth_and_shrink+0xd5>
    5a1c:	eb 72                	jmp    5a90 <test_correct_mem_account_of_growth_and_shrink+0x130>
    5a1e:	66 90                	xchg   %ax,%ax
    5a20:	83 ec 08             	sub    $0x8,%esp
    5a23:	83 c3 01             	add    $0x1,%ebx
    5a26:	68 18 c8 00 00       	push   $0xc818
    5a2b:	6a 01                	push   $0x1
    5a2d:	e8 6e 69 00 00       	call   c3a0 <printf>
    5a32:	83 c4 10             	add    $0x10,%esp
    5a35:	83 ec 0c             	sub    $0xc,%esp
    5a38:	68 40 ed 00 00       	push   $0xed40
    5a3d:	e8 1e 64 00 00       	call   be60 <strlen>
    5a42:	89 c6                	mov    %eax,%esi
    5a44:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5a4b:	e8 10 64 00 00       	call   be60 <strlen>
    5a50:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5a54:	83 c4 10             	add    $0x10,%esp
    5a57:	39 d8                	cmp    %ebx,%eax
    5a59:	77 c5                	ja     5a20 <test_correct_mem_account_of_growth_and_shrink+0xc0>
    5a5b:	83 ec 0c             	sub    $0xc,%esp
    5a5e:	68 7b 03 00 00       	push   $0x37b
    5a63:	68 30 c8 00 00       	push   $0xc830
    5a68:	57                   	push   %edi
    5a69:	68 58 ef 00 00       	push   $0xef58
    5a6e:	6a 01                	push   $0x1
    5a70:	e8 2b 69 00 00       	call   c3a0 <printf>
    5a75:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5a7c:	00 00 00 
    5a7f:	83 c4 20             	add    $0x20,%esp
  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
}
    5a82:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5a85:	5b                   	pop    %ebx
    5a86:	5e                   	pop    %esi
    5a87:	5f                   	pop    %edi
    5a88:	5d                   	pop    %ebp
    5a89:	c3                   	ret    
    5a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Check that the process we moved is really in "/cgroup/test1" cgroup.
  ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));

  // Grow the current process by 100 bytes.
  sbrk(100);
    5a90:	83 ec 0c             	sub    $0xc,%esp
    5a93:	6a 64                	push   $0x64
    5a95:	e8 d6 67 00 00       	call   c270 <sbrk>

  // Read the contents of current memory file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_CURRENT, 0));
    5a9a:	58                   	pop    %eax
    5a9b:	5a                   	pop    %edx
    5a9c:	6a 00                	push   $0x0
    5a9e:	68 ea ca 00 00       	push   $0xcaea
    5aa3:	e8 78 a7 ff ff       	call   220 <read_file>
    5aa8:	59                   	pop    %ecx
    5aa9:	5b                   	pop    %ebx
    5aaa:	8d 5d de             	lea    -0x22(%ebp),%ebx
    5aad:	50                   	push   %eax
    5aae:	53                   	push   %ebx
    5aaf:	e8 9c 62 00 00       	call   bd50 <strcpy>

  // Convert process memory to a string.
  itoa(proc_mem, getmem());
    5ab4:	e8 17 68 00 00       	call   c2d0 <getmem>
    5ab9:	5e                   	pop    %esi
    5aba:	8d 75 d4             	lea    -0x2c(%ebp),%esi
    5abd:	5a                   	pop    %edx
    5abe:	50                   	push   %eax
    5abf:	56                   	push   %esi
    5ac0:	e8 4b 65 00 00       	call   c010 <itoa>
  strcat(proc_mem, "\n");
    5ac5:	59                   	pop    %ecx
    5ac6:	58                   	pop    %eax
    5ac7:	68 e1 d0 00 00       	push   $0xd0e1
    5acc:	56                   	push   %esi
    5acd:	e8 ee 65 00 00       	call   c0c0 <strcat>

  // Read the contents of current memory file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_CURRENT, 0));
    5ad2:	58                   	pop    %eax
    5ad3:	5a                   	pop    %edx
    5ad4:	6a 00                	push   $0x0
    5ad6:	68 ea ca 00 00       	push   $0xcaea
    5adb:	e8 40 a7 ff ff       	call   220 <read_file>
    5ae0:	59                   	pop    %ecx
    5ae1:	5a                   	pop    %edx
    5ae2:	50                   	push   %eax
    5ae3:	53                   	push   %ebx
    5ae4:	e8 67 62 00 00       	call   bd50 <strcpy>

  // Check that the memory accounting correctly updated after memory growth.
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));
    5ae9:	59                   	pop    %ecx
    5aea:	58                   	pop    %eax
    5aeb:	56                   	push   %esi
    5aec:	53                   	push   %ebx
    5aed:	e8 8e 62 00 00       	call   bd80 <strcmp>
    5af2:	83 c4 10             	add    $0x10,%esp
    5af5:	85 c0                	test   %eax,%eax
    5af7:	74 6e                	je     5b67 <test_correct_mem_account_of_growth_and_shrink+0x207>
    5af9:	31 db                	xor    %ebx,%ebx
    5afb:	eb 18                	jmp    5b15 <test_correct_mem_account_of_growth_and_shrink+0x1b5>
    5afd:	8d 76 00             	lea    0x0(%esi),%esi
    5b00:	83 ec 08             	sub    $0x8,%esp
    5b03:	83 c3 01             	add    $0x1,%ebx
    5b06:	68 18 c8 00 00       	push   $0xc818
    5b0b:	6a 01                	push   $0x1
    5b0d:	e8 8e 68 00 00       	call   c3a0 <printf>
    5b12:	83 c4 10             	add    $0x10,%esp
    5b15:	83 ec 0c             	sub    $0xc,%esp
    5b18:	68 2a ce 00 00       	push   $0xce2a
    5b1d:	e8 3e 63 00 00       	call   be60 <strlen>
    5b22:	89 c6                	mov    %eax,%esi
    5b24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5b2b:	e8 30 63 00 00       	call   be60 <strlen>
    5b30:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5b34:	83 c4 10             	add    $0x10,%esp
    5b37:	39 d8                	cmp    %ebx,%eax
    5b39:	77 c5                	ja     5b00 <test_correct_mem_account_of_growth_and_shrink+0x1a0>
    5b3b:	83 ec 0c             	sub    $0xc,%esp
    5b3e:	68 8b 03 00 00       	push   $0x38b

  // Read the contents of current memory file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_CURRENT, 0));

  // Check that the memory accounting correctly updated after memory growth.
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));
    5b43:	68 30 c8 00 00       	push   $0xc830
    5b48:	57                   	push   %edi
    5b49:	68 3c fe 00 00       	push   $0xfe3c
    5b4e:	6a 01                	push   $0x1
    5b50:	e8 4b 68 00 00       	call   c3a0 <printf>
    5b55:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5b5c:	00 00 00 
    5b5f:	83 c4 20             	add    $0x20,%esp
    5b62:	e9 8b fe ff ff       	jmp    59f2 <test_correct_mem_account_of_growth_and_shrink+0x92>

  // Check that the memory accounting correctly updated after memory growth.
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));

  // Decrease current proc by 100 bytes.
  sbrk(-100);
    5b67:	83 ec 0c             	sub    $0xc,%esp
    5b6a:	6a 9c                	push   $0xffffff9c
    5b6c:	e8 ff 66 00 00       	call   c270 <sbrk>

  // Read the contents of current memory file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_CURRENT, 0));
    5b71:	58                   	pop    %eax
    5b72:	5a                   	pop    %edx
    5b73:	6a 00                	push   $0x0
    5b75:	68 ea ca 00 00       	push   $0xcaea
    5b7a:	e8 a1 a6 ff ff       	call   220 <read_file>
    5b7f:	59                   	pop    %ecx
    5b80:	5a                   	pop    %edx
    5b81:	50                   	push   %eax
    5b82:	53                   	push   %ebx
    5b83:	e8 c8 61 00 00       	call   bd50 <strcpy>

  // Convert process memory to a string.
  itoa(proc_mem, getmem());
    5b88:	e8 43 67 00 00       	call   c2d0 <getmem>
    5b8d:	59                   	pop    %ecx
    5b8e:	5a                   	pop    %edx
    5b8f:	50                   	push   %eax
    5b90:	56                   	push   %esi
    5b91:	e8 7a 64 00 00       	call   c010 <itoa>
  strcat(proc_mem, "\n");
    5b96:	59                   	pop    %ecx
    5b97:	58                   	pop    %eax
    5b98:	68 e1 d0 00 00       	push   $0xd0e1
    5b9d:	56                   	push   %esi
    5b9e:	e8 1d 65 00 00       	call   c0c0 <strcat>

  // Read the contents of current memory file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_CURRENT, 0));
    5ba3:	58                   	pop    %eax
    5ba4:	5a                   	pop    %edx
    5ba5:	6a 00                	push   $0x0
    5ba7:	68 ea ca 00 00       	push   $0xcaea
    5bac:	e8 6f a6 ff ff       	call   220 <read_file>
    5bb1:	59                   	pop    %ecx
    5bb2:	5a                   	pop    %edx
    5bb3:	50                   	push   %eax
    5bb4:	53                   	push   %ebx
    5bb5:	e8 96 61 00 00       	call   bd50 <strcpy>

  // Check that the memory accounting correctly updated after memory growth.
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));
    5bba:	59                   	pop    %ecx
    5bbb:	58                   	pop    %eax
    5bbc:	56                   	push   %esi
    5bbd:	53                   	push   %ebx
    5bbe:	31 db                	xor    %ebx,%ebx
    5bc0:	e8 bb 61 00 00       	call   bd80 <strcmp>
    5bc5:	83 c4 10             	add    $0x10,%esp
    5bc8:	85 c0                	test   %eax,%eax
    5bca:	75 19                	jne    5be5 <test_correct_mem_account_of_growth_and_shrink+0x285>
    5bcc:	eb 4a                	jmp    5c18 <test_correct_mem_account_of_growth_and_shrink+0x2b8>
    5bce:	66 90                	xchg   %ax,%ax
    5bd0:	83 ec 08             	sub    $0x8,%esp
    5bd3:	83 c3 01             	add    $0x1,%ebx
    5bd6:	68 18 c8 00 00       	push   $0xc818
    5bdb:	6a 01                	push   $0x1
    5bdd:	e8 be 67 00 00       	call   c3a0 <printf>
    5be2:	83 c4 10             	add    $0x10,%esp
    5be5:	83 ec 0c             	sub    $0xc,%esp
    5be8:	68 2a ce 00 00       	push   $0xce2a
    5bed:	e8 6e 62 00 00       	call   be60 <strlen>
    5bf2:	89 c6                	mov    %eax,%esi
    5bf4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5bfb:	e8 60 62 00 00       	call   be60 <strlen>
    5c00:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5c04:	83 c4 10             	add    $0x10,%esp
    5c07:	39 d8                	cmp    %ebx,%eax
    5c09:	77 c5                	ja     5bd0 <test_correct_mem_account_of_growth_and_shrink+0x270>
    5c0b:	83 ec 0c             	sub    $0xc,%esp
    5c0e:	68 9b 03 00 00       	push   $0x39b
    5c13:	e9 2b ff ff ff       	jmp    5b43 <test_correct_mem_account_of_growth_and_shrink+0x1e3>

  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    5c18:	e8 4b 66 00 00       	call   c268 <getpid>
    5c1d:	83 ec 08             	sub    $0x8,%esp
    5c20:	31 db                	xor    %ebx,%ebx
    5c22:	50                   	push   %eax
    5c23:	68 f0 cc 00 00       	push   $0xccf0
    5c28:	e8 f3 a9 ff ff       	call   620 <move_proc>
    5c2d:	83 c4 10             	add    $0x10,%esp
    5c30:	85 c0                	test   %eax,%eax
    5c32:	74 21                	je     5c55 <test_correct_mem_account_of_growth_and_shrink+0x2f5>
    5c34:	eb 71                	jmp    5ca7 <test_correct_mem_account_of_growth_and_shrink+0x347>
    5c36:	8d 76 00             	lea    0x0(%esi),%esi
    5c39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    5c40:	83 ec 08             	sub    $0x8,%esp
    5c43:	83 c3 01             	add    $0x1,%ebx
    5c46:	68 18 c8 00 00       	push   $0xc818
    5c4b:	6a 01                	push   $0x1
    5c4d:	e8 4e 67 00 00       	call   c3a0 <printf>
    5c52:	83 c4 10             	add    $0x10,%esp
    5c55:	83 ec 0c             	sub    $0xc,%esp
    5c58:	68 b0 ef 00 00       	push   $0xefb0
    5c5d:	e8 fe 61 00 00       	call   be60 <strlen>
    5c62:	89 c6                	mov    %eax,%esi
    5c64:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5c6b:	e8 f0 61 00 00       	call   be60 <strlen>
    5c70:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5c74:	83 c4 10             	add    $0x10,%esp
    5c77:	39 d8                	cmp    %ebx,%eax
    5c79:	77 c5                	ja     5c40 <test_correct_mem_account_of_growth_and_shrink+0x2e0>
    5c7b:	83 ec 0c             	sub    $0xc,%esp
    5c7e:	68 9e 03 00 00       	push   $0x39e
    5c83:	68 30 c8 00 00       	push   $0xc830
    5c88:	57                   	push   %edi
    5c89:	68 d8 ef 00 00       	push   $0xefd8
    5c8e:	6a 01                	push   $0x1
    5c90:	e8 0b 67 00 00       	call   c3a0 <printf>
    5c95:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5c9c:	00 00 00 
    5c9f:	83 c4 20             	add    $0x20,%esp
    5ca2:	e9 4b fd ff ff       	jmp    59f2 <test_correct_mem_account_of_growth_and_shrink+0x92>

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    5ca7:	e8 bc 65 00 00       	call   c268 <getpid>
    5cac:	83 ec 08             	sub    $0x8,%esp
    5caf:	31 db                	xor    %ebx,%ebx
    5cb1:	50                   	push   %eax
    5cb2:	68 f0 cc 00 00       	push   $0xccf0
    5cb7:	e8 94 a9 ff ff       	call   650 <is_pid_in_group>
    5cbc:	83 c4 10             	add    $0x10,%esp
    5cbf:	85 c0                	test   %eax,%eax
    5cc1:	74 22                	je     5ce5 <test_correct_mem_account_of_growth_and_shrink+0x385>
    5cc3:	e9 2a fd ff ff       	jmp    59f2 <test_correct_mem_account_of_growth_and_shrink+0x92>
    5cc8:	90                   	nop
    5cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    5cd0:	83 ec 08             	sub    $0x8,%esp
    5cd3:	83 c3 01             	add    $0x1,%ebx
    5cd6:	68 18 c8 00 00       	push   $0xc818
    5cdb:	6a 01                	push   $0x1
    5cdd:	e8 be 66 00 00       	call   c3a0 <printf>
    5ce2:	83 c4 10             	add    $0x10,%esp
    5ce5:	83 ec 0c             	sub    $0xc,%esp
    5ce8:	68 c8 ed 00 00       	push   $0xedc8
    5ced:	e8 6e 61 00 00       	call   be60 <strlen>
    5cf2:	89 c6                	mov    %eax,%esi
    5cf4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5cfb:	e8 60 61 00 00       	call   be60 <strlen>
    5d00:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    5d04:	83 c4 10             	add    $0x10,%esp
    5d07:	39 d8                	cmp    %ebx,%eax
    5d09:	77 c5                	ja     5cd0 <test_correct_mem_account_of_growth_and_shrink+0x370>
    5d0b:	83 ec 0c             	sub    $0xc,%esp
    5d0e:	68 a1 03 00 00       	push   $0x3a1
    5d13:	68 30 c8 00 00       	push   $0xc830
    5d18:	57                   	push   %edi
    5d19:	68 f8 ed 00 00       	push   $0xedf8
    5d1e:	6a 01                	push   $0x1
    5d20:	e8 7b 66 00 00       	call   c3a0 <printf>
    5d25:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5d2c:	00 00 00 
    5d2f:	83 c4 20             	add    $0x20,%esp
    5d32:	e9 bb fc ff ff       	jmp    59f2 <test_correct_mem_account_of_growth_and_shrink+0x92>
    5d37:	89 f6                	mov    %esi,%esi
    5d39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00005d40 <test_limiting_mem>:
}

TEST(test_limiting_mem)
{
    5d40:	55                   	push   %ebp
    5d41:	89 e5                	mov    %esp,%ebp
    5d43:	57                   	push   %edi
    5d44:	56                   	push   %esi
    5d45:	53                   	push   %ebx
    5d46:	31 db                	xor    %ebx,%ebx
    5d48:	83 ec 38             	sub    $0x38,%esp
    5d4b:	8b 75 08             	mov    0x8(%ebp),%esi
  // Buffer for saving current memory written in limit
  char default_max[12];
  char default_min[12];

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));
    5d4e:	6a 03                	push   $0x3
    5d50:	e8 cb a6 ff ff       	call   420 <enable_controller>
    5d55:	83 c4 10             	add    $0x10,%esp
    5d58:	85 c0                	test   %eax,%eax
    5d5a:	74 19                	je     5d75 <test_limiting_mem+0x35>
    5d5c:	eb 72                	jmp    5dd0 <test_limiting_mem+0x90>
    5d5e:	66 90                	xchg   %ax,%ax
    5d60:	83 ec 08             	sub    $0x8,%esp
    5d63:	83 c3 01             	add    $0x1,%ebx
    5d66:	68 18 c8 00 00       	push   $0xc818
    5d6b:	6a 01                	push   $0x1
    5d6d:	e8 2e 66 00 00       	call   c3a0 <printf>
    5d72:	83 c4 10             	add    $0x10,%esp
    5d75:	83 ec 0c             	sub    $0xc,%esp
    5d78:	68 46 ce 00 00       	push   $0xce46
    5d7d:	e8 de 60 00 00       	call   be60 <strlen>
    5d82:	89 c7                	mov    %eax,%edi
    5d84:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5d8b:	e8 d0 60 00 00       	call   be60 <strlen>
    5d90:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5d94:	83 c4 10             	add    $0x10,%esp
    5d97:	39 d8                	cmp    %ebx,%eax
    5d99:	77 c5                	ja     5d60 <test_limiting_mem+0x20>
    5d9b:	83 ec 0c             	sub    $0xc,%esp
    5d9e:	68 ad 03 00 00       	push   $0x3ad
  ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "90\n"));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));
    5da3:	68 30 c8 00 00       	push   $0xc830
    5da8:	56                   	push   %esi
    5da9:	68 84 fe 00 00       	push   $0xfe84
    5dae:	6a 01                	push   $0x1
    5db0:	e8 eb 65 00 00       	call   c3a0 <printf>
    5db5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5dbc:	00 00 00 
    5dbf:	83 c4 20             	add    $0x20,%esp
  ASSERT_FALSE(strcmp(default_max, read_file(TEST_1_MEM_MAX, 0)));
  ASSERT_FALSE(strcmp(default_min, read_file(TEST_1_MEM_MIN, 0)));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    5dc2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5dc5:	5b                   	pop    %ebx
    5dc6:	5e                   	pop    %esi
    5dc7:	5f                   	pop    %edi
    5dc8:	5d                   	pop    %ebp
    5dc9:	c3                   	ret    
    5dca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // read MEM_MAX and MEM_MIN values
  strcpy(default_max, read_file(TEST_1_MEM_MAX, 0));
    5dd0:	83 ec 08             	sub    $0x8,%esp
    5dd3:	6a 00                	push   $0x0
    5dd5:	68 07 cb 00 00       	push   $0xcb07
    5dda:	e8 41 a4 ff ff       	call   220 <read_file>
    5ddf:	5b                   	pop    %ebx
    5de0:	8d 5d d0             	lea    -0x30(%ebp),%ebx
    5de3:	5f                   	pop    %edi
    5de4:	50                   	push   %eax
    5de5:	53                   	push   %ebx
    5de6:	e8 65 5f 00 00       	call   bd50 <strcpy>
  strcpy(default_min, read_file(TEST_1_MEM_MIN, 0));
    5deb:	58                   	pop    %eax
    5dec:	5a                   	pop    %edx
    5ded:	6a 00                	push   $0x0
    5def:	68 20 cb 00 00       	push   $0xcb20
    5df4:	e8 27 a4 ff ff       	call   220 <read_file>
    5df9:	59                   	pop    %ecx
    5dfa:	5f                   	pop    %edi
    5dfb:	8d 7d dc             	lea    -0x24(%ebp),%edi
    5dfe:	50                   	push   %eax
    5dff:	57                   	push   %edi
    5e00:	e8 4b 5f 00 00       	call   bd50 <strcpy>

  // Check default limit is correct
  ASSERT_FALSE(strncmp(default_max, KERNBASE, strlen(KERNBASE)));
    5e05:	c7 04 24 61 ce 00 00 	movl   $0xce61,(%esp)
    5e0c:	e8 4f 60 00 00       	call   be60 <strlen>
    5e11:	83 c4 0c             	add    $0xc,%esp
    5e14:	50                   	push   %eax
    5e15:	68 61 ce 00 00       	push   $0xce61
    5e1a:	53                   	push   %ebx
    5e1b:	e8 b0 5f 00 00       	call   bdd0 <strncmp>
    5e20:	83 c4 10             	add    $0x10,%esp
    5e23:	85 c0                	test   %eax,%eax
    5e25:	74 79                	je     5ea0 <test_limiting_mem+0x160>
    5e27:	31 db                	xor    %ebx,%ebx
    5e29:	eb 1a                	jmp    5e45 <test_limiting_mem+0x105>
    5e2b:	90                   	nop
    5e2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5e30:	83 ec 08             	sub    $0x8,%esp
    5e33:	83 c3 01             	add    $0x1,%ebx
    5e36:	68 18 c8 00 00       	push   $0xc818
    5e3b:	6a 01                	push   $0x1
    5e3d:	e8 5e 65 00 00       	call   c3a0 <printf>
    5e42:	83 c4 10             	add    $0x10,%esp
    5e45:	83 ec 0c             	sub    $0xc,%esp
    5e48:	68 c8 fe 00 00       	push   $0xfec8
    5e4d:	e8 0e 60 00 00       	call   be60 <strlen>
    5e52:	89 c7                	mov    %eax,%edi
    5e54:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5e5b:	e8 00 60 00 00       	call   be60 <strlen>
    5e60:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5e64:	83 c4 10             	add    $0x10,%esp
    5e67:	39 d8                	cmp    %ebx,%eax
    5e69:	77 c5                	ja     5e30 <test_limiting_mem+0xf0>
    5e6b:	83 ec 0c             	sub    $0xc,%esp
    5e6e:	68 b4 03 00 00       	push   $0x3b4
    5e73:	68 30 c8 00 00       	push   $0xc830
    5e78:	56                   	push   %esi
    5e79:	68 fc fe 00 00       	push   $0xfefc
    5e7e:	6a 01                	push   $0x1
    5e80:	e8 1b 65 00 00       	call   c3a0 <printf>
    5e85:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5e8c:	00 00 00 
    5e8f:	83 c4 20             	add    $0x20,%esp
  ASSERT_FALSE(strcmp(default_max, read_file(TEST_1_MEM_MAX, 0)));
  ASSERT_FALSE(strcmp(default_min, read_file(TEST_1_MEM_MIN, 0)));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    5e92:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5e95:	5b                   	pop    %ebx
    5e96:	5e                   	pop    %esi
    5e97:	5f                   	pop    %edi
    5e98:	5d                   	pop    %ebp
    5e99:	c3                   	ret    
    5e9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  strcpy(default_max, read_file(TEST_1_MEM_MAX, 0));
  strcpy(default_min, read_file(TEST_1_MEM_MIN, 0));

  // Check default limit is correct
  ASSERT_FALSE(strncmp(default_max, KERNBASE, strlen(KERNBASE)));
  ASSERT_FALSE(strncmp(default_min, "0", strlen("0")));
    5ea0:	83 ec 0c             	sub    $0xc,%esp
    5ea3:	68 82 cc 00 00       	push   $0xcc82
    5ea8:	e8 b3 5f 00 00       	call   be60 <strlen>
    5ead:	83 c4 0c             	add    $0xc,%esp
    5eb0:	50                   	push   %eax
    5eb1:	68 82 cc 00 00       	push   $0xcc82
    5eb6:	57                   	push   %edi
    5eb7:	e8 14 5f 00 00       	call   bdd0 <strncmp>
    5ebc:	83 c4 10             	add    $0x10,%esp
    5ebf:	85 c0                	test   %eax,%eax
    5ec1:	74 74                	je     5f37 <test_limiting_mem+0x1f7>
    5ec3:	31 db                	xor    %ebx,%ebx
    5ec5:	eb 1e                	jmp    5ee5 <test_limiting_mem+0x1a5>
    5ec7:	89 f6                	mov    %esi,%esi
    5ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    5ed0:	83 ec 08             	sub    $0x8,%esp
    5ed3:	83 c3 01             	add    $0x1,%ebx
    5ed6:	68 18 c8 00 00       	push   $0xc818
    5edb:	6a 01                	push   $0x1
    5edd:	e8 be 64 00 00       	call   c3a0 <printf>
    5ee2:	83 c4 10             	add    $0x10,%esp
    5ee5:	83 ec 0c             	sub    $0xc,%esp
    5ee8:	68 58 ff 00 00       	push   $0xff58
    5eed:	e8 6e 5f 00 00       	call   be60 <strlen>
    5ef2:	89 c7                	mov    %eax,%edi
    5ef4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5efb:	e8 60 5f 00 00       	call   be60 <strlen>
    5f00:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5f04:	83 c4 10             	add    $0x10,%esp
    5f07:	39 d8                	cmp    %ebx,%eax
    5f09:	77 c5                	ja     5ed0 <test_limiting_mem+0x190>
    5f0b:	83 ec 0c             	sub    $0xc,%esp
    5f0e:	68 b5 03 00 00       	push   $0x3b5
    5f13:	68 30 c8 00 00       	push   $0xc830
    5f18:	56                   	push   %esi
    5f19:	68 80 ff 00 00       	push   $0xff80
    5f1e:	6a 01                	push   $0x1
    5f20:	e8 7b 64 00 00       	call   c3a0 <printf>
    5f25:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5f2c:	00 00 00 
    5f2f:	83 c4 20             	add    $0x20,%esp
    5f32:	e9 8b fe ff ff       	jmp    5dc2 <test_limiting_mem+0x82>

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));
    5f37:	83 ec 08             	sub    $0x8,%esp
    5f3a:	68 3f cf 00 00       	push   $0xcf3f
    5f3f:	68 07 cb 00 00       	push   $0xcb07
    5f44:	e8 97 a3 ff ff       	call   2e0 <write_file>
    5f49:	83 c4 10             	add    $0x10,%esp
    5f4c:	85 c0                	test   %eax,%eax
    5f4e:	75 6f                	jne    5fbf <test_limiting_mem+0x27f>
    5f50:	31 db                	xor    %ebx,%ebx
    5f52:	eb 19                	jmp    5f6d <test_limiting_mem+0x22d>
    5f54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5f58:	83 ec 08             	sub    $0x8,%esp
    5f5b:	83 c3 01             	add    $0x1,%ebx
    5f5e:	68 18 c8 00 00       	push   $0xc818
    5f63:	6a 01                	push   $0x1
    5f65:	e8 36 64 00 00       	call   c3a0 <printf>
    5f6a:	83 c4 10             	add    $0x10,%esp
    5f6d:	83 ec 0c             	sub    $0xc,%esp
    5f70:	68 d0 ff 00 00       	push   $0xffd0
    5f75:	e8 e6 5e 00 00       	call   be60 <strlen>
    5f7a:	89 c7                	mov    %eax,%edi
    5f7c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    5f83:	e8 d8 5e 00 00       	call   be60 <strlen>
    5f88:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    5f8c:	83 c4 10             	add    $0x10,%esp
    5f8f:	39 d8                	cmp    %ebx,%eax
    5f91:	77 c5                	ja     5f58 <test_limiting_mem+0x218>
    5f93:	83 ec 0c             	sub    $0xc,%esp
    5f96:	68 b8 03 00 00       	push   $0x3b8
    5f9b:	68 30 c8 00 00       	push   $0xc830
    5fa0:	56                   	push   %esi
    5fa1:	68 f4 ff 00 00       	push   $0xfff4
    5fa6:	6a 01                	push   $0x1
    5fa8:	e8 f3 63 00 00       	call   c3a0 <printf>
    5fad:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    5fb4:	00 00 00 
    5fb7:	83 c4 20             	add    $0x20,%esp
    5fba:	e9 03 fe ff ff       	jmp    5dc2 <test_limiting_mem+0x82>
  ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "90"));
    5fbf:	83 ec 08             	sub    $0x8,%esp
    5fc2:	68 6c ce 00 00       	push   $0xce6c
    5fc7:	68 20 cb 00 00       	push   $0xcb20
    5fcc:	e8 0f a3 ff ff       	call   2e0 <write_file>
    5fd1:	83 c4 10             	add    $0x10,%esp
    5fd4:	85 c0                	test   %eax,%eax
    5fd6:	75 6f                	jne    6047 <test_limiting_mem+0x307>
    5fd8:	31 db                	xor    %ebx,%ebx
    5fda:	eb 19                	jmp    5ff5 <test_limiting_mem+0x2b5>
    5fdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    5fe0:	83 ec 08             	sub    $0x8,%esp
    5fe3:	83 c3 01             	add    $0x1,%ebx
    5fe6:	68 18 c8 00 00       	push   $0xc818
    5feb:	6a 01                	push   $0x1
    5fed:	e8 ae 63 00 00       	call   c3a0 <printf>
    5ff2:	83 c4 10             	add    $0x10,%esp
    5ff5:	83 ec 0c             	sub    $0xc,%esp
    5ff8:	68 40 00 01 00       	push   $0x10040
    5ffd:	e8 5e 5e 00 00       	call   be60 <strlen>
    6002:	89 c7                	mov    %eax,%edi
    6004:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    600b:	e8 50 5e 00 00       	call   be60 <strlen>
    6010:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6014:	83 c4 10             	add    $0x10,%esp
    6017:	39 d8                	cmp    %ebx,%eax
    6019:	77 c5                	ja     5fe0 <test_limiting_mem+0x2a0>
    601b:	83 ec 0c             	sub    $0xc,%esp
    601e:	68 b9 03 00 00       	push   $0x3b9
    6023:	68 30 c8 00 00       	push   $0xc830
    6028:	56                   	push   %esi
    6029:	68 64 00 01 00       	push   $0x10064
    602e:	6a 01                	push   $0x1
    6030:	e8 6b 63 00 00       	call   c3a0 <printf>
    6035:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    603c:	00 00 00 
    603f:	83 c4 20             	add    $0x20,%esp
    6042:	e9 7b fd ff ff       	jmp    5dc2 <test_limiting_mem+0x82>

  // Check changes
  ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    6047:	83 ec 08             	sub    $0x8,%esp
    604a:	6a 00                	push   $0x0
    604c:	68 07 cb 00 00       	push   $0xcb07
    6051:	e8 ca a1 ff ff       	call   220 <read_file>
    6056:	5a                   	pop    %edx
    6057:	59                   	pop    %ecx
    6058:	68 6f ce 00 00       	push   $0xce6f
    605d:	50                   	push   %eax
    605e:	e8 1d 5d 00 00       	call   bd80 <strcmp>
    6063:	83 c4 10             	add    $0x10,%esp
    6066:	85 c0                	test   %eax,%eax
    6068:	74 6b                	je     60d5 <test_limiting_mem+0x395>
    606a:	31 db                	xor    %ebx,%ebx
    606c:	eb 15                	jmp    6083 <test_limiting_mem+0x343>
    606e:	83 ec 08             	sub    $0x8,%esp
    6071:	83 c3 01             	add    $0x1,%ebx
    6074:	68 18 c8 00 00       	push   $0xc818
    6079:	6a 01                	push   $0x1
    607b:	e8 20 63 00 00       	call   c3a0 <printf>
    6080:	83 c4 10             	add    $0x10,%esp
    6083:	83 ec 0c             	sub    $0xc,%esp
    6086:	68 b0 00 01 00       	push   $0x100b0
    608b:	e8 d0 5d 00 00       	call   be60 <strlen>
    6090:	89 c7                	mov    %eax,%edi
    6092:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6099:	e8 c2 5d 00 00       	call   be60 <strlen>
    609e:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    60a2:	83 c4 10             	add    $0x10,%esp
    60a5:	39 d8                	cmp    %ebx,%eax
    60a7:	77 c5                	ja     606e <test_limiting_mem+0x32e>
    60a9:	83 ec 0c             	sub    $0xc,%esp
    60ac:	68 bc 03 00 00       	push   $0x3bc
    60b1:	68 30 c8 00 00       	push   $0xc830
    60b6:	56                   	push   %esi
    60b7:	68 e0 00 01 00       	push   $0x100e0
    60bc:	6a 01                	push   $0x1
    60be:	e8 dd 62 00 00       	call   c3a0 <printf>
    60c3:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    60ca:	00 00 00 
    60cd:	83 c4 20             	add    $0x20,%esp
    60d0:	e9 ed fc ff ff       	jmp    5dc2 <test_limiting_mem+0x82>
  ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "90\n"));
    60d5:	83 ec 08             	sub    $0x8,%esp
    60d8:	6a 00                	push   $0x0
    60da:	68 20 cb 00 00       	push   $0xcb20
    60df:	e8 3c a1 ff ff       	call   220 <read_file>
    60e4:	5a                   	pop    %edx
    60e5:	59                   	pop    %ecx
    60e6:	68 74 ce 00 00       	push   $0xce74
    60eb:	50                   	push   %eax
    60ec:	e8 8f 5c 00 00       	call   bd80 <strcmp>
    60f1:	83 c4 10             	add    $0x10,%esp
    60f4:	85 c0                	test   %eax,%eax
    60f6:	74 6b                	je     6163 <test_limiting_mem+0x423>
    60f8:	31 db                	xor    %ebx,%ebx
    60fa:	eb 15                	jmp    6111 <test_limiting_mem+0x3d1>
    60fc:	83 ec 08             	sub    $0x8,%esp
    60ff:	83 c3 01             	add    $0x1,%ebx
    6102:	68 18 c8 00 00       	push   $0xc818
    6107:	6a 01                	push   $0x1
    6109:	e8 92 62 00 00       	call   c3a0 <printf>
    610e:	83 c4 10             	add    $0x10,%esp
    6111:	83 ec 0c             	sub    $0xc,%esp
    6114:	68 38 01 01 00       	push   $0x10138
    6119:	e8 42 5d 00 00       	call   be60 <strlen>
    611e:	89 c7                	mov    %eax,%edi
    6120:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6127:	e8 34 5d 00 00       	call   be60 <strlen>
    612c:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6130:	83 c4 10             	add    $0x10,%esp
    6133:	39 d8                	cmp    %ebx,%eax
    6135:	77 c5                	ja     60fc <test_limiting_mem+0x3bc>
    6137:	83 ec 0c             	sub    $0xc,%esp
    613a:	68 bd 03 00 00       	push   $0x3bd
    613f:	68 30 c8 00 00       	push   $0xc830
    6144:	56                   	push   %esi
    6145:	68 68 01 01 00       	push   $0x10168
    614a:	6a 01                	push   $0x1
    614c:	e8 4f 62 00 00       	call   c3a0 <printf>
    6151:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6158:	00 00 00 
    615b:	83 c4 20             	add    $0x20,%esp
    615e:	e9 5f fc ff ff       	jmp    5dc2 <test_limiting_mem+0x82>

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
    6163:	83 ec 0c             	sub    $0xc,%esp
    6166:	6a 03                	push   $0x3
    6168:	e8 03 a3 ff ff       	call   470 <disable_controller>
    616d:	83 c4 10             	add    $0x10,%esp
    6170:	85 c0                	test   %eax,%eax
    6172:	75 73                	jne    61e7 <test_limiting_mem+0x4a7>
    6174:	31 db                	xor    %ebx,%ebx
    6176:	eb 1d                	jmp    6195 <test_limiting_mem+0x455>
    6178:	90                   	nop
    6179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6180:	83 ec 08             	sub    $0x8,%esp
    6183:	83 c3 01             	add    $0x1,%ebx
    6186:	68 18 c8 00 00       	push   $0xc818
    618b:	6a 01                	push   $0x1
    618d:	e8 0e 62 00 00       	call   c3a0 <printf>
    6192:	83 c4 10             	add    $0x10,%esp
    6195:	83 ec 0c             	sub    $0xc,%esp
    6198:	68 78 ce 00 00       	push   $0xce78
    619d:	e8 be 5c 00 00       	call   be60 <strlen>
    61a2:	89 c7                	mov    %eax,%edi
    61a4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    61ab:	e8 b0 5c 00 00       	call   be60 <strlen>
    61b0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    61b4:	83 c4 10             	add    $0x10,%esp
    61b7:	39 d8                	cmp    %ebx,%eax
    61b9:	77 c5                	ja     6180 <test_limiting_mem+0x440>
    61bb:	83 ec 0c             	sub    $0xc,%esp
    61be:	68 c0 03 00 00       	push   $0x3c0
  // Verify limit return to default
  ASSERT_FALSE(strcmp(default_max, read_file(TEST_1_MEM_MAX, 0)));
  ASSERT_FALSE(strcmp(default_min, read_file(TEST_1_MEM_MIN, 0)));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
    61c3:	68 30 c8 00 00       	push   $0xc830
    61c8:	56                   	push   %esi
    61c9:	68 c0 01 01 00       	push   $0x101c0
    61ce:	6a 01                	push   $0x1
    61d0:	e8 cb 61 00 00       	call   c3a0 <printf>
    61d5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    61dc:	00 00 00 
    61df:	83 c4 20             	add    $0x20,%esp
    61e2:	e9 db fb ff ff       	jmp    5dc2 <test_limiting_mem+0x82>
  ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "90\n"));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));
    61e7:	83 ec 0c             	sub    $0xc,%esp
    61ea:	6a 03                	push   $0x3
    61ec:	e8 2f a2 ff ff       	call   420 <enable_controller>
    61f1:	83 c4 10             	add    $0x10,%esp
    61f4:	85 c0                	test   %eax,%eax
    61f6:	75 4b                	jne    6243 <test_limiting_mem+0x503>
    61f8:	31 db                	xor    %ebx,%ebx
    61fa:	83 ec 0c             	sub    $0xc,%esp
    61fd:	68 46 ce 00 00       	push   $0xce46
    6202:	e8 59 5c 00 00       	call   be60 <strlen>
    6207:	89 c7                	mov    %eax,%edi
    6209:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6210:	e8 4b 5c 00 00       	call   be60 <strlen>
    6215:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6219:	83 c4 10             	add    $0x10,%esp
    621c:	39 d8                	cmp    %ebx,%eax
    621e:	76 16                	jbe    6236 <test_limiting_mem+0x4f6>
    6220:	57                   	push   %edi
    6221:	57                   	push   %edi
    6222:	83 c3 01             	add    $0x1,%ebx
    6225:	68 18 c8 00 00       	push   $0xc818
    622a:	6a 01                	push   $0x1
    622c:	e8 6f 61 00 00       	call   c3a0 <printf>
    6231:	83 c4 10             	add    $0x10,%esp
    6234:	eb c4                	jmp    61fa <test_limiting_mem+0x4ba>
    6236:	83 ec 0c             	sub    $0xc,%esp
    6239:	68 c2 03 00 00       	push   $0x3c2
    623e:	e9 60 fb ff ff       	jmp    5da3 <test_limiting_mem+0x63>

  // Verify limit return to default
  ASSERT_FALSE(strcmp(default_max, read_file(TEST_1_MEM_MAX, 0)));
    6243:	50                   	push   %eax
    6244:	50                   	push   %eax
    6245:	6a 00                	push   $0x0
    6247:	68 07 cb 00 00       	push   $0xcb07
    624c:	e8 cf 9f ff ff       	call   220 <read_file>
    6251:	5a                   	pop    %edx
    6252:	59                   	pop    %ecx
    6253:	50                   	push   %eax
    6254:	53                   	push   %ebx
    6255:	e8 26 5b 00 00       	call   bd80 <strcmp>
    625a:	83 c4 10             	add    $0x10,%esp
    625d:	85 c0                	test   %eax,%eax
    625f:	74 3e                	je     629f <test_limiting_mem+0x55f>
    6261:	31 db                	xor    %ebx,%ebx
    6263:	83 ec 0c             	sub    $0xc,%esp
    6266:	68 08 02 01 00       	push   $0x10208
    626b:	e8 f0 5b 00 00       	call   be60 <strlen>
    6270:	89 c7                	mov    %eax,%edi
    6272:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6279:	e8 e2 5b 00 00       	call   be60 <strlen>
    627e:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6282:	83 c4 10             	add    $0x10,%esp
    6285:	39 d8                	cmp    %ebx,%eax
    6287:	76 76                	jbe    62ff <test_limiting_mem+0x5bf>
    6289:	51                   	push   %ecx
    628a:	51                   	push   %ecx
    628b:	83 c3 01             	add    $0x1,%ebx
    628e:	68 18 c8 00 00       	push   $0xc818
    6293:	6a 01                	push   $0x1
    6295:	e8 06 61 00 00       	call   c3a0 <printf>
    629a:	83 c4 10             	add    $0x10,%esp
    629d:	eb c4                	jmp    6263 <test_limiting_mem+0x523>
  ASSERT_FALSE(strcmp(default_min, read_file(TEST_1_MEM_MIN, 0)));
    629f:	51                   	push   %ecx
    62a0:	51                   	push   %ecx
    62a1:	6a 00                	push   $0x0
    62a3:	68 20 cb 00 00       	push   $0xcb20
    62a8:	e8 73 9f ff ff       	call   220 <read_file>
    62ad:	5b                   	pop    %ebx
    62ae:	5a                   	pop    %edx
    62af:	50                   	push   %eax
    62b0:	57                   	push   %edi
    62b1:	e8 ca 5a 00 00       	call   bd80 <strcmp>
    62b6:	83 c4 10             	add    $0x10,%esp
    62b9:	85 c0                	test   %eax,%eax
    62bb:	0f 84 96 00 00 00    	je     6357 <test_limiting_mem+0x617>
    62c1:	31 db                	xor    %ebx,%ebx
    62c3:	83 ec 0c             	sub    $0xc,%esp
    62c6:	68 98 02 01 00       	push   $0x10298
    62cb:	e8 90 5b 00 00       	call   be60 <strlen>
    62d0:	89 c7                	mov    %eax,%edi
    62d2:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    62d9:	e8 82 5b 00 00       	call   be60 <strlen>
    62de:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    62e2:	83 c4 10             	add    $0x10,%esp
    62e5:	39 d8                	cmp    %ebx,%eax
    62e7:	76 42                	jbe    632b <test_limiting_mem+0x5eb>
    62e9:	52                   	push   %edx
    62ea:	52                   	push   %edx
    62eb:	83 c3 01             	add    $0x1,%ebx
    62ee:	68 18 c8 00 00       	push   $0xc818
    62f3:	6a 01                	push   $0x1
    62f5:	e8 a6 60 00 00       	call   c3a0 <printf>
    62fa:	83 c4 10             	add    $0x10,%esp
    62fd:	eb c4                	jmp    62c3 <test_limiting_mem+0x583>
  ASSERT_TRUE(disable_controller(MEM_CNT));
  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // Verify limit return to default
  ASSERT_FALSE(strcmp(default_max, read_file(TEST_1_MEM_MAX, 0)));
    62ff:	83 ec 0c             	sub    $0xc,%esp
    6302:	68 c5 03 00 00       	push   $0x3c5
    6307:	68 30 c8 00 00       	push   $0xc830
    630c:	56                   	push   %esi
    630d:	68 3c 02 01 00       	push   $0x1023c
    6312:	6a 01                	push   $0x1
    6314:	e8 87 60 00 00       	call   c3a0 <printf>
    6319:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6320:	00 00 00 
    6323:	83 c4 20             	add    $0x20,%esp
    6326:	e9 97 fa ff ff       	jmp    5dc2 <test_limiting_mem+0x82>
  ASSERT_FALSE(strcmp(default_min, read_file(TEST_1_MEM_MIN, 0)));
    632b:	83 ec 0c             	sub    $0xc,%esp
    632e:	68 c6 03 00 00       	push   $0x3c6
    6333:	68 30 c8 00 00       	push   $0xc830
    6338:	56                   	push   %esi
    6339:	68 cc 02 01 00       	push   $0x102cc
    633e:	6a 01                	push   $0x1
    6340:	e8 5b 60 00 00       	call   c3a0 <printf>
    6345:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    634c:	00 00 00 
    634f:	83 c4 20             	add    $0x20,%esp
    6352:	e9 6b fa ff ff       	jmp    5dc2 <test_limiting_mem+0x82>

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
    6357:	83 ec 0c             	sub    $0xc,%esp
    635a:	31 db                	xor    %ebx,%ebx
    635c:	6a 03                	push   $0x3
    635e:	e8 0d a1 ff ff       	call   470 <disable_controller>
    6363:	83 c4 10             	add    $0x10,%esp
    6366:	85 c0                	test   %eax,%eax
    6368:	0f 85 54 fa ff ff    	jne    5dc2 <test_limiting_mem+0x82>
    636e:	83 ec 0c             	sub    $0xc,%esp
    6371:	68 78 ce 00 00       	push   $0xce78
    6376:	e8 e5 5a 00 00       	call   be60 <strlen>
    637b:	89 c7                	mov    %eax,%edi
    637d:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6384:	e8 d7 5a 00 00       	call   be60 <strlen>
    6389:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    638d:	83 c4 10             	add    $0x10,%esp
    6390:	39 d8                	cmp    %ebx,%eax
    6392:	76 16                	jbe    63aa <test_limiting_mem+0x66a>
    6394:	50                   	push   %eax
    6395:	50                   	push   %eax
    6396:	83 c3 01             	add    $0x1,%ebx
    6399:	68 18 c8 00 00       	push   $0xc818
    639e:	6a 01                	push   $0x1
    63a0:	e8 fb 5f 00 00       	call   c3a0 <printf>
    63a5:	83 c4 10             	add    $0x10,%esp
    63a8:	eb c4                	jmp    636e <test_limiting_mem+0x62e>
    63aa:	83 ec 0c             	sub    $0xc,%esp
    63ad:	68 c9 03 00 00       	push   $0x3c9
    63b2:	e9 0c fe ff ff       	jmp    61c3 <test_limiting_mem+0x483>
    63b7:	89 f6                	mov    %esi,%esi
    63b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000063c0 <test_ensure_mem_min_is_less_then_mem_max>:
}

TEST(test_ensure_mem_min_is_less_then_mem_max)
{
    63c0:	55                   	push   %ebp
    63c1:	89 e5                	mov    %esp,%ebp
    63c3:	57                   	push   %edi
    63c4:	56                   	push   %esi
    63c5:	53                   	push   %ebx
    63c6:	31 db                	xor    %ebx,%ebx
    63c8:	83 ec 18             	sub    $0x18,%esp
    63cb:	8b 75 08             	mov    0x8(%ebp),%esi
  // Mem_max mast to be grater then mem_min

    // Enable memory controller
    ASSERT_TRUE(enable_controller(MEM_CNT));
    63ce:	6a 03                	push   $0x3
    63d0:	e8 4b a0 ff ff       	call   420 <enable_controller>
    63d5:	83 c4 10             	add    $0x10,%esp
    63d8:	85 c0                	test   %eax,%eax
    63da:	74 19                	je     63f5 <test_ensure_mem_min_is_less_then_mem_max+0x35>
    63dc:	eb 72                	jmp    6450 <test_ensure_mem_min_is_less_then_mem_max+0x90>
    63de:	66 90                	xchg   %ax,%ax
    63e0:	83 ec 08             	sub    $0x8,%esp
    63e3:	83 c3 01             	add    $0x1,%ebx
    63e6:	68 18 c8 00 00       	push   $0xc818
    63eb:	6a 01                	push   $0x1
    63ed:	e8 ae 5f 00 00       	call   c3a0 <printf>
    63f2:	83 c4 10             	add    $0x10,%esp
    63f5:	83 ec 0c             	sub    $0xc,%esp
    63f8:	68 46 ce 00 00       	push   $0xce46
    63fd:	e8 5e 5a 00 00       	call   be60 <strlen>
    6402:	89 c7                	mov    %eax,%edi
    6404:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    640b:	e8 50 5a 00 00       	call   be60 <strlen>
    6410:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6414:	83 c4 10             	add    $0x10,%esp
    6417:	39 d8                	cmp    %ebx,%eax
    6419:	77 c5                	ja     63e0 <test_ensure_mem_min_is_less_then_mem_max+0x20>
    641b:	83 ec 0c             	sub    $0xc,%esp
    641e:	68 d1 03 00 00       	push   $0x3d1
    6423:	68 30 c8 00 00       	push   $0xc830
    6428:	56                   	push   %esi
    6429:	68 84 fe 00 00       	push   $0xfe84
    642e:	6a 01                	push   $0x1
    6430:	e8 6b 5f 00 00       	call   c3a0 <printf>
    6435:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    643c:	00 00 00 
    643f:	83 c4 20             	add    $0x20,%esp
    // Try to update memory max smaller then min this have to fail
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, "99"));

    // Disable memory controller
    ASSERT_TRUE(disable_controller(MEM_CNT));
}
    6442:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6445:	5b                   	pop    %ebx
    6446:	5e                   	pop    %esi
    6447:	5f                   	pop    %edi
    6448:	5d                   	pop    %ebp
    6449:	c3                   	ret    
    644a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Enable memory controller
    ASSERT_TRUE(enable_controller(MEM_CNT));

    // Update memory max
    ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));
    6450:	83 ec 08             	sub    $0x8,%esp
    6453:	31 db                	xor    %ebx,%ebx
    6455:	68 3f cf 00 00       	push   $0xcf3f
    645a:	68 07 cb 00 00       	push   $0xcb07
    645f:	e8 7c 9e ff ff       	call   2e0 <write_file>
    6464:	83 c4 10             	add    $0x10,%esp
    6467:	85 c0                	test   %eax,%eax
    6469:	74 1a                	je     6485 <test_ensure_mem_min_is_less_then_mem_max+0xc5>
    646b:	eb 73                	jmp    64e0 <test_ensure_mem_min_is_less_then_mem_max+0x120>
    646d:	8d 76 00             	lea    0x0(%esi),%esi
    6470:	83 ec 08             	sub    $0x8,%esp
    6473:	83 c3 01             	add    $0x1,%ebx
    6476:	68 18 c8 00 00       	push   $0xc818
    647b:	6a 01                	push   $0x1
    647d:	e8 1e 5f 00 00       	call   c3a0 <printf>
    6482:	83 c4 10             	add    $0x10,%esp
    6485:	83 ec 0c             	sub    $0xc,%esp
    6488:	68 d0 ff 00 00       	push   $0xffd0
    648d:	e8 ce 59 00 00       	call   be60 <strlen>
    6492:	89 c7                	mov    %eax,%edi
    6494:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    649b:	e8 c0 59 00 00       	call   be60 <strlen>
    64a0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    64a4:	83 c4 10             	add    $0x10,%esp
    64a7:	39 d8                	cmp    %ebx,%eax
    64a9:	77 c5                	ja     6470 <test_ensure_mem_min_is_less_then_mem_max+0xb0>
    64ab:	83 ec 0c             	sub    $0xc,%esp
    64ae:	68 d4 03 00 00       	push   $0x3d4
    64b3:	68 30 c8 00 00       	push   $0xc830
    64b8:	56                   	push   %esi
    64b9:	68 f4 ff 00 00       	push   $0xfff4
    64be:	6a 01                	push   $0x1
    64c0:	e8 db 5e 00 00       	call   c3a0 <printf>
    64c5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    64cc:	00 00 00 
    64cf:	83 c4 20             	add    $0x20,%esp
    // Try to update memory max smaller then min this have to fail
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, "99"));

    // Disable memory controller
    ASSERT_TRUE(disable_controller(MEM_CNT));
}
    64d2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    64d5:	5b                   	pop    %ebx
    64d6:	5e                   	pop    %esi
    64d7:	5f                   	pop    %edi
    64d8:	5d                   	pop    %ebp
    64d9:	c3                   	ret    
    64da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Update memory max
    ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    64e0:	83 ec 08             	sub    $0x8,%esp
    64e3:	6a 00                	push   $0x0
    64e5:	68 07 cb 00 00       	push   $0xcb07
    64ea:	e8 31 9d ff ff       	call   220 <read_file>
    64ef:	5b                   	pop    %ebx
    64f0:	5f                   	pop    %edi
    64f1:	68 6f ce 00 00       	push   $0xce6f
    64f6:	50                   	push   %eax
    64f7:	31 db                	xor    %ebx,%ebx
    64f9:	e8 82 58 00 00       	call   bd80 <strcmp>
    64fe:	83 c4 10             	add    $0x10,%esp
    6501:	85 c0                	test   %eax,%eax
    6503:	75 20                	jne    6525 <test_ensure_mem_min_is_less_then_mem_max+0x165>
    6505:	eb 70                	jmp    6577 <test_ensure_mem_min_is_less_then_mem_max+0x1b7>
    6507:	89 f6                	mov    %esi,%esi
    6509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    6510:	83 ec 08             	sub    $0x8,%esp
    6513:	83 c3 01             	add    $0x1,%ebx
    6516:	68 18 c8 00 00       	push   $0xc818
    651b:	6a 01                	push   $0x1
    651d:	e8 7e 5e 00 00       	call   c3a0 <printf>
    6522:	83 c4 10             	add    $0x10,%esp
    6525:	83 ec 0c             	sub    $0xc,%esp
    6528:	68 b0 00 01 00       	push   $0x100b0
    652d:	e8 2e 59 00 00       	call   be60 <strlen>
    6532:	89 c7                	mov    %eax,%edi
    6534:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    653b:	e8 20 59 00 00       	call   be60 <strlen>
    6540:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6544:	83 c4 10             	add    $0x10,%esp
    6547:	39 d8                	cmp    %ebx,%eax
    6549:	77 c5                	ja     6510 <test_ensure_mem_min_is_less_then_mem_max+0x150>
    654b:	83 ec 0c             	sub    $0xc,%esp
    654e:	68 d7 03 00 00       	push   $0x3d7
    6553:	68 30 c8 00 00       	push   $0xc830
    6558:	56                   	push   %esi
    6559:	68 e0 00 01 00       	push   $0x100e0
    655e:	6a 01                	push   $0x1
    6560:	e8 3b 5e 00 00       	call   c3a0 <printf>
    6565:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    656c:	00 00 00 
    656f:	83 c4 20             	add    $0x20,%esp
    6572:	e9 cb fe ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>

    // Try to update memory min over max this have to fail
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, "101"));
    6577:	83 ec 08             	sub    $0x8,%esp
    657a:	31 db                	xor    %ebx,%ebx
    657c:	68 94 ce 00 00       	push   $0xce94
    6581:	68 20 cb 00 00       	push   $0xcb20
    6586:	e8 55 9d ff ff       	call   2e0 <write_file>
    658b:	83 c4 10             	add    $0x10,%esp
    658e:	85 c0                	test   %eax,%eax
    6590:	75 1b                	jne    65ad <test_ensure_mem_min_is_less_then_mem_max+0x1ed>
    6592:	eb 6b                	jmp    65ff <test_ensure_mem_min_is_less_then_mem_max+0x23f>
    6594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    6598:	83 ec 08             	sub    $0x8,%esp
    659b:	83 c3 01             	add    $0x1,%ebx
    659e:	68 18 c8 00 00       	push   $0xc818
    65a3:	6a 01                	push   $0x1
    65a5:	e8 f6 5d 00 00       	call   c3a0 <printf>
    65aa:	83 c4 10             	add    $0x10,%esp
    65ad:	83 ec 0c             	sub    $0xc,%esp
    65b0:	68 28 03 01 00       	push   $0x10328
    65b5:	e8 a6 58 00 00       	call   be60 <strlen>
    65ba:	89 c7                	mov    %eax,%edi
    65bc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    65c3:	e8 98 58 00 00       	call   be60 <strlen>
    65c8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    65cc:	83 c4 10             	add    $0x10,%esp
    65cf:	39 d8                	cmp    %ebx,%eax
    65d1:	77 c5                	ja     6598 <test_ensure_mem_min_is_less_then_mem_max+0x1d8>
    65d3:	83 ec 0c             	sub    $0xc,%esp
    65d6:	68 da 03 00 00       	push   $0x3da
    65db:	68 30 c8 00 00       	push   $0xc830
    65e0:	56                   	push   %esi
    65e1:	68 4c 03 01 00       	push   $0x1034c
    65e6:	6a 01                	push   $0x1
    65e8:	e8 b3 5d 00 00       	call   c3a0 <printf>
    65ed:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    65f4:	00 00 00 
    65f7:	83 c4 20             	add    $0x20,%esp
    65fa:	e9 43 fe ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>

    // Update memory min
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "100"));
    65ff:	83 ec 08             	sub    $0x8,%esp
    6602:	31 db                	xor    %ebx,%ebx
    6604:	68 3f cf 00 00       	push   $0xcf3f
    6609:	68 20 cb 00 00       	push   $0xcb20
    660e:	e8 cd 9c ff ff       	call   2e0 <write_file>
    6613:	83 c4 10             	add    $0x10,%esp
    6616:	85 c0                	test   %eax,%eax
    6618:	74 1b                	je     6635 <test_ensure_mem_min_is_less_then_mem_max+0x275>
    661a:	eb 6b                	jmp    6687 <test_ensure_mem_min_is_less_then_mem_max+0x2c7>
    661c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    6620:	83 ec 08             	sub    $0x8,%esp
    6623:	83 c3 01             	add    $0x1,%ebx
    6626:	68 18 c8 00 00       	push   $0xc818
    662b:	6a 01                	push   $0x1
    662d:	e8 6e 5d 00 00       	call   c3a0 <printf>
    6632:	83 c4 10             	add    $0x10,%esp
    6635:	83 ec 0c             	sub    $0xc,%esp
    6638:	68 98 03 01 00       	push   $0x10398
    663d:	e8 1e 58 00 00       	call   be60 <strlen>
    6642:	89 c7                	mov    %eax,%edi
    6644:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    664b:	e8 10 58 00 00       	call   be60 <strlen>
    6650:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6654:	83 c4 10             	add    $0x10,%esp
    6657:	39 d8                	cmp    %ebx,%eax
    6659:	77 c5                	ja     6620 <test_ensure_mem_min_is_less_then_mem_max+0x260>
    665b:	83 ec 0c             	sub    $0xc,%esp
    665e:	68 dd 03 00 00       	push   $0x3dd
    6663:	68 30 c8 00 00       	push   $0xc830
    6668:	56                   	push   %esi
    6669:	68 bc 03 01 00       	push   $0x103bc
    666e:	6a 01                	push   $0x1
    6670:	e8 2b 5d 00 00       	call   c3a0 <printf>
    6675:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    667c:	00 00 00 
    667f:	83 c4 20             	add    $0x20,%esp
    6682:	e9 bb fd ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "100\n"));
    6687:	83 ec 08             	sub    $0x8,%esp
    668a:	31 db                	xor    %ebx,%ebx
    668c:	6a 00                	push   $0x0
    668e:	68 20 cb 00 00       	push   $0xcb20
    6693:	e8 88 9b ff ff       	call   220 <read_file>
    6698:	5a                   	pop    %edx
    6699:	59                   	pop    %ecx
    669a:	68 6f ce 00 00       	push   $0xce6f
    669f:	50                   	push   %eax
    66a0:	e8 db 56 00 00       	call   bd80 <strcmp>
    66a5:	83 c4 10             	add    $0x10,%esp
    66a8:	85 c0                	test   %eax,%eax
    66aa:	75 19                	jne    66c5 <test_ensure_mem_min_is_less_then_mem_max+0x305>
    66ac:	eb 69                	jmp    6717 <test_ensure_mem_min_is_less_then_mem_max+0x357>
    66ae:	66 90                	xchg   %ax,%ax
    66b0:	83 ec 08             	sub    $0x8,%esp
    66b3:	83 c3 01             	add    $0x1,%ebx
    66b6:	68 18 c8 00 00       	push   $0xc818
    66bb:	6a 01                	push   $0x1
    66bd:	e8 de 5c 00 00       	call   c3a0 <printf>
    66c2:	83 c4 10             	add    $0x10,%esp
    66c5:	83 ec 0c             	sub    $0xc,%esp
    66c8:	68 08 04 01 00       	push   $0x10408
    66cd:	e8 8e 57 00 00       	call   be60 <strlen>
    66d2:	89 c7                	mov    %eax,%edi
    66d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    66db:	e8 80 57 00 00       	call   be60 <strlen>
    66e0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    66e4:	83 c4 10             	add    $0x10,%esp
    66e7:	39 d8                	cmp    %ebx,%eax
    66e9:	77 c5                	ja     66b0 <test_ensure_mem_min_is_less_then_mem_max+0x2f0>
    66eb:	83 ec 0c             	sub    $0xc,%esp
    66ee:	68 e0 03 00 00       	push   $0x3e0
    66f3:	68 30 c8 00 00       	push   $0xc830
    66f8:	56                   	push   %esi
    66f9:	68 38 04 01 00       	push   $0x10438
    66fe:	6a 01                	push   $0x1
    6700:	e8 9b 5c 00 00       	call   c3a0 <printf>
    6705:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    670c:	00 00 00 
    670f:	83 c4 20             	add    $0x20,%esp
    6712:	e9 2b fd ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>

    // Try to update memory max smaller then min this have to fail
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, "99"));
    6717:	83 ec 08             	sub    $0x8,%esp
    671a:	31 db                	xor    %ebx,%ebx
    671c:	68 98 ce 00 00       	push   $0xce98
    6721:	68 07 cb 00 00       	push   $0xcb07
    6726:	e8 b5 9b ff ff       	call   2e0 <write_file>
    672b:	83 c4 10             	add    $0x10,%esp
    672e:	85 c0                	test   %eax,%eax
    6730:	75 1b                	jne    674d <test_ensure_mem_min_is_less_then_mem_max+0x38d>
    6732:	eb 6b                	jmp    679f <test_ensure_mem_min_is_less_then_mem_max+0x3df>
    6734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    6738:	83 ec 08             	sub    $0x8,%esp
    673b:	83 c3 01             	add    $0x1,%ebx
    673e:	68 18 c8 00 00       	push   $0xc818
    6743:	6a 01                	push   $0x1
    6745:	e8 56 5c 00 00       	call   c3a0 <printf>
    674a:	83 c4 10             	add    $0x10,%esp
    674d:	83 ec 0c             	sub    $0xc,%esp
    6750:	68 90 04 01 00       	push   $0x10490
    6755:	e8 06 57 00 00       	call   be60 <strlen>
    675a:	89 c7                	mov    %eax,%edi
    675c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6763:	e8 f8 56 00 00       	call   be60 <strlen>
    6768:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    676c:	83 c4 10             	add    $0x10,%esp
    676f:	39 d8                	cmp    %ebx,%eax
    6771:	77 c5                	ja     6738 <test_ensure_mem_min_is_less_then_mem_max+0x378>
    6773:	83 ec 0c             	sub    $0xc,%esp
    6776:	68 e3 03 00 00       	push   $0x3e3
    677b:	68 30 c8 00 00       	push   $0xc830
    6780:	56                   	push   %esi
    6781:	68 b4 04 01 00       	push   $0x104b4
    6786:	6a 01                	push   $0x1
    6788:	e8 13 5c 00 00       	call   c3a0 <printf>
    678d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6794:	00 00 00 
    6797:	83 c4 20             	add    $0x20,%esp
    679a:	e9 a3 fc ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>

    // Disable memory controller
    ASSERT_TRUE(disable_controller(MEM_CNT));
    679f:	83 ec 0c             	sub    $0xc,%esp
    67a2:	31 db                	xor    %ebx,%ebx
    67a4:	6a 03                	push   $0x3
    67a6:	e8 c5 9c ff ff       	call   470 <disable_controller>
    67ab:	83 c4 10             	add    $0x10,%esp
    67ae:	85 c0                	test   %eax,%eax
    67b0:	74 23                	je     67d5 <test_ensure_mem_min_is_less_then_mem_max+0x415>
    67b2:	e9 8b fc ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>
    67b7:	89 f6                	mov    %esi,%esi
    67b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    67c0:	83 ec 08             	sub    $0x8,%esp
    67c3:	83 c3 01             	add    $0x1,%ebx
    67c6:	68 18 c8 00 00       	push   $0xc818
    67cb:	6a 01                	push   $0x1
    67cd:	e8 ce 5b 00 00       	call   c3a0 <printf>
    67d2:	83 c4 10             	add    $0x10,%esp
    67d5:	83 ec 0c             	sub    $0xc,%esp
    67d8:	68 78 ce 00 00       	push   $0xce78
    67dd:	e8 7e 56 00 00       	call   be60 <strlen>
    67e2:	89 c7                	mov    %eax,%edi
    67e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    67eb:	e8 70 56 00 00       	call   be60 <strlen>
    67f0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    67f4:	83 c4 10             	add    $0x10,%esp
    67f7:	39 d8                	cmp    %ebx,%eax
    67f9:	77 c5                	ja     67c0 <test_ensure_mem_min_is_less_then_mem_max+0x400>
    67fb:	83 ec 0c             	sub    $0xc,%esp
    67fe:	68 e6 03 00 00       	push   $0x3e6
    6803:	68 30 c8 00 00       	push   $0xc830
    6808:	56                   	push   %esi
    6809:	68 c0 01 01 00       	push   $0x101c0
    680e:	6a 01                	push   $0x1
    6810:	e8 8b 5b 00 00       	call   c3a0 <printf>
    6815:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    681c:	00 00 00 
    681f:	83 c4 20             	add    $0x20,%esp
    6822:	e9 1b fc ff ff       	jmp    6442 <test_ensure_mem_min_is_less_then_mem_max+0x82>
    6827:	89 f6                	mov    %esi,%esi
    6829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00006830 <test_cant_use_protected_memory>:
}

TEST(test_cant_use_protected_memory)
{
    6830:	55                   	push   %ebp
    6831:	89 e5                	mov    %esp,%ebp
    6833:	57                   	push   %edi
    6834:	56                   	push   %esi
    6835:	53                   	push   %ebx
    6836:	31 db                	xor    %ebx,%ebx
    6838:	83 ec 28             	sub    $0x28,%esp
    683b:	8b 75 08             	mov    0x8(%ebp),%esi
    // Try to set mem min for cgroup2 or grows procses sizw
    // These should fail since we protect all memory mem for cgroup1

    // Enable memory controllers
    ASSERT_TRUE(enable_controller(MEM_CNT));
    683e:	6a 03                	push   $0x3
    6840:	e8 db 9b ff ff       	call   420 <enable_controller>
    6845:	83 c4 10             	add    $0x10,%esp
    6848:	85 c0                	test   %eax,%eax
    684a:	74 19                	je     6865 <test_cant_use_protected_memory+0x35>
    684c:	eb 72                	jmp    68c0 <test_cant_use_protected_memory+0x90>
    684e:	66 90                	xchg   %ax,%ax
    6850:	83 ec 08             	sub    $0x8,%esp
    6853:	83 c3 01             	add    $0x1,%ebx
    6856:	68 18 c8 00 00       	push   $0xc818
    685b:	6a 01                	push   $0x1
    685d:	e8 3e 5b 00 00       	call   c3a0 <printf>
    6862:	83 c4 10             	add    $0x10,%esp
    6865:	83 ec 0c             	sub    $0xc,%esp
    6868:	68 46 ce 00 00       	push   $0xce46
    686d:	e8 ee 55 00 00       	call   be60 <strlen>
    6872:	89 c7                	mov    %eax,%edi
    6874:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    687b:	e8 e0 55 00 00       	call   be60 <strlen>
    6880:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6884:	83 c4 10             	add    $0x10,%esp
    6887:	39 d8                	cmp    %ebx,%eax
    6889:	77 c5                	ja     6850 <test_cant_use_protected_memory+0x20>
    688b:	83 ec 0c             	sub    $0xc,%esp
    688e:	68 ef 03 00 00       	push   $0x3ef
    6893:	68 30 c8 00 00       	push   $0xc830
    6898:	56                   	push   %esi
    6899:	68 84 fe 00 00       	push   $0xfe84
    689e:	6a 01                	push   $0x1
    68a0:	e8 fb 5a 00 00       	call   c3a0 <printf>
    68a5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    68ac:	00 00 00 
    68af:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "0\n"));

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "-mem"));
}
    68b2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    68b5:	5b                   	pop    %ebx
    68b6:	5e                   	pop    %esi
    68b7:	5f                   	pop    %edi
    68b8:	5d                   	pop    %ebp
    68b9:	c3                   	ret    
    68ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    // Try to set mem min for cgroup2 or grows procses sizw
    // These should fail since we protect all memory mem for cgroup1

    // Enable memory controllers
    ASSERT_TRUE(enable_controller(MEM_CNT));
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "+mem"));
    68c0:	83 ec 08             	sub    $0x8,%esp
    68c3:	31 db                	xor    %ebx,%ebx
    68c5:	68 9b ce 00 00       	push   $0xce9b
    68ca:	68 00 05 01 00       	push   $0x10500
    68cf:	e8 0c 9a ff ff       	call   2e0 <write_file>
    68d4:	83 c4 10             	add    $0x10,%esp
    68d7:	85 c0                	test   %eax,%eax
    68d9:	74 1a                	je     68f5 <test_cant_use_protected_memory+0xc5>
    68db:	eb 73                	jmp    6950 <test_cant_use_protected_memory+0x120>
    68dd:	8d 76 00             	lea    0x0(%esi),%esi
    68e0:	83 ec 08             	sub    $0x8,%esp
    68e3:	83 c3 01             	add    $0x1,%ebx
    68e6:	68 18 c8 00 00       	push   $0xc818
    68eb:	6a 01                	push   $0x1
    68ed:	e8 ae 5a 00 00       	call   c3a0 <printf>
    68f2:	83 c4 10             	add    $0x10,%esp
    68f5:	83 ec 0c             	sub    $0xc,%esp
    68f8:	68 28 05 01 00       	push   $0x10528
    68fd:	e8 5e 55 00 00       	call   be60 <strlen>
    6902:	89 c7                	mov    %eax,%edi
    6904:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    690b:	e8 50 55 00 00       	call   be60 <strlen>
    6910:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6914:	83 c4 10             	add    $0x10,%esp
    6917:	39 d8                	cmp    %ebx,%eax
    6919:	77 c5                	ja     68e0 <test_cant_use_protected_memory+0xb0>
    691b:	83 ec 0c             	sub    $0xc,%esp
    691e:	68 f0 03 00 00       	push   $0x3f0
    6923:	68 30 c8 00 00       	push   $0xc830
    6928:	56                   	push   %esi
    6929:	68 5c 05 01 00       	push   $0x1055c
    692e:	6a 01                	push   $0x1
    6930:	e8 6b 5a 00 00       	call   c3a0 <printf>
    6935:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    693c:	00 00 00 
    693f:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "0\n"));

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "-mem"));
}
    6942:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6945:	5b                   	pop    %ebx
    6946:	5e                   	pop    %esi
    6947:	5f                   	pop    %edi
    6948:	5d                   	pop    %ebp
    6949:	c3                   	ret    
    694a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    // Enable memory controllers
    ASSERT_TRUE(enable_controller(MEM_CNT));
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "+mem"));

    char buf [12];
    itoa(buf, MEM_SIZE);
    6950:	8d 5d dc             	lea    -0x24(%ebp),%ebx
    6953:	83 ec 08             	sub    $0x8,%esp
    6956:	68 00 00 c0 0d       	push   $0xdc00000
    695b:	53                   	push   %ebx
    695c:	e8 af 56 00 00       	call   c010 <itoa>

    // Protect all memory for cgroup1
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, buf));
    6961:	59                   	pop    %ecx
    6962:	5f                   	pop    %edi
    6963:	53                   	push   %ebx
    6964:	68 20 cb 00 00       	push   $0xcb20
    6969:	e8 72 99 ff ff       	call   2e0 <write_file>
    696e:	83 c4 10             	add    $0x10,%esp
    6971:	85 c0                	test   %eax,%eax
    6973:	75 72                	jne    69e7 <test_cant_use_protected_memory+0x1b7>
    6975:	31 db                	xor    %ebx,%ebx
    6977:	eb 1c                	jmp    6995 <test_cant_use_protected_memory+0x165>
    6979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    6980:	83 ec 08             	sub    $0x8,%esp
    6983:	83 c3 01             	add    $0x1,%ebx
    6986:	68 18 c8 00 00       	push   $0xc818
    698b:	6a 01                	push   $0x1
    698d:	e8 0e 5a 00 00       	call   c3a0 <printf>
    6992:	83 c4 10             	add    $0x10,%esp
    6995:	83 ec 0c             	sub    $0xc,%esp
    6998:	68 b8 05 01 00       	push   $0x105b8
    699d:	e8 be 54 00 00       	call   be60 <strlen>
    69a2:	89 c7                	mov    %eax,%edi
    69a4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    69ab:	e8 b0 54 00 00       	call   be60 <strlen>
    69b0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    69b4:	83 c4 10             	add    $0x10,%esp
    69b7:	39 d8                	cmp    %ebx,%eax
    69b9:	77 c5                	ja     6980 <test_cant_use_protected_memory+0x150>
    69bb:	83 ec 0c             	sub    $0xc,%esp
    69be:	68 f6 03 00 00       	push   $0x3f6
    69c3:	68 30 c8 00 00       	push   $0xc830
    69c8:	56                   	push   %esi
    69c9:	68 d8 05 01 00       	push   $0x105d8
    69ce:	6a 01                	push   $0x1
    69d0:	e8 cb 59 00 00       	call   c3a0 <printf>
    69d5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    69dc:	00 00 00 
    69df:	83 c4 20             	add    $0x20,%esp
    69e2:	e9 cb fe ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Check changes
    ASSERT_FALSE(strncmp(read_file(TEST_1_MEM_MIN, 0), buf, strlen(buf)));
    69e7:	83 ec 0c             	sub    $0xc,%esp
    69ea:	53                   	push   %ebx
    69eb:	e8 70 54 00 00       	call   be60 <strlen>
    69f0:	89 c7                	mov    %eax,%edi
    69f2:	58                   	pop    %eax
    69f3:	5a                   	pop    %edx
    69f4:	6a 00                	push   $0x0
    69f6:	68 20 cb 00 00       	push   $0xcb20
    69fb:	e8 20 98 ff ff       	call   220 <read_file>
    6a00:	83 c4 0c             	add    $0xc,%esp
    6a03:	57                   	push   %edi
    6a04:	53                   	push   %ebx
    6a05:	50                   	push   %eax
    6a06:	e8 c5 53 00 00       	call   bdd0 <strncmp>
    6a0b:	83 c4 10             	add    $0x10,%esp
    6a0e:	85 c0                	test   %eax,%eax
    6a10:	74 75                	je     6a87 <test_cant_use_protected_memory+0x257>
    6a12:	31 db                	xor    %ebx,%ebx
    6a14:	eb 1f                	jmp    6a35 <test_cant_use_protected_memory+0x205>
    6a16:	8d 76 00             	lea    0x0(%esi),%esi
    6a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    6a20:	83 ec 08             	sub    $0x8,%esp
    6a23:	83 c3 01             	add    $0x1,%ebx
    6a26:	68 18 c8 00 00       	push   $0xc818
    6a2b:	6a 01                	push   $0x1
    6a2d:	e8 6e 59 00 00       	call   c3a0 <printf>
    6a32:	83 c4 10             	add    $0x10,%esp
    6a35:	83 ec 0c             	sub    $0xc,%esp
    6a38:	68 24 06 01 00       	push   $0x10624
    6a3d:	e8 1e 54 00 00       	call   be60 <strlen>
    6a42:	89 c7                	mov    %eax,%edi
    6a44:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6a4b:	e8 10 54 00 00       	call   be60 <strlen>
    6a50:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6a54:	83 c4 10             	add    $0x10,%esp
    6a57:	39 d8                	cmp    %ebx,%eax
    6a59:	77 c5                	ja     6a20 <test_cant_use_protected_memory+0x1f0>
    6a5b:	83 ec 0c             	sub    $0xc,%esp
    6a5e:	68 f9 03 00 00       	push   $0x3f9
    6a63:	68 30 c8 00 00       	push   $0xc830
    6a68:	56                   	push   %esi
    6a69:	68 5c 06 01 00       	push   $0x1065c
    6a6e:	6a 01                	push   $0x1
    6a70:	e8 2b 59 00 00       	call   c3a0 <printf>
    6a75:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6a7c:	00 00 00 
    6a7f:	83 c4 20             	add    $0x20,%esp
    6a82:	e9 2b fe ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Try to protect memory for cgroup2 this need to fail
    ASSERT_FALSE(write_file(TEST_2_MEM_MIN, buf));
    6a87:	83 ec 08             	sub    $0x8,%esp
    6a8a:	53                   	push   %ebx
    6a8b:	68 a0 ce 00 00       	push   $0xcea0
    6a90:	31 db                	xor    %ebx,%ebx
    6a92:	e8 49 98 ff ff       	call   2e0 <write_file>
    6a97:	83 c4 10             	add    $0x10,%esp
    6a9a:	85 c0                	test   %eax,%eax
    6a9c:	75 17                	jne    6ab5 <test_cant_use_protected_memory+0x285>
    6a9e:	eb 67                	jmp    6b07 <test_cant_use_protected_memory+0x2d7>
    6aa0:	83 ec 08             	sub    $0x8,%esp
    6aa3:	83 c3 01             	add    $0x1,%ebx
    6aa6:	68 18 c8 00 00       	push   $0xc818
    6aab:	6a 01                	push   $0x1
    6aad:	e8 ee 58 00 00       	call   c3a0 <printf>
    6ab2:	83 c4 10             	add    $0x10,%esp
    6ab5:	83 ec 0c             	sub    $0xc,%esp
    6ab8:	68 c0 06 01 00       	push   $0x106c0
    6abd:	e8 9e 53 00 00       	call   be60 <strlen>
    6ac2:	89 c7                	mov    %eax,%edi
    6ac4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6acb:	e8 90 53 00 00       	call   be60 <strlen>
    6ad0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6ad4:	83 c4 10             	add    $0x10,%esp
    6ad7:	39 d8                	cmp    %ebx,%eax
    6ad9:	77 c5                	ja     6aa0 <test_cant_use_protected_memory+0x270>
    6adb:	83 ec 0c             	sub    $0xc,%esp
    6ade:	68 fc 03 00 00       	push   $0x3fc
    6ae3:	68 30 c8 00 00       	push   $0xc830
    6ae8:	56                   	push   %esi
    6ae9:	68 e0 06 01 00       	push   $0x106e0
    6aee:	6a 01                	push   $0x1
    6af0:	e8 ab 58 00 00       	call   c3a0 <printf>
    6af5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6afc:	00 00 00 
    6aff:	83 c4 20             	add    $0x20,%esp
    6b02:	e9 ab fd ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Attempt to grow process memory, notice this operation should fail and return -1.
    ASSERT_UINT_EQ((int)sbrk(MEM_SIZE), -1);
    6b07:	83 ec 0c             	sub    $0xc,%esp
    6b0a:	68 00 00 c0 0d       	push   $0xdc00000
    6b0f:	e8 5c 57 00 00       	call   c270 <sbrk>
    6b14:	83 c4 10             	add    $0x10,%esp
    6b17:	83 f8 ff             	cmp    $0xffffffff,%eax
    6b1a:	74 34                	je     6b50 <test_cant_use_protected_memory+0x320>
    6b1c:	83 ec 0c             	sub    $0xc,%esp
    6b1f:	68 00 00 c0 0d       	push   $0xdc00000
    6b24:	e8 47 57 00 00       	call   c270 <sbrk>
    6b29:	c7 04 24 ff 03 00 00 	movl   $0x3ff,(%esp)
    6b30:	68 30 c8 00 00       	push   $0xc830
    6b35:	6a ff                	push   $0xffffffff
    6b37:	50                   	push   %eax
    6b38:	56                   	push   %esi
    6b39:	e8 42 95 ff ff       	call   80 <print_error>
    6b3e:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6b45:	00 00 00 
    6b48:	83 c4 20             	add    $0x20,%esp
    6b4b:	e9 62 fd ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Decreas memory min for cgroup1
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "100"));
    6b50:	83 ec 08             	sub    $0x8,%esp
    6b53:	31 db                	xor    %ebx,%ebx
    6b55:	68 3f cf 00 00       	push   $0xcf3f
    6b5a:	68 20 cb 00 00       	push   $0xcb20
    6b5f:	e8 7c 97 ff ff       	call   2e0 <write_file>
    6b64:	83 c4 10             	add    $0x10,%esp
    6b67:	85 c0                	test   %eax,%eax
    6b69:	74 1a                	je     6b85 <test_cant_use_protected_memory+0x355>
    6b6b:	eb 6a                	jmp    6bd7 <test_cant_use_protected_memory+0x3a7>
    6b6d:	8d 76 00             	lea    0x0(%esi),%esi
    6b70:	83 ec 08             	sub    $0x8,%esp
    6b73:	83 c3 01             	add    $0x1,%ebx
    6b76:	68 18 c8 00 00       	push   $0xc818
    6b7b:	6a 01                	push   $0x1
    6b7d:	e8 1e 58 00 00       	call   c3a0 <printf>
    6b82:	83 c4 10             	add    $0x10,%esp
    6b85:	83 ec 0c             	sub    $0xc,%esp
    6b88:	68 98 03 01 00       	push   $0x10398
    6b8d:	e8 ce 52 00 00       	call   be60 <strlen>
    6b92:	89 c7                	mov    %eax,%edi
    6b94:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6b9b:	e8 c0 52 00 00       	call   be60 <strlen>
    6ba0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6ba4:	83 c4 10             	add    $0x10,%esp
    6ba7:	39 d8                	cmp    %ebx,%eax
    6ba9:	77 c5                	ja     6b70 <test_cant_use_protected_memory+0x340>
    6bab:	83 ec 0c             	sub    $0xc,%esp
    6bae:	68 02 04 00 00       	push   $0x402
    6bb3:	68 30 c8 00 00       	push   $0xc830
    6bb8:	56                   	push   %esi
    6bb9:	68 bc 03 01 00       	push   $0x103bc
    6bbe:	6a 01                	push   $0x1
    6bc0:	e8 db 57 00 00       	call   c3a0 <printf>
    6bc5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6bcc:	00 00 00 
    6bcf:	83 c4 20             	add    $0x20,%esp
    6bd2:	e9 db fc ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Update memory min for cgroup2
    ASSERT_TRUE(write_file(TEST_2_MEM_MIN, "100"));
    6bd7:	53                   	push   %ebx
    6bd8:	53                   	push   %ebx
    6bd9:	68 3f cf 00 00       	push   $0xcf3f
    6bde:	68 a0 ce 00 00       	push   $0xcea0
    6be3:	e8 f8 96 ff ff       	call   2e0 <write_file>
    6be8:	83 c4 10             	add    $0x10,%esp
    6beb:	85 c0                	test   %eax,%eax
    6bed:	75 70                	jne    6c5f <test_cant_use_protected_memory+0x42f>
    6bef:	31 db                	xor    %ebx,%ebx
    6bf1:	eb 1a                	jmp    6c0d <test_cant_use_protected_memory+0x3dd>
    6bf3:	90                   	nop
    6bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    6bf8:	83 ec 08             	sub    $0x8,%esp
    6bfb:	83 c3 01             	add    $0x1,%ebx
    6bfe:	68 18 c8 00 00       	push   $0xc818
    6c03:	6a 01                	push   $0x1
    6c05:	e8 96 57 00 00       	call   c3a0 <printf>
    6c0a:	83 c4 10             	add    $0x10,%esp
    6c0d:	83 ec 0c             	sub    $0xc,%esp
    6c10:	68 2c 07 01 00       	push   $0x1072c
    6c15:	e8 46 52 00 00       	call   be60 <strlen>
    6c1a:	89 c7                	mov    %eax,%edi
    6c1c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6c23:	e8 38 52 00 00       	call   be60 <strlen>
    6c28:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6c2c:	83 c4 10             	add    $0x10,%esp
    6c2f:	39 d8                	cmp    %ebx,%eax
    6c31:	77 c5                	ja     6bf8 <test_cant_use_protected_memory+0x3c8>
    6c33:	83 ec 0c             	sub    $0xc,%esp
    6c36:	68 05 04 00 00       	push   $0x405
    6c3b:	68 30 c8 00 00       	push   $0xc830
    6c40:	56                   	push   %esi
    6c41:	68 50 07 01 00       	push   $0x10750
    6c46:	6a 01                	push   $0x1
    6c48:	e8 53 57 00 00       	call   c3a0 <printf>
    6c4d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6c54:	00 00 00 
    6c57:	83 c4 20             	add    $0x20,%esp
    6c5a:	e9 53 fc ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "100\n"));
    6c5f:	50                   	push   %eax
    6c60:	50                   	push   %eax
    6c61:	6a 00                	push   $0x0
    6c63:	68 a0 ce 00 00       	push   $0xcea0
    6c68:	e8 b3 95 ff ff       	call   220 <read_file>
    6c6d:	5a                   	pop    %edx
    6c6e:	59                   	pop    %ecx
    6c6f:	68 6f ce 00 00       	push   $0xce6f
    6c74:	50                   	push   %eax
    6c75:	e8 06 51 00 00       	call   bd80 <strcmp>
    6c7a:	83 c4 10             	add    $0x10,%esp
    6c7d:	85 c0                	test   %eax,%eax
    6c7f:	74 6a                	je     6ceb <test_cant_use_protected_memory+0x4bb>
    6c81:	31 db                	xor    %ebx,%ebx
    6c83:	83 ec 0c             	sub    $0xc,%esp
    6c86:	68 9c 07 01 00       	push   $0x1079c
    6c8b:	e8 d0 51 00 00       	call   be60 <strlen>
    6c90:	89 c7                	mov    %eax,%edi
    6c92:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6c99:	e8 c2 51 00 00       	call   be60 <strlen>
    6c9e:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6ca2:	83 c4 10             	add    $0x10,%esp
    6ca5:	39 d8                	cmp    %ebx,%eax
    6ca7:	76 16                	jbe    6cbf <test_cant_use_protected_memory+0x48f>
    6ca9:	50                   	push   %eax
    6caa:	50                   	push   %eax
    6cab:	83 c3 01             	add    $0x1,%ebx
    6cae:	68 18 c8 00 00       	push   $0xc818
    6cb3:	6a 01                	push   $0x1
    6cb5:	e8 e6 56 00 00       	call   c3a0 <printf>
    6cba:	83 c4 10             	add    $0x10,%esp
    6cbd:	eb c4                	jmp    6c83 <test_cant_use_protected_memory+0x453>
    6cbf:	83 ec 0c             	sub    $0xc,%esp
    6cc2:	68 08 04 00 00       	push   $0x408
    6cc7:	68 30 c8 00 00       	push   $0xc830
    6ccc:	56                   	push   %esi
    6ccd:	68 cc 07 01 00       	push   $0x107cc
    6cd2:	6a 01                	push   $0x1
    6cd4:	e8 c7 56 00 00       	call   c3a0 <printf>
    6cd9:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6ce0:	00 00 00 
    6ce3:	83 c4 20             	add    $0x20,%esp
    6ce6:	e9 c7 fb ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Restore memory limit to original
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "0"));
    6ceb:	50                   	push   %eax
    6cec:	50                   	push   %eax
    6ced:	68 82 cc 00 00       	push   $0xcc82
    6cf2:	68 20 cb 00 00       	push   $0xcb20
    6cf7:	e8 e4 95 ff ff       	call   2e0 <write_file>
    6cfc:	83 c4 10             	add    $0x10,%esp
    6cff:	85 c0                	test   %eax,%eax
    6d01:	75 3e                	jne    6d41 <test_cant_use_protected_memory+0x511>
    6d03:	31 db                	xor    %ebx,%ebx
    6d05:	83 ec 0c             	sub    $0xc,%esp
    6d08:	68 24 08 01 00       	push   $0x10824
    6d0d:	e8 4e 51 00 00       	call   be60 <strlen>
    6d12:	89 c7                	mov    %eax,%edi
    6d14:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6d1b:	e8 40 51 00 00       	call   be60 <strlen>
    6d20:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6d24:	83 c4 10             	add    $0x10,%esp
    6d27:	39 d8                	cmp    %ebx,%eax
    6d29:	76 70                	jbe    6d9b <test_cant_use_protected_memory+0x56b>
    6d2b:	50                   	push   %eax
    6d2c:	50                   	push   %eax
    6d2d:	83 c3 01             	add    $0x1,%ebx
    6d30:	68 18 c8 00 00       	push   $0xc818
    6d35:	6a 01                	push   $0x1
    6d37:	e8 64 56 00 00       	call   c3a0 <printf>
    6d3c:	83 c4 10             	add    $0x10,%esp
    6d3f:	eb c4                	jmp    6d05 <test_cant_use_protected_memory+0x4d5>
    ASSERT_TRUE(write_file(TEST_2_MEM_MIN, "0"));
    6d41:	50                   	push   %eax
    6d42:	50                   	push   %eax
    6d43:	68 82 cc 00 00       	push   $0xcc82
    6d48:	68 a0 ce 00 00       	push   $0xcea0
    6d4d:	e8 8e 95 ff ff       	call   2e0 <write_file>
    6d52:	83 c4 10             	add    $0x10,%esp
    6d55:	85 c0                	test   %eax,%eax
    6d57:	0f 85 96 00 00 00    	jne    6df3 <test_cant_use_protected_memory+0x5c3>
    6d5d:	31 db                	xor    %ebx,%ebx
    6d5f:	83 ec 0c             	sub    $0xc,%esp
    6d62:	68 90 08 01 00       	push   $0x10890
    6d67:	e8 f4 50 00 00       	call   be60 <strlen>
    6d6c:	89 c7                	mov    %eax,%edi
    6d6e:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6d75:	e8 e6 50 00 00       	call   be60 <strlen>
    6d7a:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6d7e:	83 c4 10             	add    $0x10,%esp
    6d81:	39 d8                	cmp    %ebx,%eax
    6d83:	76 42                	jbe    6dc7 <test_cant_use_protected_memory+0x597>
    6d85:	57                   	push   %edi
    6d86:	57                   	push   %edi
    6d87:	83 c3 01             	add    $0x1,%ebx
    6d8a:	68 18 c8 00 00       	push   $0xc818
    6d8f:	6a 01                	push   $0x1
    6d91:	e8 0a 56 00 00       	call   c3a0 <printf>
    6d96:	83 c4 10             	add    $0x10,%esp
    6d99:	eb c4                	jmp    6d5f <test_cant_use_protected_memory+0x52f>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "100\n"));

    // Restore memory limit to original
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "0"));
    6d9b:	83 ec 0c             	sub    $0xc,%esp
    6d9e:	68 0b 04 00 00       	push   $0x40b
    6da3:	68 30 c8 00 00       	push   $0xc830
    6da8:	56                   	push   %esi
    6da9:	68 44 08 01 00       	push   $0x10844
    6dae:	6a 01                	push   $0x1
    6db0:	e8 eb 55 00 00       	call   c3a0 <printf>
    6db5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6dbc:	00 00 00 
    6dbf:	83 c4 20             	add    $0x20,%esp
    6dc2:	e9 eb fa ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>
    ASSERT_TRUE(write_file(TEST_2_MEM_MIN, "0"));
    6dc7:	83 ec 0c             	sub    $0xc,%esp
    6dca:	68 0c 04 00 00       	push   $0x40c
    6dcf:	68 30 c8 00 00       	push   $0xc830
    6dd4:	56                   	push   %esi
    6dd5:	68 b0 08 01 00       	push   $0x108b0
    6dda:	6a 01                	push   $0x1
    6ddc:	e8 bf 55 00 00       	call   c3a0 <printf>
    6de1:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6de8:	00 00 00 
    6deb:	83 c4 20             	add    $0x20,%esp
    6dee:	e9 bf fa ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "0\n"));
    6df3:	50                   	push   %eax
    6df4:	50                   	push   %eax
    6df5:	6a 00                	push   $0x0
    6df7:	68 20 cb 00 00       	push   $0xcb20
    6dfc:	e8 1f 94 ff ff       	call   220 <read_file>
    6e01:	5a                   	pop    %edx
    6e02:	59                   	pop    %ecx
    6e03:	68 e7 cd 00 00       	push   $0xcde7
    6e08:	50                   	push   %eax
    6e09:	e8 72 4f 00 00       	call   bd80 <strcmp>
    6e0e:	83 c4 10             	add    $0x10,%esp
    6e11:	85 c0                	test   %eax,%eax
    6e13:	74 3e                	je     6e53 <test_cant_use_protected_memory+0x623>
    6e15:	31 db                	xor    %ebx,%ebx
    6e17:	83 ec 0c             	sub    $0xc,%esp
    6e1a:	68 fc 08 01 00       	push   $0x108fc
    6e1f:	e8 3c 50 00 00       	call   be60 <strlen>
    6e24:	89 c7                	mov    %eax,%edi
    6e26:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6e2d:	e8 2e 50 00 00       	call   be60 <strlen>
    6e32:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6e36:	83 c4 10             	add    $0x10,%esp
    6e39:	39 d8                	cmp    %ebx,%eax
    6e3b:	76 7a                	jbe    6eb7 <test_cant_use_protected_memory+0x687>
    6e3d:	57                   	push   %edi
    6e3e:	57                   	push   %edi
    6e3f:	83 c3 01             	add    $0x1,%ebx
    6e42:	68 18 c8 00 00       	push   $0xc818
    6e47:	6a 01                	push   $0x1
    6e49:	e8 52 55 00 00       	call   c3a0 <printf>
    6e4e:	83 c4 10             	add    $0x10,%esp
    6e51:	eb c4                	jmp    6e17 <test_cant_use_protected_memory+0x5e7>
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "0\n"));
    6e53:	50                   	push   %eax
    6e54:	50                   	push   %eax
    6e55:	6a 00                	push   $0x0
    6e57:	68 a0 ce 00 00       	push   $0xcea0
    6e5c:	e8 bf 93 ff ff       	call   220 <read_file>
    6e61:	5a                   	pop    %edx
    6e62:	59                   	pop    %ecx
    6e63:	68 e7 cd 00 00       	push   $0xcde7
    6e68:	50                   	push   %eax
    6e69:	e8 12 4f 00 00       	call   bd80 <strcmp>
    6e6e:	83 c4 10             	add    $0x10,%esp
    6e71:	85 c0                	test   %eax,%eax
    6e73:	0f 84 96 00 00 00    	je     6f0f <test_cant_use_protected_memory+0x6df>
    6e79:	31 db                	xor    %ebx,%ebx
    6e7b:	83 ec 0c             	sub    $0xc,%esp
    6e7e:	68 80 09 01 00       	push   $0x10980
    6e83:	e8 d8 4f 00 00       	call   be60 <strlen>
    6e88:	89 c7                	mov    %eax,%edi
    6e8a:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6e91:	e8 ca 4f 00 00       	call   be60 <strlen>
    6e96:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6e9a:	83 c4 10             	add    $0x10,%esp
    6e9d:	39 d8                	cmp    %ebx,%eax
    6e9f:	76 42                	jbe    6ee3 <test_cant_use_protected_memory+0x6b3>
    6ea1:	57                   	push   %edi
    6ea2:	57                   	push   %edi
    6ea3:	83 c3 01             	add    $0x1,%ebx
    6ea6:	68 18 c8 00 00       	push   $0xc818
    6eab:	6a 01                	push   $0x1
    6ead:	e8 ee 54 00 00       	call   c3a0 <printf>
    6eb2:	83 c4 10             	add    $0x10,%esp
    6eb5:	eb c4                	jmp    6e7b <test_cant_use_protected_memory+0x64b>
    // Restore memory limit to original
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "0"));
    ASSERT_TRUE(write_file(TEST_2_MEM_MIN, "0"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "0\n"));
    6eb7:	83 ec 0c             	sub    $0xc,%esp
    6eba:	68 0f 04 00 00       	push   $0x40f
    6ebf:	68 30 c8 00 00       	push   $0xc830
    6ec4:	56                   	push   %esi
    6ec5:	68 28 09 01 00       	push   $0x10928
    6eca:	6a 01                	push   $0x1
    6ecc:	e8 cf 54 00 00       	call   c3a0 <printf>
    6ed1:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6ed8:	00 00 00 
    6edb:	83 c4 20             	add    $0x20,%esp
    6ede:	e9 cf f9 ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "0\n"));
    6ee3:	83 ec 0c             	sub    $0xc,%esp
    6ee6:	68 10 04 00 00       	push   $0x410
    6eeb:	68 30 c8 00 00       	push   $0xc830
    6ef0:	56                   	push   %esi
    6ef1:	68 ac 09 01 00       	push   $0x109ac
    6ef6:	6a 01                	push   $0x1
    6ef8:	e8 a3 54 00 00       	call   c3a0 <printf>
    6efd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6f04:	00 00 00 
    6f07:	83 c4 20             	add    $0x20,%esp
    6f0a:	e9 a3 f9 ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
    6f0f:	83 ec 0c             	sub    $0xc,%esp
    6f12:	6a 03                	push   $0x3
    6f14:	e8 57 95 ff ff       	call   470 <disable_controller>
    6f19:	83 c4 10             	add    $0x10,%esp
    6f1c:	85 c0                	test   %eax,%eax
    6f1e:	75 3e                	jne    6f5e <test_cant_use_protected_memory+0x72e>
    6f20:	31 db                	xor    %ebx,%ebx
    6f22:	83 ec 0c             	sub    $0xc,%esp
    6f25:	68 78 ce 00 00       	push   $0xce78
    6f2a:	e8 31 4f 00 00       	call   be60 <strlen>
    6f2f:	89 c7                	mov    %eax,%edi
    6f31:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6f38:	e8 23 4f 00 00       	call   be60 <strlen>
    6f3d:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6f41:	83 c4 10             	add    $0x10,%esp
    6f44:	39 d8                	cmp    %ebx,%eax
    6f46:	76 70                	jbe    6fb8 <test_cant_use_protected_memory+0x788>
    6f48:	51                   	push   %ecx
    6f49:	51                   	push   %ecx
    6f4a:	83 c3 01             	add    $0x1,%ebx
    6f4d:	68 18 c8 00 00       	push   $0xc818
    6f52:	6a 01                	push   $0x1
    6f54:	e8 47 54 00 00       	call   c3a0 <printf>
    6f59:	83 c4 10             	add    $0x10,%esp
    6f5c:	eb c4                	jmp    6f22 <test_cant_use_protected_memory+0x6f2>
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "-mem"));
    6f5e:	52                   	push   %edx
    6f5f:	52                   	push   %edx
    6f60:	31 db                	xor    %ebx,%ebx
    6f62:	68 b9 ce 00 00       	push   $0xceb9
    6f67:	68 00 05 01 00       	push   $0x10500
    6f6c:	e8 6f 93 ff ff       	call   2e0 <write_file>
    6f71:	83 c4 10             	add    $0x10,%esp
    6f74:	85 c0                	test   %eax,%eax
    6f76:	0f 85 36 f9 ff ff    	jne    68b2 <test_cant_use_protected_memory+0x82>
    6f7c:	83 ec 0c             	sub    $0xc,%esp
    6f7f:	68 04 0a 01 00       	push   $0x10a04
    6f84:	e8 d7 4e 00 00       	call   be60 <strlen>
    6f89:	89 c7                	mov    %eax,%edi
    6f8b:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    6f92:	e8 c9 4e 00 00       	call   be60 <strlen>
    6f97:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    6f9b:	83 c4 10             	add    $0x10,%esp
    6f9e:	39 d8                	cmp    %ebx,%eax
    6fa0:	76 42                	jbe    6fe4 <test_cant_use_protected_memory+0x7b4>
    6fa2:	50                   	push   %eax
    6fa3:	50                   	push   %eax
    6fa4:	83 c3 01             	add    $0x1,%ebx
    6fa7:	68 18 c8 00 00       	push   $0xc818
    6fac:	6a 01                	push   $0x1
    6fae:	e8 ed 53 00 00       	call   c3a0 <printf>
    6fb3:	83 c4 10             	add    $0x10,%esp
    6fb6:	eb c4                	jmp    6f7c <test_cant_use_protected_memory+0x74c>
    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "0\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_2_MEM_MIN, 0), "0\n"));

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
    6fb8:	83 ec 0c             	sub    $0xc,%esp
    6fbb:	68 13 04 00 00       	push   $0x413
    6fc0:	68 30 c8 00 00       	push   $0xc830
    6fc5:	56                   	push   %esi
    6fc6:	68 c0 01 01 00       	push   $0x101c0
    6fcb:	6a 01                	push   $0x1
    6fcd:	e8 ce 53 00 00       	call   c3a0 <printf>
    6fd2:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    6fd9:	00 00 00 
    6fdc:	83 c4 20             	add    $0x20,%esp
    6fdf:	e9 ce f8 ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "-mem"));
    6fe4:	83 ec 0c             	sub    $0xc,%esp
    6fe7:	68 14 04 00 00       	push   $0x414
    6fec:	68 30 c8 00 00       	push   $0xc830
    6ff1:	56                   	push   %esi
    6ff2:	68 38 0a 01 00       	push   $0x10a38
    6ff7:	6a 01                	push   $0x1
    6ff9:	e8 a2 53 00 00       	call   c3a0 <printf>
    6ffe:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7005:	00 00 00 
    7008:	83 c4 20             	add    $0x20,%esp
    700b:	e9 a2 f8 ff ff       	jmp    68b2 <test_cant_use_protected_memory+0x82>

00007010 <test_release_protected_memory_after_delete_cgroup>:
}

TEST(test_release_protected_memory_after_delete_cgroup)
{
    7010:	55                   	push   %ebp
    7011:	89 e5                	mov    %esp,%ebp
    7013:	57                   	push   %edi
    7014:	56                   	push   %esi
    7015:	53                   	push   %ebx
    7016:	8d 75 cc             	lea    -0x34(%ebp),%esi

      // get total amount of memory from memory controller core file (memory.stat) 
      mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
      kernel_total_mem = get_kernel_total_memory(mem_str_buf);

      memset(buf, 12, 0);
    7019:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    ASSERT_TRUE(disable_controller(MEM_CNT));
    ASSERT_TRUE(write_file(TEST_2_CGROUP_SUBTREE_CONTROL, "-mem"));
}

TEST(test_release_protected_memory_after_delete_cgroup)
{
    701c:	83 ec 5c             	sub    $0x5c,%esp
    int i = 0;
    char buf [12] = {0};
    701f:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    7026:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    702d:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    char * mem_str_buf = 0;
    uint kernel_total_mem = 0;
    //We want to reserve different amounts of memory (by precantage)
    float memory_reservations[] = {1.0, 0.75, 0.5, 0.25, 0.1, 0.05, 0.01};
    7034:	c7 45 cc 00 00 80 3f 	movl   $0x3f800000,-0x34(%ebp)
    703b:	c7 45 d0 00 00 40 3f 	movl   $0x3f400000,-0x30(%ebp)
    7042:	c7 45 d4 00 00 00 3f 	movl   $0x3f000000,-0x2c(%ebp)
    7049:	c7 45 d8 00 00 80 3e 	movl   $0x3e800000,-0x28(%ebp)
    7050:	c7 45 dc cd cc cc 3d 	movl   $0x3dcccccd,-0x24(%ebp)
    7057:	c7 45 e0 cd cc 4c 3d 	movl   $0x3d4ccccd,-0x20(%ebp)
    705e:	c7 45 e4 0a d7 23 3c 	movl   $0x3c23d70a,-0x1c(%ebp)

    // Create temp cgroup and enable memory controllers
    for(i = 0; i < sizeof(memory_reservations) / sizeof(float); i++)
    {
      ASSERT_FALSE(mkdir(TEST_TMP));
    7065:	83 ec 0c             	sub    $0xc,%esp
    7068:	68 be ce 00 00       	push   $0xcebe
    706d:	e8 de 51 00 00       	call   c250 <mkdir>
    7072:	83 c4 10             	add    $0x10,%esp
    7075:	85 c0                	test   %eax,%eax
    7077:	0f 85 9b 01 00 00    	jne    7218 <test_release_protected_memory_after_delete_cgroup+0x208>
      ASSERT_TRUE(enable_controller(MEM_CNT));
    707d:	83 ec 0c             	sub    $0xc,%esp
    7080:	6a 03                	push   $0x3
    7082:	e8 99 93 ff ff       	call   420 <enable_controller>
    7087:	83 c4 10             	add    $0x10,%esp
    708a:	85 c0                	test   %eax,%eax
    708c:	0f 84 fe 01 00 00    	je     7290 <test_release_protected_memory_after_delete_cgroup+0x280>
      ASSERT_TRUE(write_file(TEST_TMP_CGROUP_SUBTREE_CONTROL, "+mem"));
    7092:	83 ec 08             	sub    $0x8,%esp
    7095:	68 9b ce 00 00       	push   $0xce9b
    709a:	68 d0 0a 01 00       	push   $0x10ad0
    709f:	e8 3c 92 ff ff       	call   2e0 <write_file>
    70a4:	83 c4 10             	add    $0x10,%esp
    70a7:	85 c0                	test   %eax,%eax
    70a9:	0f 84 59 02 00 00    	je     7308 <test_release_protected_memory_after_delete_cgroup+0x2f8>

      // get total amount of memory from memory controller core file (memory.stat) 
      mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
    70af:	83 ec 08             	sub    $0x8,%esp
    70b2:	6a 00                	push   $0x0
    70b4:	68 39 cb 00 00       	push   $0xcb39
    70b9:	e8 62 91 ff ff       	call   220 <read_file>
//Parse memory.stat info and fetch "kernel" value
int get_kernel_total_memory(char * mem_stat_info)
{
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");
    70be:	59                   	pop    %ecx
    70bf:	5f                   	pop    %edi
    70c0:	68 3f c8 00 00       	push   $0xc83f
    70c5:	50                   	push   %eax
    70c6:	e8 45 50 00 00       	call   c110 <strstr>

  return atoi(kernel_value);
    70cb:	89 04 24             	mov    %eax,(%esp)
    70ce:	e8 cd 4e 00 00       	call   bfa0 <atoi>

      // get total amount of memory from memory controller core file (memory.stat) 
      mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
      kernel_total_mem = get_kernel_total_memory(mem_str_buf);

      memset(buf, 12, 0);
    70d3:	83 c4 0c             	add    $0xc,%esp
{
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");

  return atoi(kernel_value);
    70d6:	89 c7                	mov    %eax,%edi

      // get total amount of memory from memory controller core file (memory.stat) 
      mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
      kernel_total_mem = get_kernel_total_memory(mem_str_buf);

      memset(buf, 12, 0);
    70d8:	6a 00                	push   $0x0
    70da:	6a 0c                	push   $0xc
    70dc:	53                   	push   %ebx
    70dd:	e8 ae 4d 00 00       	call   be90 <memset>
      itoa(buf,  kernel_total_mem * memory_reservations[i]);
    70e2:	89 7d a0             	mov    %edi,-0x60(%ebp)
    70e5:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    70ec:	df 6d a0             	fildll -0x60(%ebp)
    70ef:	58                   	pop    %eax
    70f0:	d9 55 a0             	fsts   -0x60(%ebp)
    70f3:	5a                   	pop    %edx
    70f4:	d8 0e                	fmuls  (%esi)
    70f6:	d9 7d b2             	fnstcw -0x4e(%ebp)
    70f9:	0f b7 45 b2          	movzwl -0x4e(%ebp),%eax
    70fd:	b4 0c                	mov    $0xc,%ah
    70ff:	d9 55 a8             	fsts   -0x58(%ebp)
    7102:	66 89 45 b0          	mov    %ax,-0x50(%ebp)
    7106:	d9 6d b0             	fldcw  -0x50(%ebp)
    7109:	db 5d ac             	fistpl -0x54(%ebp)
    710c:	d9 6d b2             	fldcw  -0x4e(%ebp)
    710f:	8b 45 ac             	mov    -0x54(%ebp),%eax
    7112:	50                   	push   %eax
    7113:	53                   	push   %ebx
    7114:	e8 f7 4e 00 00       	call   c010 <itoa>

      // Protect portion of memory for tmpcgroup
      ASSERT_TRUE(write_file(TEST_TMP_MEM_MIN, buf));
    7119:	59                   	pop    %ecx
    711a:	5f                   	pop    %edi
    711b:	53                   	push   %ebx
    711c:	68 de ce 00 00       	push   $0xcede
    7121:	e8 ba 91 ff ff       	call   2e0 <write_file>
    7126:	83 c4 10             	add    $0x10,%esp
    7129:	85 c0                	test   %eax,%eax
    712b:	0f 84 4f 02 00 00    	je     7380 <test_release_protected_memory_after_delete_cgroup+0x370>
      
      // Check changes
      ASSERT_FALSE(strncmp(read_file(TEST_TMP_MEM_MIN, 0), buf, strlen(buf)));
    7131:	83 ec 0c             	sub    $0xc,%esp
    7134:	53                   	push   %ebx
    7135:	e8 26 4d 00 00       	call   be60 <strlen>
    713a:	89 c7                	mov    %eax,%edi
    713c:	58                   	pop    %eax
    713d:	5a                   	pop    %edx
    713e:	6a 00                	push   $0x0
    7140:	68 de ce 00 00       	push   $0xcede
    7145:	e8 d6 90 ff ff       	call   220 <read_file>
    714a:	83 c4 0c             	add    $0xc,%esp
    714d:	57                   	push   %edi
    714e:	53                   	push   %ebx
    714f:	50                   	push   %eax
    7150:	e8 7b 4c 00 00       	call   bdd0 <strncmp>
    7155:	83 c4 10             	add    $0x10,%esp
    7158:	85 c0                	test   %eax,%eax
    715a:	0f 85 98 02 00 00    	jne    73f8 <test_release_protected_memory_after_delete_cgroup+0x3e8>
      /* Here we change the value we want to reserve to be total kernel's memory -  X + page_size + 1.
        - Where X is the amount we reserved 
        - page_size is the kernel pagesize we use to exceed the amount of available space
        - +1 is used in case X is a round value (of 4k page size) so addinf PGSIZE won't exceed
          the available memory space.This is a special case where +1 will overflow it for sure.*/
      memset(buf, 12, 0);
    7160:	83 ec 04             	sub    $0x4,%esp
    7163:	6a 00                	push   $0x0
    7165:	6a 0c                	push   $0xc
    7167:	53                   	push   %ebx
    7168:	e8 23 4d 00 00       	call   be90 <memset>
      itoa(buf,  kernel_total_mem - 
    716d:	d9 7d b2             	fnstcw -0x4e(%ebp)
    7170:	d9 45 a0             	flds   -0x60(%ebp)
    7173:	58                   	pop    %eax
    7174:	d8 65 a8             	fsubs  -0x58(%ebp)
    7177:	0f b7 45 b2          	movzwl -0x4e(%ebp),%eax
    717b:	5a                   	pop    %edx
    717c:	b4 0c                	mov    $0xc,%ah
    717e:	66 89 45 b0          	mov    %ax,-0x50(%ebp)
    7182:	d8 05 9c 1a 01 00    	fadds  0x11a9c
    7188:	d8 05 98 1a 01 00    	fadds  0x11a98
    718e:	d9 6d b0             	fldcw  -0x50(%ebp)
    7191:	db 5d ac             	fistpl -0x54(%ebp)
    7194:	d9 6d b2             	fldcw  -0x4e(%ebp)
    7197:	8b 45 ac             	mov    -0x54(%ebp),%eax
    719a:	50                   	push   %eax
    719b:	53                   	push   %ebx
    719c:	e8 6f 4e 00 00       	call   c010 <itoa>
              (kernel_total_mem * memory_reservations[i]) + PGSIZE + 1);
      
      // Try to protect memory for cgroup1 this need to fail
      ASSERT_FALSE(write_file(TEST_1_MEM_MIN, buf));
    71a1:	59                   	pop    %ecx
    71a2:	5f                   	pop    %edi
    71a3:	53                   	push   %ebx
    71a4:	68 20 cb 00 00       	push   $0xcb20
    71a9:	e8 32 91 ff ff       	call   2e0 <write_file>
    71ae:	83 c4 10             	add    $0x10,%esp
    71b1:	85 c0                	test   %eax,%eax
    71b3:	0f 85 b7 02 00 00    	jne    7470 <test_release_protected_memory_after_delete_cgroup+0x460>

      ASSERT_FALSE(unlink(TEST_TMP));
    71b9:	83 ec 0c             	sub    $0xc,%esp
    71bc:	68 be ce 00 00       	push   $0xcebe
    71c1:	e8 72 50 00 00       	call   c238 <unlink>
    71c6:	83 c4 10             	add    $0x10,%esp
    71c9:	85 c0                	test   %eax,%eax
    71cb:	0f 85 17 03 00 00    	jne    74e8 <test_release_protected_memory_after_delete_cgroup+0x4d8>
      // Try to protect memory for cgroup1
      ASSERT_TRUE(write_file(TEST_1_MEM_MIN, buf));
    71d1:	83 ec 08             	sub    $0x8,%esp
    71d4:	53                   	push   %ebx
    71d5:	68 20 cb 00 00       	push   $0xcb20
    71da:	e8 01 91 ff ff       	call   2e0 <write_file>
    71df:	83 c4 10             	add    $0x10,%esp
    71e2:	85 c0                	test   %eax,%eax
    71e4:	0f 84 76 03 00 00    	je     7560 <test_release_protected_memory_after_delete_cgroup+0x550>

      // Disable memory controllers
      ASSERT_TRUE(disable_controller(MEM_CNT));
    71ea:	83 ec 0c             	sub    $0xc,%esp
    71ed:	6a 03                	push   $0x3
    71ef:	e8 7c 92 ff ff       	call   470 <disable_controller>
    71f4:	83 c4 10             	add    $0x10,%esp
    71f7:	85 c0                	test   %eax,%eax
    71f9:	0f 84 d9 03 00 00    	je     75d8 <test_release_protected_memory_after_delete_cgroup+0x5c8>
    uint kernel_total_mem = 0;
    //We want to reserve different amounts of memory (by precantage)
    float memory_reservations[] = {1.0, 0.75, 0.5, 0.25, 0.1, 0.05, 0.01};

    // Create temp cgroup and enable memory controllers
    for(i = 0; i < sizeof(memory_reservations) / sizeof(float); i++)
    71ff:	8d 45 e8             	lea    -0x18(%ebp),%eax
    7202:	83 c6 04             	add    $0x4,%esi
    7205:	39 f0                	cmp    %esi,%eax
    7207:	0f 85 58 fe ff ff    	jne    7065 <test_release_protected_memory_after_delete_cgroup+0x55>

      // Disable memory controllers
      ASSERT_TRUE(disable_controller(MEM_CNT));
    }

}
    720d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7210:	5b                   	pop    %ebx
    7211:	5e                   	pop    %esi
    7212:	5f                   	pop    %edi
    7213:	5d                   	pop    %ebp
    7214:	c3                   	ret    
    7215:	8d 76 00             	lea    0x0(%esi),%esi
    7218:	31 db                	xor    %ebx,%ebx
    721a:	eb 19                	jmp    7235 <test_release_protected_memory_after_delete_cgroup+0x225>
    721c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    float memory_reservations[] = {1.0, 0.75, 0.5, 0.25, 0.1, 0.05, 0.01};

    // Create temp cgroup and enable memory controllers
    for(i = 0; i < sizeof(memory_reservations) / sizeof(float); i++)
    {
      ASSERT_FALSE(mkdir(TEST_TMP));
    7220:	83 ec 08             	sub    $0x8,%esp
    7223:	83 c3 01             	add    $0x1,%ebx
    7226:	68 18 c8 00 00       	push   $0xc818
    722b:	6a 01                	push   $0x1
    722d:	e8 6e 51 00 00       	call   c3a0 <printf>
    7232:	83 c4 10             	add    $0x10,%esp
    7235:	83 ec 0c             	sub    $0xc,%esp
    7238:	68 ce ce 00 00       	push   $0xcece
    723d:	e8 1e 4c 00 00       	call   be60 <strlen>
    7242:	89 c6                	mov    %eax,%esi
    7244:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    724b:	e8 10 4c 00 00       	call   be60 <strlen>
    7250:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    7254:	83 c4 10             	add    $0x10,%esp
    7257:	39 d8                	cmp    %ebx,%eax
    7259:	77 c5                	ja     7220 <test_release_protected_memory_after_delete_cgroup+0x210>
    725b:	83 ec 0c             	sub    $0xc,%esp
    725e:	68 23 04 00 00       	push   $0x423
    7263:	68 30 c8 00 00       	push   $0xc830
    7268:	ff 75 08             	pushl  0x8(%ebp)
    726b:	68 94 0a 01 00       	push   $0x10a94
    7270:	6a 01                	push   $0x1
    7272:	e8 29 51 00 00       	call   c3a0 <printf>
    7277:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    727e:	00 00 00 
    7281:	83 c4 20             	add    $0x20,%esp
    7284:	eb 87                	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    7286:	8d 76 00             	lea    0x0(%esi),%esi
    7289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    7290:	31 db                	xor    %ebx,%ebx
    7292:	eb 19                	jmp    72ad <test_release_protected_memory_after_delete_cgroup+0x29d>
    7294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      ASSERT_TRUE(enable_controller(MEM_CNT));
    7298:	83 ec 08             	sub    $0x8,%esp
    729b:	83 c3 01             	add    $0x1,%ebx
    729e:	68 18 c8 00 00       	push   $0xc818
    72a3:	6a 01                	push   $0x1
    72a5:	e8 f6 50 00 00       	call   c3a0 <printf>
    72aa:	83 c4 10             	add    $0x10,%esp
    72ad:	83 ec 0c             	sub    $0xc,%esp
    72b0:	68 46 ce 00 00       	push   $0xce46
    72b5:	e8 a6 4b 00 00       	call   be60 <strlen>
    72ba:	89 c6                	mov    %eax,%esi
    72bc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    72c3:	e8 98 4b 00 00       	call   be60 <strlen>
    72c8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    72cc:	83 c4 10             	add    $0x10,%esp
    72cf:	39 d8                	cmp    %ebx,%eax
    72d1:	77 c5                	ja     7298 <test_release_protected_memory_after_delete_cgroup+0x288>
    72d3:	83 ec 0c             	sub    $0xc,%esp
    72d6:	68 24 04 00 00       	push   $0x424
    72db:	68 30 c8 00 00       	push   $0xc830
    72e0:	ff 75 08             	pushl  0x8(%ebp)
    72e3:	68 84 fe 00 00       	push   $0xfe84
    72e8:	6a 01                	push   $0x1
    72ea:	e8 b1 50 00 00       	call   c3a0 <printf>
    72ef:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    72f6:	00 00 00 
    72f9:	83 c4 20             	add    $0x20,%esp
    72fc:	e9 0c ff ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    7301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    7308:	31 db                	xor    %ebx,%ebx
    730a:	eb 19                	jmp    7325 <test_release_protected_memory_after_delete_cgroup+0x315>
    730c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      ASSERT_TRUE(write_file(TEST_TMP_CGROUP_SUBTREE_CONTROL, "+mem"));
    7310:	83 ec 08             	sub    $0x8,%esp
    7313:	83 c3 01             	add    $0x1,%ebx
    7316:	68 18 c8 00 00       	push   $0xc818
    731b:	6a 01                	push   $0x1
    731d:	e8 7e 50 00 00       	call   c3a0 <printf>
    7322:	83 c4 10             	add    $0x10,%esp
    7325:	83 ec 0c             	sub    $0xc,%esp
    7328:	68 f8 0a 01 00       	push   $0x10af8
    732d:	e8 2e 4b 00 00       	call   be60 <strlen>
    7332:	89 c6                	mov    %eax,%esi
    7334:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    733b:	e8 20 4b 00 00       	call   be60 <strlen>
    7340:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    7344:	83 c4 10             	add    $0x10,%esp
    7347:	39 d8                	cmp    %ebx,%eax
    7349:	77 c5                	ja     7310 <test_release_protected_memory_after_delete_cgroup+0x300>
    734b:	83 ec 0c             	sub    $0xc,%esp
    734e:	68 25 04 00 00       	push   $0x425
    7353:	68 30 c8 00 00       	push   $0xc830
    7358:	ff 75 08             	pushl  0x8(%ebp)
    735b:	68 2c 0b 01 00       	push   $0x10b2c
    7360:	6a 01                	push   $0x1
    7362:	e8 39 50 00 00       	call   c3a0 <printf>
    7367:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    736e:	00 00 00 
    7371:	83 c4 20             	add    $0x20,%esp
    7374:	e9 94 fe ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    7379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    7380:	31 db                	xor    %ebx,%ebx
    7382:	eb 19                	jmp    739d <test_release_protected_memory_after_delete_cgroup+0x38d>
    7384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

      memset(buf, 12, 0);
      itoa(buf,  kernel_total_mem * memory_reservations[i]);

      // Protect portion of memory for tmpcgroup
      ASSERT_TRUE(write_file(TEST_TMP_MEM_MIN, buf));
    7388:	83 ec 08             	sub    $0x8,%esp
    738b:	83 c3 01             	add    $0x1,%ebx
    738e:	68 18 c8 00 00       	push   $0xc818
    7393:	6a 01                	push   $0x1
    7395:	e8 06 50 00 00       	call   c3a0 <printf>
    739a:	83 c4 10             	add    $0x10,%esp
    739d:	83 ec 0c             	sub    $0xc,%esp
    73a0:	68 8c 0b 01 00       	push   $0x10b8c
    73a5:	e8 b6 4a 00 00       	call   be60 <strlen>
    73aa:	89 c6                	mov    %eax,%esi
    73ac:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    73b3:	e8 a8 4a 00 00       	call   be60 <strlen>
    73b8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    73bc:	83 c4 10             	add    $0x10,%esp
    73bf:	39 d8                	cmp    %ebx,%eax
    73c1:	77 c5                	ja     7388 <test_release_protected_memory_after_delete_cgroup+0x378>
    73c3:	83 ec 0c             	sub    $0xc,%esp
    73c6:	68 2f 04 00 00       	push   $0x42f
    73cb:	68 30 c8 00 00       	push   $0xc830
    73d0:	ff 75 08             	pushl  0x8(%ebp)
    73d3:	68 b0 0b 01 00       	push   $0x10bb0
    73d8:	6a 01                	push   $0x1
    73da:	e8 c1 4f 00 00       	call   c3a0 <printf>
    73df:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    73e6:	00 00 00 
    73e9:	83 c4 20             	add    $0x20,%esp
    73ec:	e9 1c fe ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    73f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    73f8:	31 db                	xor    %ebx,%ebx
    73fa:	eb 19                	jmp    7415 <test_release_protected_memory_after_delete_cgroup+0x405>
    73fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      
      // Check changes
      ASSERT_FALSE(strncmp(read_file(TEST_TMP_MEM_MIN, 0), buf, strlen(buf)));
    7400:	83 ec 08             	sub    $0x8,%esp
    7403:	83 c3 01             	add    $0x1,%ebx
    7406:	68 18 c8 00 00       	push   $0xc818
    740b:	6a 01                	push   $0x1
    740d:	e8 8e 4f 00 00       	call   c3a0 <printf>
    7412:	83 c4 10             	add    $0x10,%esp
    7415:	83 ec 0c             	sub    $0xc,%esp
    7418:	68 fc 0b 01 00       	push   $0x10bfc
    741d:	e8 3e 4a 00 00       	call   be60 <strlen>
    7422:	89 c6                	mov    %eax,%esi
    7424:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    742b:	e8 30 4a 00 00       	call   be60 <strlen>
    7430:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    7434:	83 c4 10             	add    $0x10,%esp
    7437:	39 d8                	cmp    %ebx,%eax
    7439:	77 c5                	ja     7400 <test_release_protected_memory_after_delete_cgroup+0x3f0>
    743b:	83 ec 0c             	sub    $0xc,%esp
    743e:	68 32 04 00 00       	push   $0x432
    7443:	68 30 c8 00 00       	push   $0xc830
    7448:	ff 75 08             	pushl  0x8(%ebp)
    744b:	68 38 0c 01 00       	push   $0x10c38
    7450:	6a 01                	push   $0x1
    7452:	e8 49 4f 00 00       	call   c3a0 <printf>
    7457:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    745e:	00 00 00 
    7461:	83 c4 20             	add    $0x20,%esp
    7464:	e9 a4 fd ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    7469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    7470:	31 db                	xor    %ebx,%ebx
    7472:	eb 19                	jmp    748d <test_release_protected_memory_after_delete_cgroup+0x47d>
    7474:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      memset(buf, 12, 0);
      itoa(buf,  kernel_total_mem - 
              (kernel_total_mem * memory_reservations[i]) + PGSIZE + 1);
      
      // Try to protect memory for cgroup1 this need to fail
      ASSERT_FALSE(write_file(TEST_1_MEM_MIN, buf));
    7478:	83 ec 08             	sub    $0x8,%esp
    747b:	83 c3 01             	add    $0x1,%ebx
    747e:	68 18 c8 00 00       	push   $0xc818
    7483:	6a 01                	push   $0x1
    7485:	e8 16 4f 00 00       	call   c3a0 <printf>
    748a:	83 c4 10             	add    $0x10,%esp
    748d:	83 ec 0c             	sub    $0xc,%esp
    7490:	68 b8 05 01 00       	push   $0x105b8
    7495:	e8 c6 49 00 00       	call   be60 <strlen>
    749a:	89 c6                	mov    %eax,%esi
    749c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    74a3:	e8 b8 49 00 00       	call   be60 <strlen>
    74a8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    74ac:	83 c4 10             	add    $0x10,%esp
    74af:	39 d8                	cmp    %ebx,%eax
    74b1:	77 c5                	ja     7478 <test_release_protected_memory_after_delete_cgroup+0x468>
    74b3:	83 ec 0c             	sub    $0xc,%esp
    74b6:	68 3e 04 00 00       	push   $0x43e
    74bb:	68 30 c8 00 00       	push   $0xc830
    74c0:	ff 75 08             	pushl  0x8(%ebp)
    74c3:	68 9c 0c 01 00       	push   $0x10c9c
    74c8:	6a 01                	push   $0x1
    74ca:	e8 d1 4e 00 00       	call   c3a0 <printf>
    74cf:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    74d6:	00 00 00 
    74d9:	83 c4 20             	add    $0x20,%esp
    74dc:	e9 2c fd ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    74e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    74e8:	31 db                	xor    %ebx,%ebx
    74ea:	eb 19                	jmp    7505 <test_release_protected_memory_after_delete_cgroup+0x4f5>
    74ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

      ASSERT_FALSE(unlink(TEST_TMP));
    74f0:	83 ec 08             	sub    $0x8,%esp
    74f3:	83 c3 01             	add    $0x1,%ebx
    74f6:	68 18 c8 00 00       	push   $0xc818
    74fb:	6a 01                	push   $0x1
    74fd:	e8 9e 4e 00 00       	call   c3a0 <printf>
    7502:	83 c4 10             	add    $0x10,%esp
    7505:	83 ec 0c             	sub    $0xc,%esp
    7508:	68 f9 ce 00 00       	push   $0xcef9
    750d:	e8 4e 49 00 00       	call   be60 <strlen>
    7512:	89 c6                	mov    %eax,%esi
    7514:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    751b:	e8 40 49 00 00       	call   be60 <strlen>
    7520:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    7524:	83 c4 10             	add    $0x10,%esp
    7527:	39 d8                	cmp    %ebx,%eax
    7529:	77 c5                	ja     74f0 <test_release_protected_memory_after_delete_cgroup+0x4e0>
    752b:	83 ec 0c             	sub    $0xc,%esp
    752e:	68 40 04 00 00       	push   $0x440
    7533:	68 30 c8 00 00       	push   $0xc830
    7538:	ff 75 08             	pushl  0x8(%ebp)
    753b:	68 e8 0c 01 00       	push   $0x10ce8
    7540:	6a 01                	push   $0x1
    7542:	e8 59 4e 00 00       	call   c3a0 <printf>
    7547:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    754e:	00 00 00 
    7551:	83 c4 20             	add    $0x20,%esp
    7554:	e9 b4 fc ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    7559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    7560:	31 db                	xor    %ebx,%ebx
    7562:	eb 19                	jmp    757d <test_release_protected_memory_after_delete_cgroup+0x56d>
    7564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      // Try to protect memory for cgroup1
      ASSERT_TRUE(write_file(TEST_1_MEM_MIN, buf));
    7568:	83 ec 08             	sub    $0x8,%esp
    756b:	83 c3 01             	add    $0x1,%ebx
    756e:	68 18 c8 00 00       	push   $0xc818
    7573:	6a 01                	push   $0x1
    7575:	e8 26 4e 00 00       	call   c3a0 <printf>
    757a:	83 c4 10             	add    $0x10,%esp
    757d:	83 ec 0c             	sub    $0xc,%esp
    7580:	68 b8 05 01 00       	push   $0x105b8
    7585:	e8 d6 48 00 00       	call   be60 <strlen>
    758a:	89 c6                	mov    %eax,%esi
    758c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7593:	e8 c8 48 00 00       	call   be60 <strlen>
    7598:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    759c:	83 c4 10             	add    $0x10,%esp
    759f:	39 d8                	cmp    %ebx,%eax
    75a1:	77 c5                	ja     7568 <test_release_protected_memory_after_delete_cgroup+0x558>
    75a3:	83 ec 0c             	sub    $0xc,%esp
    75a6:	68 42 04 00 00       	push   $0x442
    75ab:	68 30 c8 00 00       	push   $0xc830
    75b0:	ff 75 08             	pushl  0x8(%ebp)
    75b3:	68 d8 05 01 00       	push   $0x105d8
    75b8:	6a 01                	push   $0x1
    75ba:	e8 e1 4d 00 00       	call   c3a0 <printf>
    75bf:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    75c6:	00 00 00 
    75c9:	83 c4 20             	add    $0x20,%esp
    75cc:	e9 3c fc ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    75d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    75d8:	31 db                	xor    %ebx,%ebx
    75da:	eb 19                	jmp    75f5 <test_release_protected_memory_after_delete_cgroup+0x5e5>
    75dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

      // Disable memory controllers
      ASSERT_TRUE(disable_controller(MEM_CNT));
    75e0:	83 ec 08             	sub    $0x8,%esp
    75e3:	83 c3 01             	add    $0x1,%ebx
    75e6:	68 18 c8 00 00       	push   $0xc818
    75eb:	6a 01                	push   $0x1
    75ed:	e8 ae 4d 00 00       	call   c3a0 <printf>
    75f2:	83 c4 10             	add    $0x10,%esp
    75f5:	83 ec 0c             	sub    $0xc,%esp
    75f8:	68 78 ce 00 00       	push   $0xce78
    75fd:	e8 5e 48 00 00       	call   be60 <strlen>
    7602:	89 c6                	mov    %eax,%esi
    7604:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    760b:	e8 50 48 00 00       	call   be60 <strlen>
    7610:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    7614:	83 c4 10             	add    $0x10,%esp
    7617:	39 d8                	cmp    %ebx,%eax
    7619:	77 c5                	ja     75e0 <test_release_protected_memory_after_delete_cgroup+0x5d0>
    761b:	83 ec 0c             	sub    $0xc,%esp
    761e:	68 45 04 00 00       	push   $0x445
    7623:	68 30 c8 00 00       	push   $0xc830
    7628:	ff 75 08             	pushl  0x8(%ebp)
    762b:	68 c0 01 01 00       	push   $0x101c0
    7630:	6a 01                	push   $0x1
    7632:	e8 69 4d 00 00       	call   c3a0 <printf>
    7637:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    763e:	00 00 00 
    7641:	83 c4 20             	add    $0x20,%esp
    7644:	e9 c4 fb ff ff       	jmp    720d <test_release_protected_memory_after_delete_cgroup+0x1fd>
    7649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00007650 <test_cant_move_under_mem_limit>:
    }

}

TEST(test_cant_move_under_mem_limit)
{
    7650:	55                   	push   %ebp
    7651:	89 e5                	mov    %esp,%ebp
    7653:	57                   	push   %edi
    7654:	56                   	push   %esi
    7655:	53                   	push   %ebx
    // Attempt to transfer a process that has allocated MEM_SIZE bytes from one cgroup to another.
    // The attempt should fail since there is no enough memory to protect for the source cgroup.
    char buf [12];
    itoa(buf, MEM_SIZE);
    7656:	8d 5d dc             	lea    -0x24(%ebp),%ebx
    }

}

TEST(test_cant_move_under_mem_limit)
{
    7659:	83 ec 24             	sub    $0x24,%esp
    765c:	8b 75 08             	mov    0x8(%ebp),%esi
    // Attempt to transfer a process that has allocated MEM_SIZE bytes from one cgroup to another.
    // The attempt should fail since there is no enough memory to protect for the source cgroup.
    char buf [12];
    itoa(buf, MEM_SIZE);
    765f:	68 00 00 c0 0d       	push   $0xdc00000
    7664:	53                   	push   %ebx
    7665:	e8 a6 49 00 00       	call   c010 <itoa>

    // Enable memory controllers
    ASSERT_TRUE(enable_controller(MEM_CNT));
    766a:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
    7671:	e8 aa 8d ff ff       	call   420 <enable_controller>
    7676:	83 c4 10             	add    $0x10,%esp
    7679:	85 c0                	test   %eax,%eax
    767b:	75 7b                	jne    76f8 <test_cant_move_under_mem_limit+0xa8>
    767d:	31 db                	xor    %ebx,%ebx
    767f:	eb 1c                	jmp    769d <test_cant_move_under_mem_limit+0x4d>
    7681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    7688:	83 ec 08             	sub    $0x8,%esp
    768b:	83 c3 01             	add    $0x1,%ebx
    768e:	68 18 c8 00 00       	push   $0xc818
    7693:	6a 01                	push   $0x1
    7695:	e8 06 4d 00 00       	call   c3a0 <printf>
    769a:	83 c4 10             	add    $0x10,%esp
    769d:	83 ec 0c             	sub    $0xc,%esp
    76a0:	68 46 ce 00 00       	push   $0xce46
    76a5:	e8 b6 47 00 00       	call   be60 <strlen>
    76aa:	89 c7                	mov    %eax,%edi
    76ac:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    76b3:	e8 a8 47 00 00       	call   be60 <strlen>
    76b8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    76bc:	83 c4 10             	add    $0x10,%esp
    76bf:	39 d8                	cmp    %ebx,%eax
    76c1:	77 c5                	ja     7688 <test_cant_move_under_mem_limit+0x38>
    76c3:	83 ec 0c             	sub    $0xc,%esp
    76c6:	68 52 04 00 00       	push   $0x452
    76cb:	68 30 c8 00 00       	push   $0xc830
    76d0:	56                   	push   %esi
    76d1:	68 84 fe 00 00       	push   $0xfe84
    76d6:	6a 01                	push   $0x1
    76d8:	e8 c3 4c 00 00       	call   c3a0 <printf>
    76dd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    76e4:	00 00 00 
    76e7:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE((int)sbrk(-grow) == -1);
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
}
    76ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    76ed:	5b                   	pop    %ebx
    76ee:	5e                   	pop    %esi
    76ef:	5f                   	pop    %edi
    76f0:	5d                   	pop    %ebp
    76f1:	c3                   	ret    
    76f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Enable memory controllers
    ASSERT_TRUE(enable_controller(MEM_CNT));

    // Protect all memory for cgroup1
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, buf));
    76f8:	83 ec 08             	sub    $0x8,%esp
    76fb:	53                   	push   %ebx
    76fc:	68 20 cb 00 00       	push   $0xcb20
    7701:	e8 da 8b ff ff       	call   2e0 <write_file>
    7706:	83 c4 10             	add    $0x10,%esp
    7709:	85 c0                	test   %eax,%eax
    770b:	75 7b                	jne    7788 <test_cant_move_under_mem_limit+0x138>
    770d:	31 db                	xor    %ebx,%ebx
    770f:	eb 1c                	jmp    772d <test_cant_move_under_mem_limit+0xdd>
    7711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    7718:	83 ec 08             	sub    $0x8,%esp
    771b:	83 c3 01             	add    $0x1,%ebx
    771e:	68 18 c8 00 00       	push   $0xc818
    7723:	6a 01                	push   $0x1
    7725:	e8 76 4c 00 00       	call   c3a0 <printf>
    772a:	83 c4 10             	add    $0x10,%esp
    772d:	83 ec 0c             	sub    $0xc,%esp
    7730:	68 b8 05 01 00       	push   $0x105b8
    7735:	e8 26 47 00 00       	call   be60 <strlen>
    773a:	89 c7                	mov    %eax,%edi
    773c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7743:	e8 18 47 00 00       	call   be60 <strlen>
    7748:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    774c:	83 c4 10             	add    $0x10,%esp
    774f:	39 d8                	cmp    %ebx,%eax
    7751:	77 c5                	ja     7718 <test_cant_move_under_mem_limit+0xc8>
    7753:	83 ec 0c             	sub    $0xc,%esp
    7756:	68 55 04 00 00       	push   $0x455
    775b:	68 30 c8 00 00       	push   $0xc830
    7760:	56                   	push   %esi
    7761:	68 d8 05 01 00       	push   $0x105d8
    7766:	6a 01                	push   $0x1
    7768:	e8 33 4c 00 00       	call   c3a0 <printf>
    776d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7774:	00 00 00 
    7777:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE((int)sbrk(-grow) == -1);
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
}
    777a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    777d:	5b                   	pop    %ebx
    777e:	5e                   	pop    %esi
    777f:	5f                   	pop    %edi
    7780:	5d                   	pop    %ebp
    7781:	c3                   	ret    
    7782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Protect all memory for cgroup1
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, buf));

    // Check changes
    ASSERT_FALSE(strncmp(read_file(TEST_1_MEM_MIN, 0), buf, strlen(buf)));
    7788:	83 ec 0c             	sub    $0xc,%esp
    778b:	53                   	push   %ebx
    778c:	e8 cf 46 00 00       	call   be60 <strlen>
    7791:	89 c7                	mov    %eax,%edi
    7793:	58                   	pop    %eax
    7794:	5a                   	pop    %edx
    7795:	6a 00                	push   $0x0
    7797:	68 20 cb 00 00       	push   $0xcb20
    779c:	e8 7f 8a ff ff       	call   220 <read_file>
    77a1:	83 c4 0c             	add    $0xc,%esp
    77a4:	57                   	push   %edi
    77a5:	53                   	push   %ebx
    77a6:	31 db                	xor    %ebx,%ebx
    77a8:	50                   	push   %eax
    77a9:	e8 22 46 00 00       	call   bdd0 <strncmp>
    77ae:	83 c4 10             	add    $0x10,%esp
    77b1:	85 c0                	test   %eax,%eax
    77b3:	75 20                	jne    77d5 <test_cant_move_under_mem_limit+0x185>
    77b5:	eb 70                	jmp    7827 <test_cant_move_under_mem_limit+0x1d7>
    77b7:	89 f6                	mov    %esi,%esi
    77b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    77c0:	83 ec 08             	sub    $0x8,%esp
    77c3:	83 c3 01             	add    $0x1,%ebx
    77c6:	68 18 c8 00 00       	push   $0xc818
    77cb:	6a 01                	push   $0x1
    77cd:	e8 ce 4b 00 00       	call   c3a0 <printf>
    77d2:	83 c4 10             	add    $0x10,%esp
    77d5:	83 ec 0c             	sub    $0xc,%esp
    77d8:	68 24 06 01 00       	push   $0x10624
    77dd:	e8 7e 46 00 00       	call   be60 <strlen>
    77e2:	89 c7                	mov    %eax,%edi
    77e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    77eb:	e8 70 46 00 00       	call   be60 <strlen>
    77f0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    77f4:	83 c4 10             	add    $0x10,%esp
    77f7:	39 d8                	cmp    %ebx,%eax
    77f9:	77 c5                	ja     77c0 <test_cant_move_under_mem_limit+0x170>
    77fb:	83 ec 0c             	sub    $0xc,%esp
    77fe:	68 58 04 00 00       	push   $0x458
    7803:	68 30 c8 00 00       	push   $0xc830
    7808:	56                   	push   %esi
    7809:	68 5c 06 01 00       	push   $0x1065c
    780e:	6a 01                	push   $0x1
    7810:	e8 8b 4b 00 00       	call   c3a0 <printf>
    7815:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    781c:	00 00 00 
    781f:	83 c4 20             	add    $0x20,%esp
    7822:	e9 c3 fe ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>

    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    7827:	e8 3c 4a 00 00       	call   c268 <getpid>
    782c:	83 ec 08             	sub    $0x8,%esp
    782f:	31 db                	xor    %ebx,%ebx
    7831:	50                   	push   %eax
    7832:	68 ed c9 00 00       	push   $0xc9ed
    7837:	e8 e4 8d ff ff       	call   620 <move_proc>
    783c:	83 c4 10             	add    $0x10,%esp
    783f:	85 c0                	test   %eax,%eax
    7841:	74 1a                	je     785d <test_cant_move_under_mem_limit+0x20d>
    7843:	eb 6a                	jmp    78af <test_cant_move_under_mem_limit+0x25f>
    7845:	8d 76 00             	lea    0x0(%esi),%esi
    7848:	83 ec 08             	sub    $0x8,%esp
    784b:	83 c3 01             	add    $0x1,%ebx
    784e:	68 18 c8 00 00       	push   $0xc818
    7853:	6a 01                	push   $0x1
    7855:	e8 46 4b 00 00       	call   c3a0 <printf>
    785a:	83 c4 10             	add    $0x10,%esp
    785d:	83 ec 0c             	sub    $0xc,%esp
    7860:	68 c0 ec 00 00       	push   $0xecc0
    7865:	e8 f6 45 00 00       	call   be60 <strlen>
    786a:	89 c7                	mov    %eax,%edi
    786c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7873:	e8 e8 45 00 00       	call   be60 <strlen>
    7878:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    787c:	83 c4 10             	add    $0x10,%esp
    787f:	39 d8                	cmp    %ebx,%eax
    7881:	77 c5                	ja     7848 <test_cant_move_under_mem_limit+0x1f8>
    7883:	83 ec 0c             	sub    $0xc,%esp
    7886:	68 5a 04 00 00       	push   $0x45a
    788b:	68 30 c8 00 00       	push   $0xc830
    7890:	56                   	push   %esi
    7891:	68 04 ef 00 00       	push   $0xef04
    7896:	6a 01                	push   $0x1
    7898:	e8 03 4b 00 00       	call   c3a0 <printf>
    789d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    78a4:	00 00 00 
    78a7:	83 c4 20             	add    $0x20,%esp
    78aa:	e9 3b fe ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>

    // Save current process memory size.
    int proc_mem = getmem();
    int grow = MEM_SIZE - proc_mem;
    78af:	bb 00 00 c0 0d       	mov    $0xdc00000,%ebx
    ASSERT_FALSE(strncmp(read_file(TEST_1_MEM_MIN, 0), buf, strlen(buf)));

    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));

    // Save current process memory size.
    int proc_mem = getmem();
    78b4:	e8 17 4a 00 00       	call   c2d0 <getmem>
    int grow = MEM_SIZE - proc_mem;

    ASSERT_FALSE((int)sbrk(grow) == -1);
    78b9:	83 ec 0c             	sub    $0xc,%esp

    ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));

    // Save current process memory size.
    int proc_mem = getmem();
    int grow = MEM_SIZE - proc_mem;
    78bc:	29 c3                	sub    %eax,%ebx

    ASSERT_FALSE((int)sbrk(grow) == -1);
    78be:	53                   	push   %ebx
    78bf:	e8 ac 49 00 00       	call   c270 <sbrk>
    78c4:	83 c4 10             	add    $0x10,%esp
    78c7:	83 f8 ff             	cmp    $0xffffffff,%eax
    78ca:	75 6b                	jne    7937 <test_cant_move_under_mem_limit+0x2e7>
    78cc:	31 db                	xor    %ebx,%ebx
    78ce:	eb 15                	jmp    78e5 <test_cant_move_under_mem_limit+0x295>
    78d0:	83 ec 08             	sub    $0x8,%esp
    78d3:	83 c3 01             	add    $0x1,%ebx
    78d6:	68 18 c8 00 00       	push   $0xc818
    78db:	6a 01                	push   $0x1
    78dd:	e8 be 4a 00 00       	call   c3a0 <printf>
    78e2:	83 c4 10             	add    $0x10,%esp
    78e5:	83 ec 0c             	sub    $0xc,%esp
    78e8:	68 0a cf 00 00       	push   $0xcf0a
    78ed:	e8 6e 45 00 00       	call   be60 <strlen>
    78f2:	89 c7                	mov    %eax,%edi
    78f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    78fb:	e8 60 45 00 00       	call   be60 <strlen>
    7900:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7904:	83 c4 10             	add    $0x10,%esp
    7907:	39 d8                	cmp    %ebx,%eax
    7909:	77 c5                	ja     78d0 <test_cant_move_under_mem_limit+0x280>
    790b:	83 ec 0c             	sub    $0xc,%esp
    790e:	68 60 04 00 00       	push   $0x460
    7913:	68 30 c8 00 00       	push   $0xc830
    7918:	56                   	push   %esi
    7919:	68 24 0d 01 00       	push   $0x10d24
    791e:	6a 01                	push   $0x1
    7920:	e8 7b 4a 00 00       	call   c3a0 <printf>
    7925:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    792c:	00 00 00 
    792f:	83 c4 20             	add    $0x20,%esp
    7932:	e9 b3 fd ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>

    // Try return the process to root cgroup this heve to faile
    ASSERT_FALSE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    7937:	e8 2c 49 00 00       	call   c268 <getpid>
    793c:	83 ec 08             	sub    $0x8,%esp
    793f:	50                   	push   %eax
    7940:	68 f0 cc 00 00       	push   $0xccf0
    7945:	e8 d6 8c ff ff       	call   620 <move_proc>
    794a:	83 c4 10             	add    $0x10,%esp
    794d:	85 c0                	test   %eax,%eax
    794f:	74 6b                	je     79bc <test_cant_move_under_mem_limit+0x36c>
    7951:	31 db                	xor    %ebx,%ebx
    7953:	eb 15                	jmp    796a <test_cant_move_under_mem_limit+0x31a>
    7955:	83 ec 08             	sub    $0x8,%esp
    7958:	83 c3 01             	add    $0x1,%ebx
    795b:	68 18 c8 00 00       	push   $0xc818
    7960:	6a 01                	push   $0x1
    7962:	e8 39 4a 00 00       	call   c3a0 <printf>
    7967:	83 c4 10             	add    $0x10,%esp
    796a:	83 ec 0c             	sub    $0xc,%esp
    796d:	68 b0 ef 00 00       	push   $0xefb0
    7972:	e8 e9 44 00 00       	call   be60 <strlen>
    7977:	89 c7                	mov    %eax,%edi
    7979:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7980:	e8 db 44 00 00       	call   be60 <strlen>
    7985:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7989:	83 c4 10             	add    $0x10,%esp
    798c:	39 d8                	cmp    %ebx,%eax
    798e:	77 c5                	ja     7955 <test_cant_move_under_mem_limit+0x305>
    7990:	83 ec 0c             	sub    $0xc,%esp
    7993:	68 63 04 00 00       	push   $0x463
    7998:	68 30 c8 00 00       	push   $0xc830
    799d:	56                   	push   %esi
    799e:	68 64 0d 01 00       	push   $0x10d64
    79a3:	6a 01                	push   $0x1
    79a5:	e8 f6 49 00 00       	call   c3a0 <printf>
    79aa:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    79b1:	00 00 00 
    79b4:	83 c4 20             	add    $0x20,%esp
    79b7:	e9 2e fd ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>

    ASSERT_FALSE((int)sbrk(-grow) == -1);
    79bc:	83 ec 0c             	sub    $0xc,%esp
    79bf:	f7 db                	neg    %ebx
    79c1:	53                   	push   %ebx
    79c2:	31 db                	xor    %ebx,%ebx
    79c4:	e8 a7 48 00 00       	call   c270 <sbrk>
    79c9:	83 c4 10             	add    $0x10,%esp
    79cc:	83 f8 ff             	cmp    $0xffffffff,%eax
    79cf:	0f 84 b0 00 00 00    	je     7a85 <test_cant_move_under_mem_limit+0x435>
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    79d5:	e8 8e 48 00 00       	call   c268 <getpid>
    79da:	83 ec 08             	sub    $0x8,%esp
    79dd:	31 db                	xor    %ebx,%ebx
    79df:	50                   	push   %eax
    79e0:	68 f0 cc 00 00       	push   $0xccf0
    79e5:	e8 36 8c ff ff       	call   620 <move_proc>
    79ea:	83 c4 10             	add    $0x10,%esp
    79ed:	85 c0                	test   %eax,%eax
    79ef:	74 24                	je     7a15 <test_cant_move_under_mem_limit+0x3c5>
    79f1:	e9 e1 00 00 00       	jmp    7ad7 <test_cant_move_under_mem_limit+0x487>
    79f6:	8d 76 00             	lea    0x0(%esi),%esi
    79f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    7a00:	83 ec 08             	sub    $0x8,%esp
    7a03:	83 c3 01             	add    $0x1,%ebx
    7a06:	68 18 c8 00 00       	push   $0xc818
    7a0b:	6a 01                	push   $0x1
    7a0d:	e8 8e 49 00 00       	call   c3a0 <printf>
    7a12:	83 c4 10             	add    $0x10,%esp
    7a15:	83 ec 0c             	sub    $0xc,%esp
    7a18:	68 b0 ef 00 00       	push   $0xefb0
    7a1d:	e8 3e 44 00 00       	call   be60 <strlen>
    7a22:	89 c7                	mov    %eax,%edi
    7a24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7a2b:	e8 30 44 00 00       	call   be60 <strlen>
    7a30:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7a34:	83 c4 10             	add    $0x10,%esp
    7a37:	39 d8                	cmp    %ebx,%eax
    7a39:	77 c5                	ja     7a00 <test_cant_move_under_mem_limit+0x3b0>
    7a3b:	83 ec 0c             	sub    $0xc,%esp
    7a3e:	68 66 04 00 00       	push   $0x466
    7a43:	68 30 c8 00 00       	push   $0xc830
    7a48:	56                   	push   %esi
    7a49:	68 d8 ef 00 00       	push   $0xefd8
    7a4e:	6a 01                	push   $0x1
    7a50:	e8 4b 49 00 00       	call   c3a0 <printf>
    7a55:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7a5c:	00 00 00 
    7a5f:	83 c4 20             	add    $0x20,%esp
    7a62:	e9 83 fc ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>
    7a67:	89 f6                	mov    %esi,%esi
    7a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    ASSERT_FALSE((int)sbrk(grow) == -1);

    // Try return the process to root cgroup this heve to faile
    ASSERT_FALSE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    ASSERT_FALSE((int)sbrk(-grow) == -1);
    7a70:	83 ec 08             	sub    $0x8,%esp
    7a73:	83 c3 01             	add    $0x1,%ebx
    7a76:	68 18 c8 00 00       	push   $0xc818
    7a7b:	6a 01                	push   $0x1
    7a7d:	e8 1e 49 00 00       	call   c3a0 <printf>
    7a82:	83 c4 10             	add    $0x10,%esp
    7a85:	83 ec 0c             	sub    $0xc,%esp
    7a88:	68 20 cf 00 00       	push   $0xcf20
    7a8d:	e8 ce 43 00 00       	call   be60 <strlen>
    7a92:	89 c7                	mov    %eax,%edi
    7a94:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7a9b:	e8 c0 43 00 00       	call   be60 <strlen>
    7aa0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7aa4:	83 c4 10             	add    $0x10,%esp
    7aa7:	39 d8                	cmp    %ebx,%eax
    7aa9:	77 c5                	ja     7a70 <test_cant_move_under_mem_limit+0x420>
    7aab:	83 ec 0c             	sub    $0xc,%esp
    7aae:	68 65 04 00 00       	push   $0x465
    7ab3:	68 30 c8 00 00       	push   $0xc830
    7ab8:	56                   	push   %esi
    7ab9:	68 b4 0d 01 00       	push   $0x10db4
    7abe:	6a 01                	push   $0x1
    7ac0:	e8 db 48 00 00       	call   c3a0 <printf>
    7ac5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7acc:	00 00 00 
    7acf:	83 c4 20             	add    $0x20,%esp
    7ad2:	e9 13 fc ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>
    ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));

    // Disable memory controllers
    ASSERT_TRUE(disable_controller(MEM_CNT));
    7ad7:	83 ec 0c             	sub    $0xc,%esp
    7ada:	31 db                	xor    %ebx,%ebx
    7adc:	6a 03                	push   $0x3
    7ade:	e8 8d 89 ff ff       	call   470 <disable_controller>
    7ae3:	83 c4 10             	add    $0x10,%esp
    7ae6:	85 c0                	test   %eax,%eax
    7ae8:	74 1b                	je     7b05 <test_cant_move_under_mem_limit+0x4b5>
    7aea:	e9 fb fb ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>
    7aef:	90                   	nop
    7af0:	83 ec 08             	sub    $0x8,%esp
    7af3:	83 c3 01             	add    $0x1,%ebx
    7af6:	68 18 c8 00 00       	push   $0xc818
    7afb:	6a 01                	push   $0x1
    7afd:	e8 9e 48 00 00       	call   c3a0 <printf>
    7b02:	83 c4 10             	add    $0x10,%esp
    7b05:	83 ec 0c             	sub    $0xc,%esp
    7b08:	68 78 ce 00 00       	push   $0xce78
    7b0d:	e8 4e 43 00 00       	call   be60 <strlen>
    7b12:	89 c7                	mov    %eax,%edi
    7b14:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7b1b:	e8 40 43 00 00       	call   be60 <strlen>
    7b20:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7b24:	83 c4 10             	add    $0x10,%esp
    7b27:	39 d8                	cmp    %ebx,%eax
    7b29:	77 c5                	ja     7af0 <test_cant_move_under_mem_limit+0x4a0>
    7b2b:	83 ec 0c             	sub    $0xc,%esp
    7b2e:	68 69 04 00 00       	push   $0x469
    7b33:	68 30 c8 00 00       	push   $0xc830
    7b38:	56                   	push   %esi
    7b39:	68 c0 01 01 00       	push   $0x101c0
    7b3e:	6a 01                	push   $0x1
    7b40:	e8 5b 48 00 00       	call   c3a0 <printf>
    7b45:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7b4c:	00 00 00 
    7b4f:	83 c4 20             	add    $0x20,%esp
    7b52:	e9 93 fb ff ff       	jmp    76ea <test_cant_move_under_mem_limit+0x9a>
    7b57:	89 f6                	mov    %esi,%esi
    7b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00007b60 <test_mem_limit_negative_and_over_kernelbase>:
}

TEST(test_mem_limit_negative_and_over_kernelbase)
{
    7b60:	55                   	push   %ebp
    7b61:	89 e5                	mov    %esp,%ebp
    7b63:	57                   	push   %edi
    7b64:	56                   	push   %esi
    7b65:	53                   	push   %ebx
    7b66:	31 db                	xor    %ebx,%ebx
    7b68:	83 ec 28             	sub    $0x28,%esp
    7b6b:	8b 75 08             	mov    0x8(%ebp),%esi
    // Buffer for saving current memory written in limit
    char saved_mem[12];

    // Enable memory controller
    ASSERT_TRUE(enable_controller(MEM_CNT));
    7b6e:	6a 03                	push   $0x3
    7b70:	e8 ab 88 ff ff       	call   420 <enable_controller>
    7b75:	83 c4 10             	add    $0x10,%esp
    7b78:	85 c0                	test   %eax,%eax
    7b7a:	74 19                	je     7b95 <test_mem_limit_negative_and_over_kernelbase+0x35>
    7b7c:	eb 72                	jmp    7bf0 <test_mem_limit_negative_and_over_kernelbase+0x90>
    7b7e:	66 90                	xchg   %ax,%ax
    7b80:	83 ec 08             	sub    $0x8,%esp
    7b83:	83 c3 01             	add    $0x1,%ebx
    7b86:	68 18 c8 00 00       	push   $0xc818
    7b8b:	6a 01                	push   $0x1
    7b8d:	e8 0e 48 00 00       	call   c3a0 <printf>
    7b92:	83 c4 10             	add    $0x10,%esp
    7b95:	83 ec 0c             	sub    $0xc,%esp
    7b98:	68 46 ce 00 00       	push   $0xce46
    7b9d:	e8 be 42 00 00       	call   be60 <strlen>
    7ba2:	89 c7                	mov    %eax,%edi
    7ba4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7bab:	e8 b0 42 00 00       	call   be60 <strlen>
    7bb0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7bb4:	83 c4 10             	add    $0x10,%esp
    7bb7:	39 d8                	cmp    %ebx,%eax
    7bb9:	77 c5                	ja     7b80 <test_mem_limit_negative_and_over_kernelbase+0x20>
    7bbb:	83 ec 0c             	sub    $0xc,%esp
    7bbe:	68 72 04 00 00       	push   $0x472
    7bc3:	68 30 c8 00 00       	push   $0xc830
    7bc8:	56                   	push   %esi
    7bc9:	68 84 fe 00 00       	push   $0xfe84
    7bce:	6a 01                	push   $0x1
    7bd0:	e8 cb 47 00 00       	call   c3a0 <printf>
    7bd5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7bdc:	00 00 00 
    7bdf:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));

    // Disable memory controller
    ASSERT_TRUE(disable_controller(MEM_CNT));
}
    7be2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7be5:	5b                   	pop    %ebx
    7be6:	5e                   	pop    %esi
    7be7:	5f                   	pop    %edi
    7be8:	5d                   	pop    %ebp
    7be9:	c3                   	ret    
    7bea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    // Enable memory controller
    ASSERT_TRUE(enable_controller(MEM_CNT));

    // Copy the current saved memory-max and remove newline at the end
    strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
    7bf0:	83 ec 08             	sub    $0x8,%esp
    7bf3:	6a 00                	push   $0x0
    7bf5:	68 07 cb 00 00       	push   $0xcb07
    7bfa:	e8 21 86 ff ff       	call   220 <read_file>
    7bff:	59                   	pop    %ecx
    7c00:	5b                   	pop    %ebx
    7c01:	8d 5d dc             	lea    -0x24(%ebp),%ebx
    7c04:	50                   	push   %eax
    7c05:	53                   	push   %ebx
    7c06:	e8 45 41 00 00       	call   bd50 <strcpy>
    saved_mem[strlen(saved_mem) - 1] = '\0';
    7c0b:	89 1c 24             	mov    %ebx,(%esp)
    7c0e:	31 db                	xor    %ebx,%ebx
    7c10:	e8 4b 42 00 00       	call   be60 <strlen>

    // Update memory limit
    ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));
    7c15:	5f                   	pop    %edi
    // Enable memory controller
    ASSERT_TRUE(enable_controller(MEM_CNT));

    // Copy the current saved memory-max and remove newline at the end
    strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
    saved_mem[strlen(saved_mem) - 1] = '\0';
    7c16:	c6 44 05 db 00       	movb   $0x0,-0x25(%ebp,%eax,1)

    // Update memory limit
    ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));
    7c1b:	58                   	pop    %eax
    7c1c:	68 3f cf 00 00       	push   $0xcf3f
    7c21:	68 07 cb 00 00       	push   $0xcb07
    7c26:	e8 b5 86 ff ff       	call   2e0 <write_file>
    7c2b:	83 c4 10             	add    $0x10,%esp
    7c2e:	85 c0                	test   %eax,%eax
    7c30:	74 1b                	je     7c4d <test_mem_limit_negative_and_over_kernelbase+0xed>
    7c32:	eb 74                	jmp    7ca8 <test_mem_limit_negative_and_over_kernelbase+0x148>
    7c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    7c38:	83 ec 08             	sub    $0x8,%esp
    7c3b:	83 c3 01             	add    $0x1,%ebx
    7c3e:	68 18 c8 00 00       	push   $0xc818
    7c43:	6a 01                	push   $0x1
    7c45:	e8 56 47 00 00       	call   c3a0 <printf>
    7c4a:	83 c4 10             	add    $0x10,%esp
    7c4d:	83 ec 0c             	sub    $0xc,%esp
    7c50:	68 d0 ff 00 00       	push   $0xffd0
    7c55:	e8 06 42 00 00       	call   be60 <strlen>
    7c5a:	89 c7                	mov    %eax,%edi
    7c5c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7c63:	e8 f8 41 00 00       	call   be60 <strlen>
    7c68:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7c6c:	83 c4 10             	add    $0x10,%esp
    7c6f:	39 d8                	cmp    %ebx,%eax
    7c71:	77 c5                	ja     7c38 <test_mem_limit_negative_and_over_kernelbase+0xd8>
    7c73:	83 ec 0c             	sub    $0xc,%esp
    7c76:	68 79 04 00 00       	push   $0x479
    7c7b:	68 30 c8 00 00       	push   $0xc830
    7c80:	56                   	push   %esi
    7c81:	68 f4 ff 00 00       	push   $0xfff4
    7c86:	6a 01                	push   $0x1
    7c88:	e8 13 47 00 00       	call   c3a0 <printf>
    7c8d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7c94:	00 00 00 
    7c97:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));

    // Disable memory controller
    ASSERT_TRUE(disable_controller(MEM_CNT));
}
    7c9a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7c9d:	5b                   	pop    %ebx
    7c9e:	5e                   	pop    %esi
    7c9f:	5f                   	pop    %edi
    7ca0:	5d                   	pop    %ebp
    7ca1:	c3                   	ret    
    7ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
    saved_mem[strlen(saved_mem) - 1] = '\0';

    // Update memory limit
    ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "50"));
    7ca8:	83 ec 08             	sub    $0x8,%esp
    7cab:	31 db                	xor    %ebx,%ebx
    7cad:	68 37 cf 00 00       	push   $0xcf37
    7cb2:	68 20 cb 00 00       	push   $0xcb20
    7cb7:	e8 24 86 ff ff       	call   2e0 <write_file>
    7cbc:	83 c4 10             	add    $0x10,%esp
    7cbf:	85 c0                	test   %eax,%eax
    7cc1:	74 1a                	je     7cdd <test_mem_limit_negative_and_over_kernelbase+0x17d>
    7cc3:	eb 6a                	jmp    7d2f <test_mem_limit_negative_and_over_kernelbase+0x1cf>
    7cc5:	8d 76 00             	lea    0x0(%esi),%esi
    7cc8:	83 ec 08             	sub    $0x8,%esp
    7ccb:	83 c3 01             	add    $0x1,%ebx
    7cce:	68 18 c8 00 00       	push   $0xc818
    7cd3:	6a 01                	push   $0x1
    7cd5:	e8 c6 46 00 00       	call   c3a0 <printf>
    7cda:	83 c4 10             	add    $0x10,%esp
    7cdd:	83 ec 0c             	sub    $0xc,%esp
    7ce0:	68 f4 0d 01 00       	push   $0x10df4
    7ce5:	e8 76 41 00 00       	call   be60 <strlen>
    7cea:	89 c7                	mov    %eax,%edi
    7cec:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7cf3:	e8 68 41 00 00       	call   be60 <strlen>
    7cf8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7cfc:	83 c4 10             	add    $0x10,%esp
    7cff:	39 d8                	cmp    %ebx,%eax
    7d01:	77 c5                	ja     7cc8 <test_mem_limit_negative_and_over_kernelbase+0x168>
    7d03:	83 ec 0c             	sub    $0xc,%esp
    7d06:	68 7a 04 00 00       	push   $0x47a
    7d0b:	68 30 c8 00 00       	push   $0xc830
    7d10:	56                   	push   %esi
    7d11:	68 18 0e 01 00       	push   $0x10e18
    7d16:	6a 01                	push   $0x1
    7d18:	e8 83 46 00 00       	call   c3a0 <printf>
    7d1d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7d24:	00 00 00 
    7d27:	83 c4 20             	add    $0x20,%esp
    7d2a:	e9 b3 fe ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    7d2f:	83 ec 08             	sub    $0x8,%esp
    7d32:	31 db                	xor    %ebx,%ebx
    7d34:	6a 00                	push   $0x0
    7d36:	68 07 cb 00 00       	push   $0xcb07
    7d3b:	e8 e0 84 ff ff       	call   220 <read_file>
    7d40:	5f                   	pop    %edi
    7d41:	5a                   	pop    %edx
    7d42:	68 6f ce 00 00       	push   $0xce6f
    7d47:	50                   	push   %eax
    7d48:	e8 33 40 00 00       	call   bd80 <strcmp>
    7d4d:	83 c4 10             	add    $0x10,%esp
    7d50:	85 c0                	test   %eax,%eax
    7d52:	75 21                	jne    7d75 <test_mem_limit_negative_and_over_kernelbase+0x215>
    7d54:	eb 71                	jmp    7dc7 <test_mem_limit_negative_and_over_kernelbase+0x267>
    7d56:	8d 76 00             	lea    0x0(%esi),%esi
    7d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    7d60:	83 ec 08             	sub    $0x8,%esp
    7d63:	83 c3 01             	add    $0x1,%ebx
    7d66:	68 18 c8 00 00       	push   $0xc818
    7d6b:	6a 01                	push   $0x1
    7d6d:	e8 2e 46 00 00       	call   c3a0 <printf>
    7d72:	83 c4 10             	add    $0x10,%esp
    7d75:	83 ec 0c             	sub    $0xc,%esp
    7d78:	68 b0 00 01 00       	push   $0x100b0
    7d7d:	e8 de 40 00 00       	call   be60 <strlen>
    7d82:	89 c7                	mov    %eax,%edi
    7d84:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7d8b:	e8 d0 40 00 00       	call   be60 <strlen>
    7d90:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7d94:	83 c4 10             	add    $0x10,%esp
    7d97:	39 d8                	cmp    %ebx,%eax
    7d99:	77 c5                	ja     7d60 <test_mem_limit_negative_and_over_kernelbase+0x200>
    7d9b:	83 ec 0c             	sub    $0xc,%esp
    7d9e:	68 7d 04 00 00       	push   $0x47d
    // Limit memory by minus
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, "-100"));
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, "-100"));

    // Check for no changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    7da3:	68 30 c8 00 00       	push   $0xc830
    7da8:	56                   	push   %esi
    7da9:	68 e0 00 01 00       	push   $0x100e0
    7dae:	6a 01                	push   $0x1
    7db0:	e8 eb 45 00 00       	call   c3a0 <printf>
    7db5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7dbc:	00 00 00 
    7dbf:	83 c4 20             	add    $0x20,%esp
    7dc2:	e9 1b fe ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>
    ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "100"));
    ASSERT_TRUE(write_file(TEST_1_MEM_MIN, "50"));

    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));
    7dc7:	83 ec 08             	sub    $0x8,%esp
    7dca:	6a 00                	push   $0x0
    7dcc:	68 20 cb 00 00       	push   $0xcb20
    7dd1:	e8 4a 84 ff ff       	call   220 <read_file>
    7dd6:	59                   	pop    %ecx
    7dd7:	5b                   	pop    %ebx
    7dd8:	68 3a cf 00 00       	push   $0xcf3a
    7ddd:	50                   	push   %eax
    7dde:	31 db                	xor    %ebx,%ebx
    7de0:	e8 9b 3f 00 00       	call   bd80 <strcmp>
    7de5:	83 c4 10             	add    $0x10,%esp
    7de8:	85 c0                	test   %eax,%eax
    7dea:	75 19                	jne    7e05 <test_mem_limit_negative_and_over_kernelbase+0x2a5>
    7dec:	eb 69                	jmp    7e57 <test_mem_limit_negative_and_over_kernelbase+0x2f7>
    7dee:	66 90                	xchg   %ax,%ax
    7df0:	83 ec 08             	sub    $0x8,%esp
    7df3:	83 c3 01             	add    $0x1,%ebx
    7df6:	68 18 c8 00 00       	push   $0xc818
    7dfb:	6a 01                	push   $0x1
    7dfd:	e8 9e 45 00 00       	call   c3a0 <printf>
    7e02:	83 c4 10             	add    $0x10,%esp
    7e05:	83 ec 0c             	sub    $0xc,%esp
    7e08:	68 64 0e 01 00       	push   $0x10e64
    7e0d:	e8 4e 40 00 00       	call   be60 <strlen>
    7e12:	89 c7                	mov    %eax,%edi
    7e14:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7e1b:	e8 40 40 00 00       	call   be60 <strlen>
    7e20:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7e24:	83 c4 10             	add    $0x10,%esp
    7e27:	39 d8                	cmp    %ebx,%eax
    7e29:	77 c5                	ja     7df0 <test_mem_limit_negative_and_over_kernelbase+0x290>
    7e2b:	83 ec 0c             	sub    $0xc,%esp
    7e2e:	68 7e 04 00 00       	push   $0x47e
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, MORE_THEN_KERNBASE));
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, MORE_THEN_KERNBASE));

    // Check for no changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));
    7e33:	68 30 c8 00 00       	push   $0xc830
    7e38:	56                   	push   %esi
    7e39:	68 94 0e 01 00       	push   $0x10e94
    7e3e:	6a 01                	push   $0x1
    7e40:	e8 5b 45 00 00       	call   c3a0 <printf>
    7e45:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7e4c:	00 00 00 
    7e4f:	83 c4 20             	add    $0x20,%esp
    7e52:	e9 8b fd ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>
    // Check changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));

    // Limit memory by minus
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, "-100"));
    7e57:	83 ec 08             	sub    $0x8,%esp
    7e5a:	31 db                	xor    %ebx,%ebx
    7e5c:	68 3e cf 00 00       	push   $0xcf3e
    7e61:	68 07 cb 00 00       	push   $0xcb07
    7e66:	e8 75 84 ff ff       	call   2e0 <write_file>
    7e6b:	83 c4 10             	add    $0x10,%esp
    7e6e:	85 c0                	test   %eax,%eax
    7e70:	75 1b                	jne    7e8d <test_mem_limit_negative_and_over_kernelbase+0x32d>
    7e72:	eb 6b                	jmp    7edf <test_mem_limit_negative_and_over_kernelbase+0x37f>
    7e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    7e78:	83 ec 08             	sub    $0x8,%esp
    7e7b:	83 c3 01             	add    $0x1,%ebx
    7e7e:	68 18 c8 00 00       	push   $0xc818
    7e83:	6a 01                	push   $0x1
    7e85:	e8 16 45 00 00       	call   c3a0 <printf>
    7e8a:	83 c4 10             	add    $0x10,%esp
    7e8d:	83 ec 0c             	sub    $0xc,%esp
    7e90:	68 ec 0e 01 00       	push   $0x10eec
    7e95:	e8 c6 3f 00 00       	call   be60 <strlen>
    7e9a:	89 c7                	mov    %eax,%edi
    7e9c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7ea3:	e8 b8 3f 00 00       	call   be60 <strlen>
    7ea8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7eac:	83 c4 10             	add    $0x10,%esp
    7eaf:	39 d8                	cmp    %ebx,%eax
    7eb1:	77 c5                	ja     7e78 <test_mem_limit_negative_and_over_kernelbase+0x318>
    7eb3:	83 ec 0c             	sub    $0xc,%esp
    7eb6:	68 81 04 00 00       	push   $0x481
    7ebb:	68 30 c8 00 00       	push   $0xc830
    7ec0:	56                   	push   %esi
    7ec1:	68 10 0f 01 00       	push   $0x10f10
    7ec6:	6a 01                	push   $0x1
    7ec8:	e8 d3 44 00 00       	call   c3a0 <printf>
    7ecd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7ed4:	00 00 00 
    7ed7:	83 c4 20             	add    $0x20,%esp
    7eda:	e9 03 fd ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, "-100"));
    7edf:	83 ec 08             	sub    $0x8,%esp
    7ee2:	31 db                	xor    %ebx,%ebx
    7ee4:	68 3e cf 00 00       	push   $0xcf3e
    7ee9:	68 20 cb 00 00       	push   $0xcb20
    7eee:	e8 ed 83 ff ff       	call   2e0 <write_file>
    7ef3:	83 c4 10             	add    $0x10,%esp
    7ef6:	85 c0                	test   %eax,%eax
    7ef8:	75 1b                	jne    7f15 <test_mem_limit_negative_and_over_kernelbase+0x3b5>
    7efa:	eb 6b                	jmp    7f67 <test_mem_limit_negative_and_over_kernelbase+0x407>
    7efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    7f00:	83 ec 08             	sub    $0x8,%esp
    7f03:	83 c3 01             	add    $0x1,%ebx
    7f06:	68 18 c8 00 00       	push   $0xc818
    7f0b:	6a 01                	push   $0x1
    7f0d:	e8 8e 44 00 00       	call   c3a0 <printf>
    7f12:	83 c4 10             	add    $0x10,%esp
    7f15:	83 ec 0c             	sub    $0xc,%esp
    7f18:	68 5c 0f 01 00       	push   $0x10f5c
    7f1d:	e8 3e 3f 00 00       	call   be60 <strlen>
    7f22:	89 c7                	mov    %eax,%edi
    7f24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7f2b:	e8 30 3f 00 00       	call   be60 <strlen>
    7f30:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7f34:	83 c4 10             	add    $0x10,%esp
    7f37:	39 d8                	cmp    %ebx,%eax
    7f39:	77 c5                	ja     7f00 <test_mem_limit_negative_and_over_kernelbase+0x3a0>
    7f3b:	83 ec 0c             	sub    $0xc,%esp
    7f3e:	68 82 04 00 00       	push   $0x482
    7f43:	68 30 c8 00 00       	push   $0xc830
    7f48:	56                   	push   %esi
    7f49:	68 80 0f 01 00       	push   $0x10f80
    7f4e:	6a 01                	push   $0x1
    7f50:	e8 4b 44 00 00       	call   c3a0 <printf>
    7f55:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    7f5c:	00 00 00 
    7f5f:	83 c4 20             	add    $0x20,%esp
    7f62:	e9 7b fc ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>

    // Check for no changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    7f67:	53                   	push   %ebx
    7f68:	53                   	push   %ebx
    7f69:	6a 00                	push   $0x0
    7f6b:	68 07 cb 00 00       	push   $0xcb07
    7f70:	e8 ab 82 ff ff       	call   220 <read_file>
    7f75:	5f                   	pop    %edi
    7f76:	5a                   	pop    %edx
    7f77:	68 6f ce 00 00       	push   $0xce6f
    7f7c:	50                   	push   %eax
    7f7d:	e8 fe 3d 00 00       	call   bd80 <strcmp>
    7f82:	83 c4 10             	add    $0x10,%esp
    7f85:	85 c0                	test   %eax,%eax
    7f87:	74 4f                	je     7fd8 <test_mem_limit_negative_and_over_kernelbase+0x478>
    7f89:	31 db                	xor    %ebx,%ebx
    7f8b:	eb 18                	jmp    7fa5 <test_mem_limit_negative_and_over_kernelbase+0x445>
    7f8d:	8d 76 00             	lea    0x0(%esi),%esi
    7f90:	83 ec 08             	sub    $0x8,%esp
    7f93:	83 c3 01             	add    $0x1,%ebx
    7f96:	68 18 c8 00 00       	push   $0xc818
    7f9b:	6a 01                	push   $0x1
    7f9d:	e8 fe 43 00 00       	call   c3a0 <printf>
    7fa2:	83 c4 10             	add    $0x10,%esp
    7fa5:	83 ec 0c             	sub    $0xc,%esp
    7fa8:	68 b0 00 01 00       	push   $0x100b0
    7fad:	e8 ae 3e 00 00       	call   be60 <strlen>
    7fb2:	89 c7                	mov    %eax,%edi
    7fb4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    7fbb:	e8 a0 3e 00 00       	call   be60 <strlen>
    7fc0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    7fc4:	83 c4 10             	add    $0x10,%esp
    7fc7:	39 d8                	cmp    %ebx,%eax
    7fc9:	77 c5                	ja     7f90 <test_mem_limit_negative_and_over_kernelbase+0x430>
    7fcb:	83 ec 0c             	sub    $0xc,%esp
    7fce:	68 85 04 00 00       	push   $0x485
    7fd3:	e9 cb fd ff ff       	jmp    7da3 <test_mem_limit_negative_and_over_kernelbase+0x243>
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));
    7fd8:	50                   	push   %eax
    7fd9:	50                   	push   %eax
    7fda:	6a 00                	push   $0x0
    7fdc:	68 20 cb 00 00       	push   $0xcb20
    7fe1:	e8 3a 82 ff ff       	call   220 <read_file>
    7fe6:	5a                   	pop    %edx
    7fe7:	59                   	pop    %ecx
    7fe8:	68 3a cf 00 00       	push   $0xcf3a
    7fed:	50                   	push   %eax
    7fee:	e8 8d 3d 00 00       	call   bd80 <strcmp>
    7ff3:	83 c4 10             	add    $0x10,%esp
    7ff6:	85 c0                	test   %eax,%eax
    7ff8:	74 4b                	je     8045 <test_mem_limit_negative_and_over_kernelbase+0x4e5>
    7ffa:	31 db                	xor    %ebx,%ebx
    7ffc:	83 ec 0c             	sub    $0xc,%esp
    7fff:	68 64 0e 01 00       	push   $0x10e64
    8004:	e8 57 3e 00 00       	call   be60 <strlen>
    8009:	89 c7                	mov    %eax,%edi
    800b:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8012:	e8 49 3e 00 00       	call   be60 <strlen>
    8017:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    801b:	83 c4 10             	add    $0x10,%esp
    801e:	39 d8                	cmp    %ebx,%eax
    8020:	76 16                	jbe    8038 <test_mem_limit_negative_and_over_kernelbase+0x4d8>
    8022:	50                   	push   %eax
    8023:	50                   	push   %eax
    8024:	83 c3 01             	add    $0x1,%ebx
    8027:	68 18 c8 00 00       	push   $0xc818
    802c:	6a 01                	push   $0x1
    802e:	e8 6d 43 00 00       	call   c3a0 <printf>
    8033:	83 c4 10             	add    $0x10,%esp
    8036:	eb c4                	jmp    7ffc <test_mem_limit_negative_and_over_kernelbase+0x49c>
    8038:	83 ec 0c             	sub    $0xc,%esp
    803b:	68 86 04 00 00       	push   $0x486
    8040:	e9 ee fd ff ff       	jmp    7e33 <test_mem_limit_negative_and_over_kernelbase+0x2d3>


    // Limit memory by over kernel base
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, MORE_THEN_KERNBASE));
    8045:	50                   	push   %eax
    8046:	50                   	push   %eax
    8047:	68 43 cf 00 00       	push   $0xcf43
    804c:	68 07 cb 00 00       	push   $0xcb07
    8051:	e8 8a 82 ff ff       	call   2e0 <write_file>
    8056:	83 c4 10             	add    $0x10,%esp
    8059:	85 c0                	test   %eax,%eax
    805b:	74 3e                	je     809b <test_mem_limit_negative_and_over_kernelbase+0x53b>
    805d:	31 db                	xor    %ebx,%ebx
    805f:	83 ec 0c             	sub    $0xc,%esp
    8062:	68 cc 0f 01 00       	push   $0x10fcc
    8067:	e8 f4 3d 00 00       	call   be60 <strlen>
    806c:	89 c7                	mov    %eax,%edi
    806e:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8075:	e8 e6 3d 00 00       	call   be60 <strlen>
    807a:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    807e:	83 c4 10             	add    $0x10,%esp
    8081:	39 d8                	cmp    %ebx,%eax
    8083:	76 70                	jbe    80f5 <test_mem_limit_negative_and_over_kernelbase+0x595>
    8085:	50                   	push   %eax
    8086:	50                   	push   %eax
    8087:	83 c3 01             	add    $0x1,%ebx
    808a:	68 18 c8 00 00       	push   $0xc818
    808f:	6a 01                	push   $0x1
    8091:	e8 0a 43 00 00       	call   c3a0 <printf>
    8096:	83 c4 10             	add    $0x10,%esp
    8099:	eb c4                	jmp    805f <test_mem_limit_negative_and_over_kernelbase+0x4ff>
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, MORE_THEN_KERNBASE));
    809b:	50                   	push   %eax
    809c:	50                   	push   %eax
    809d:	68 43 cf 00 00       	push   $0xcf43
    80a2:	68 20 cb 00 00       	push   $0xcb20
    80a7:	e8 34 82 ff ff       	call   2e0 <write_file>
    80ac:	83 c4 10             	add    $0x10,%esp
    80af:	85 c0                	test   %eax,%eax
    80b1:	0f 84 96 00 00 00    	je     814d <test_mem_limit_negative_and_over_kernelbase+0x5ed>
    80b7:	31 db                	xor    %ebx,%ebx
    80b9:	83 ec 0c             	sub    $0xc,%esp
    80bc:	68 54 10 01 00       	push   $0x11054
    80c1:	e8 9a 3d 00 00       	call   be60 <strlen>
    80c6:	89 c7                	mov    %eax,%edi
    80c8:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    80cf:	e8 8c 3d 00 00       	call   be60 <strlen>
    80d4:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    80d8:	83 c4 10             	add    $0x10,%esp
    80db:	39 d8                	cmp    %ebx,%eax
    80dd:	76 42                	jbe    8121 <test_mem_limit_negative_and_over_kernelbase+0x5c1>
    80df:	57                   	push   %edi
    80e0:	57                   	push   %edi
    80e1:	83 c3 01             	add    $0x1,%ebx
    80e4:	68 18 c8 00 00       	push   $0xc818
    80e9:	6a 01                	push   $0x1
    80eb:	e8 b0 42 00 00       	call   c3a0 <printf>
    80f0:	83 c4 10             	add    $0x10,%esp
    80f3:	eb c4                	jmp    80b9 <test_mem_limit_negative_and_over_kernelbase+0x559>
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));


    // Limit memory by over kernel base
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, MORE_THEN_KERNBASE));
    80f5:	83 ec 0c             	sub    $0xc,%esp
    80f8:	68 8a 04 00 00       	push   $0x48a
    80fd:	68 30 c8 00 00       	push   $0xc830
    8102:	56                   	push   %esi
    8103:	68 fc 0f 01 00       	push   $0x10ffc
    8108:	6a 01                	push   $0x1
    810a:	e8 91 42 00 00       	call   c3a0 <printf>
    810f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8116:	00 00 00 
    8119:	83 c4 20             	add    $0x20,%esp
    811c:	e9 c1 fa ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, MORE_THEN_KERNBASE));
    8121:	83 ec 0c             	sub    $0xc,%esp
    8124:	68 8b 04 00 00       	push   $0x48b
    8129:	68 30 c8 00 00       	push   $0xc830
    812e:	56                   	push   %esi
    812f:	68 84 10 01 00       	push   $0x11084
    8134:	6a 01                	push   $0x1
    8136:	e8 65 42 00 00       	call   c3a0 <printf>
    813b:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8142:	00 00 00 
    8145:	83 c4 20             	add    $0x20,%esp
    8148:	e9 95 fa ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>

    // Check for no changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    814d:	50                   	push   %eax
    814e:	50                   	push   %eax
    814f:	6a 00                	push   $0x0
    8151:	68 07 cb 00 00       	push   $0xcb07
    8156:	e8 c5 80 ff ff       	call   220 <read_file>
    815b:	5a                   	pop    %edx
    815c:	59                   	pop    %ecx
    815d:	68 6f ce 00 00       	push   $0xce6f
    8162:	50                   	push   %eax
    8163:	e8 18 3c 00 00       	call   bd80 <strcmp>
    8168:	83 c4 10             	add    $0x10,%esp
    816b:	85 c0                	test   %eax,%eax
    816d:	74 3e                	je     81ad <test_mem_limit_negative_and_over_kernelbase+0x64d>
    816f:	31 db                	xor    %ebx,%ebx
    8171:	83 ec 0c             	sub    $0xc,%esp
    8174:	68 b0 00 01 00       	push   $0x100b0
    8179:	e8 e2 3c 00 00       	call   be60 <strlen>
    817e:	89 c7                	mov    %eax,%edi
    8180:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8187:	e8 d4 3c 00 00       	call   be60 <strlen>
    818c:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8190:	83 c4 10             	add    $0x10,%esp
    8193:	39 d8                	cmp    %ebx,%eax
    8195:	76 76                	jbe    820d <test_mem_limit_negative_and_over_kernelbase+0x6ad>
    8197:	50                   	push   %eax
    8198:	50                   	push   %eax
    8199:	83 c3 01             	add    $0x1,%ebx
    819c:	68 18 c8 00 00       	push   $0xc818
    81a1:	6a 01                	push   $0x1
    81a3:	e8 f8 41 00 00       	call   c3a0 <printf>
    81a8:	83 c4 10             	add    $0x10,%esp
    81ab:	eb c4                	jmp    8171 <test_mem_limit_negative_and_over_kernelbase+0x611>
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));
    81ad:	51                   	push   %ecx
    81ae:	51                   	push   %ecx
    81af:	6a 00                	push   $0x0
    81b1:	68 20 cb 00 00       	push   $0xcb20
    81b6:	e8 65 80 ff ff       	call   220 <read_file>
    81bb:	5b                   	pop    %ebx
    81bc:	5f                   	pop    %edi
    81bd:	68 3a cf 00 00       	push   $0xcf3a
    81c2:	50                   	push   %eax
    81c3:	e8 b8 3b 00 00       	call   bd80 <strcmp>
    81c8:	83 c4 10             	add    $0x10,%esp
    81cb:	85 c0                	test   %eax,%eax
    81cd:	74 58                	je     8227 <test_mem_limit_negative_and_over_kernelbase+0x6c7>
    81cf:	31 db                	xor    %ebx,%ebx
    81d1:	83 ec 0c             	sub    $0xc,%esp
    81d4:	68 64 0e 01 00       	push   $0x10e64
    81d9:	e8 82 3c 00 00       	call   be60 <strlen>
    81de:	89 c7                	mov    %eax,%edi
    81e0:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    81e7:	e8 74 3c 00 00       	call   be60 <strlen>
    81ec:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    81f0:	83 c4 10             	add    $0x10,%esp
    81f3:	39 d8                	cmp    %ebx,%eax
    81f5:	76 23                	jbe    821a <test_mem_limit_negative_and_over_kernelbase+0x6ba>
    81f7:	52                   	push   %edx
    81f8:	52                   	push   %edx
    81f9:	83 c3 01             	add    $0x1,%ebx
    81fc:	68 18 c8 00 00       	push   $0xc818
    8201:	6a 01                	push   $0x1
    8203:	e8 98 41 00 00       	call   c3a0 <printf>
    8208:	83 c4 10             	add    $0x10,%esp
    820b:	eb c4                	jmp    81d1 <test_mem_limit_negative_and_over_kernelbase+0x671>
    // Limit memory by over kernel base
    ASSERT_FALSE(write_file(TEST_1_MEM_MAX, MORE_THEN_KERNBASE));
    ASSERT_FALSE(write_file(TEST_1_MEM_MIN, MORE_THEN_KERNBASE));

    // Check for no changes
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "100\n"));
    820d:	83 ec 0c             	sub    $0xc,%esp
    8210:	68 8e 04 00 00       	push   $0x48e
    8215:	e9 89 fb ff ff       	jmp    7da3 <test_mem_limit_negative_and_over_kernelbase+0x243>
    ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MIN, 0), "50\n"));
    821a:	83 ec 0c             	sub    $0xc,%esp
    821d:	68 8f 04 00 00       	push   $0x48f
    8222:	e9 0c fc ff ff       	jmp    7e33 <test_mem_limit_negative_and_over_kernelbase+0x2d3>

    // Disable memory controller
    ASSERT_TRUE(disable_controller(MEM_CNT));
    8227:	83 ec 0c             	sub    $0xc,%esp
    822a:	31 db                	xor    %ebx,%ebx
    822c:	6a 03                	push   $0x3
    822e:	e8 3d 82 ff ff       	call   470 <disable_controller>
    8233:	83 c4 10             	add    $0x10,%esp
    8236:	85 c0                	test   %eax,%eax
    8238:	0f 85 a4 f9 ff ff    	jne    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>
    823e:	83 ec 0c             	sub    $0xc,%esp
    8241:	68 78 ce 00 00       	push   $0xce78
    8246:	e8 15 3c 00 00       	call   be60 <strlen>
    824b:	89 c7                	mov    %eax,%edi
    824d:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8254:	e8 07 3c 00 00       	call   be60 <strlen>
    8259:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    825d:	83 c4 10             	add    $0x10,%esp
    8260:	39 d8                	cmp    %ebx,%eax
    8262:	76 16                	jbe    827a <test_mem_limit_negative_and_over_kernelbase+0x71a>
    8264:	50                   	push   %eax
    8265:	50                   	push   %eax
    8266:	83 c3 01             	add    $0x1,%ebx
    8269:	68 18 c8 00 00       	push   $0xc818
    826e:	6a 01                	push   $0x1
    8270:	e8 2b 41 00 00       	call   c3a0 <printf>
    8275:	83 c4 10             	add    $0x10,%esp
    8278:	eb c4                	jmp    823e <test_mem_limit_negative_and_over_kernelbase+0x6de>
    827a:	83 ec 0c             	sub    $0xc,%esp
    827d:	68 92 04 00 00       	push   $0x492
    8282:	68 30 c8 00 00       	push   $0xc830
    8287:	56                   	push   %esi
    8288:	68 c0 01 01 00       	push   $0x101c0
    828d:	6a 01                	push   $0x1
    828f:	e8 0c 41 00 00       	call   c3a0 <printf>
    8294:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    829b:	00 00 00 
    829e:	83 c4 20             	add    $0x20,%esp
    82a1:	e9 3c f9 ff ff       	jmp    7be2 <test_mem_limit_negative_and_over_kernelbase+0x82>
    82a6:	8d 76 00             	lea    0x0(%esi),%esi
    82a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000082b0 <test_cant_move_over_mem_limit>:
}

TEST(test_cant_move_over_mem_limit)
{
    82b0:	55                   	push   %ebp
    82b1:	89 e5                	mov    %esp,%ebp
    82b3:	57                   	push   %edi
    82b4:	56                   	push   %esi
    82b5:	53                   	push   %ebx
    82b6:	31 db                	xor    %ebx,%ebx
    82b8:	83 ec 28             	sub    $0x28,%esp
    82bb:	8b 75 08             	mov    0x8(%ebp),%esi
  char saved_mem[12];

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));
    82be:	6a 03                	push   $0x3
    82c0:	e8 5b 81 ff ff       	call   420 <enable_controller>
    82c5:	83 c4 10             	add    $0x10,%esp
    82c8:	85 c0                	test   %eax,%eax
    82ca:	74 19                	je     82e5 <test_cant_move_over_mem_limit+0x35>
    82cc:	eb 72                	jmp    8340 <test_cant_move_over_mem_limit+0x90>
    82ce:	66 90                	xchg   %ax,%ax
    82d0:	83 ec 08             	sub    $0x8,%esp
    82d3:	83 c3 01             	add    $0x1,%ebx
    82d6:	68 18 c8 00 00       	push   $0xc818
    82db:	6a 01                	push   $0x1
    82dd:	e8 be 40 00 00       	call   c3a0 <printf>
    82e2:	83 c4 10             	add    $0x10,%esp
    82e5:	83 ec 0c             	sub    $0xc,%esp
    82e8:	68 46 ce 00 00       	push   $0xce46
    82ed:	e8 6e 3b 00 00       	call   be60 <strlen>
    82f2:	89 c7                	mov    %eax,%edi
    82f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    82fb:	e8 60 3b 00 00       	call   be60 <strlen>
    8300:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8304:	83 c4 10             	add    $0x10,%esp
    8307:	39 d8                	cmp    %ebx,%eax
    8309:	77 c5                	ja     82d0 <test_cant_move_over_mem_limit+0x20>
    830b:	83 ec 0c             	sub    $0xc,%esp
    830e:	68 9a 04 00 00       	push   $0x49a
    8313:	68 30 c8 00 00       	push   $0xc830
    8318:	56                   	push   %esi
    8319:	68 84 fe 00 00       	push   $0xfe84
    831e:	6a 01                	push   $0x1
    8320:	e8 7b 40 00 00       	call   c3a0 <printf>
    8325:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    832c:	00 00 00 
    832f:	83 c4 20             	add    $0x20,%esp
  // Check changes
  ASSERT_FALSE(strncmp(read_file(TEST_1_MEM_MAX, 0), saved_mem, strlen(saved_mem)));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    8332:	8d 65 f4             	lea    -0xc(%ebp),%esp
    8335:	5b                   	pop    %ebx
    8336:	5e                   	pop    %esi
    8337:	5f                   	pop    %edi
    8338:	5d                   	pop    %ebp
    8339:	c3                   	ret    
    833a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // Copy the current saved memory and remove newline at the end
  strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
    8340:	83 ec 08             	sub    $0x8,%esp
    8343:	6a 00                	push   $0x0
    8345:	68 07 cb 00 00       	push   $0xcb07
    834a:	e8 d1 7e ff ff       	call   220 <read_file>
    834f:	59                   	pop    %ecx
    8350:	5b                   	pop    %ebx
    8351:	8d 5d dc             	lea    -0x24(%ebp),%ebx
    8354:	50                   	push   %eax
    8355:	53                   	push   %ebx
    8356:	e8 f5 39 00 00       	call   bd50 <strcpy>
  saved_mem[strlen(saved_mem) - 1] = '\0';
    835b:	89 1c 24             	mov    %ebx,(%esp)
    835e:	e8 fd 3a 00 00       	call   be60 <strlen>

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "0"));
    8363:	5f                   	pop    %edi
  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // Copy the current saved memory and remove newline at the end
  strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
  saved_mem[strlen(saved_mem) - 1] = '\0';
    8364:	c6 44 05 db 00       	movb   $0x0,-0x25(%ebp,%eax,1)

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "0"));
    8369:	58                   	pop    %eax
    836a:	68 82 cc 00 00       	push   $0xcc82
    836f:	68 07 cb 00 00       	push   $0xcb07
    8374:	e8 67 7f ff ff       	call   2e0 <write_file>
    8379:	83 c4 10             	add    $0x10,%esp
    837c:	85 c0                	test   %eax,%eax
    837e:	75 78                	jne    83f8 <test_cant_move_over_mem_limit+0x148>
    8380:	31 db                	xor    %ebx,%ebx
    8382:	eb 19                	jmp    839d <test_cant_move_over_mem_limit+0xed>
    8384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    8388:	83 ec 08             	sub    $0x8,%esp
    838b:	83 c3 01             	add    $0x1,%ebx
    838e:	68 18 c8 00 00       	push   $0xc818
    8393:	6a 01                	push   $0x1
    8395:	e8 06 40 00 00       	call   c3a0 <printf>
    839a:	83 c4 10             	add    $0x10,%esp
    839d:	83 ec 0c             	sub    $0xc,%esp
    83a0:	68 dc 10 01 00       	push   $0x110dc
    83a5:	e8 b6 3a 00 00       	call   be60 <strlen>
    83aa:	89 c7                	mov    %eax,%edi
    83ac:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    83b3:	e8 a8 3a 00 00       	call   be60 <strlen>
    83b8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    83bc:	83 c4 10             	add    $0x10,%esp
    83bf:	39 d8                	cmp    %ebx,%eax
    83c1:	77 c5                	ja     8388 <test_cant_move_over_mem_limit+0xd8>
    83c3:	83 ec 0c             	sub    $0xc,%esp
    83c6:	68 a1 04 00 00       	push   $0x4a1
    83cb:	68 30 c8 00 00       	push   $0xc830
    83d0:	56                   	push   %esi
    83d1:	68 fc 10 01 00       	push   $0x110fc
    83d6:	6a 01                	push   $0x1
    83d8:	e8 c3 3f 00 00       	call   c3a0 <printf>
    83dd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    83e4:	00 00 00 
    83e7:	83 c4 20             	add    $0x20,%esp
  // Check changes
  ASSERT_FALSE(strncmp(read_file(TEST_1_MEM_MAX, 0), saved_mem, strlen(saved_mem)));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    83ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    83ed:	5b                   	pop    %ebx
    83ee:	5e                   	pop    %esi
    83ef:	5f                   	pop    %edi
    83f0:	5d                   	pop    %ebp
    83f1:	c3                   	ret    
    83f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, "0"));

  // Check changes
  ASSERT_FALSE(strcmp(read_file(TEST_1_MEM_MAX, 0), "0\n"));
    83f8:	83 ec 08             	sub    $0x8,%esp
    83fb:	6a 00                	push   $0x0
    83fd:	68 07 cb 00 00       	push   $0xcb07
    8402:	e8 19 7e ff ff       	call   220 <read_file>
    8407:	5f                   	pop    %edi
    8408:	5a                   	pop    %edx
    8409:	68 e7 cd 00 00       	push   $0xcde7
    840e:	50                   	push   %eax
    840f:	e8 6c 39 00 00       	call   bd80 <strcmp>
    8414:	83 c4 10             	add    $0x10,%esp
    8417:	85 c0                	test   %eax,%eax
    8419:	74 6c                	je     8487 <test_cant_move_over_mem_limit+0x1d7>
    841b:	31 db                	xor    %ebx,%ebx
    841d:	eb 16                	jmp    8435 <test_cant_move_over_mem_limit+0x185>
    841f:	90                   	nop
    8420:	83 ec 08             	sub    $0x8,%esp
    8423:	83 c3 01             	add    $0x1,%ebx
    8426:	68 18 c8 00 00       	push   $0xc818
    842b:	6a 01                	push   $0x1
    842d:	e8 6e 3f 00 00       	call   c3a0 <printf>
    8432:	83 c4 10             	add    $0x10,%esp
    8435:	83 ec 0c             	sub    $0xc,%esp
    8438:	68 48 11 01 00       	push   $0x11148
    843d:	e8 1e 3a 00 00       	call   be60 <strlen>
    8442:	89 c7                	mov    %eax,%edi
    8444:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    844b:	e8 10 3a 00 00       	call   be60 <strlen>
    8450:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8454:	83 c4 10             	add    $0x10,%esp
    8457:	39 d8                	cmp    %ebx,%eax
    8459:	77 c5                	ja     8420 <test_cant_move_over_mem_limit+0x170>
    845b:	83 ec 0c             	sub    $0xc,%esp
    845e:	68 a4 04 00 00       	push   $0x4a4
    8463:	68 30 c8 00 00       	push   $0xc830
    8468:	56                   	push   %esi
    8469:	68 74 11 01 00       	push   $0x11174
    846e:	6a 01                	push   $0x1
    8470:	e8 2b 3f 00 00       	call   c3a0 <printf>
    8475:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    847c:	00 00 00 
    847f:	83 c4 20             	add    $0x20,%esp
    8482:	e9 ab fe ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>

  // Attemp to move the current process to "/cgroup/test1" cgroup.
  ASSERT_FALSE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    8487:	e8 dc 3d 00 00       	call   c268 <getpid>
    848c:	83 ec 08             	sub    $0x8,%esp
    848f:	50                   	push   %eax
    8490:	68 ed c9 00 00       	push   $0xc9ed
    8495:	e8 86 81 ff ff       	call   620 <move_proc>
    849a:	83 c4 10             	add    $0x10,%esp
    849d:	85 c0                	test   %eax,%eax
    849f:	74 6e                	je     850f <test_cant_move_over_mem_limit+0x25f>
    84a1:	31 db                	xor    %ebx,%ebx
    84a3:	eb 18                	jmp    84bd <test_cant_move_over_mem_limit+0x20d>
    84a5:	8d 76 00             	lea    0x0(%esi),%esi
    84a8:	83 ec 08             	sub    $0x8,%esp
    84ab:	83 c3 01             	add    $0x1,%ebx
    84ae:	68 18 c8 00 00       	push   $0xc818
    84b3:	6a 01                	push   $0x1
    84b5:	e8 e6 3e 00 00       	call   c3a0 <printf>
    84ba:	83 c4 10             	add    $0x10,%esp
    84bd:	83 ec 0c             	sub    $0xc,%esp
    84c0:	68 c0 ec 00 00       	push   $0xecc0
    84c5:	e8 96 39 00 00       	call   be60 <strlen>
    84ca:	89 c7                	mov    %eax,%edi
    84cc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    84d3:	e8 88 39 00 00       	call   be60 <strlen>
    84d8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    84dc:	83 c4 10             	add    $0x10,%esp
    84df:	39 d8                	cmp    %ebx,%eax
    84e1:	77 c5                	ja     84a8 <test_cant_move_over_mem_limit+0x1f8>
    84e3:	83 ec 0c             	sub    $0xc,%esp
    84e6:	68 a7 04 00 00       	push   $0x4a7
    84eb:	68 30 c8 00 00       	push   $0xc830
    84f0:	56                   	push   %esi
    84f1:	68 ec ec 00 00       	push   $0xecec
    84f6:	6a 01                	push   $0x1
    84f8:	e8 a3 3e 00 00       	call   c3a0 <printf>
    84fd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8504:	00 00 00 
    8507:	83 c4 20             	add    $0x20,%esp
    850a:	e9 23 fe ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>

  // Check that the current process is not in "/cgroup/test1" cgroup.
  ASSERT_FALSE(is_pid_in_group(TEST_1_CGROUP_PROCS, getpid()));
    850f:	e8 54 3d 00 00       	call   c268 <getpid>
    8514:	83 ec 08             	sub    $0x8,%esp
    8517:	50                   	push   %eax
    8518:	68 ed c9 00 00       	push   $0xc9ed
    851d:	e8 2e 81 ff ff       	call   650 <is_pid_in_group>
    8522:	83 c4 10             	add    $0x10,%esp
    8525:	85 c0                	test   %eax,%eax
    8527:	74 6e                	je     8597 <test_cant_move_over_mem_limit+0x2e7>
    8529:	31 db                	xor    %ebx,%ebx
    852b:	eb 18                	jmp    8545 <test_cant_move_over_mem_limit+0x295>
    852d:	8d 76 00             	lea    0x0(%esi),%esi
    8530:	83 ec 08             	sub    $0x8,%esp
    8533:	83 c3 01             	add    $0x1,%ebx
    8536:	68 18 c8 00 00       	push   $0xc818
    853b:	6a 01                	push   $0x1
    853d:	e8 5e 3e 00 00       	call   c3a0 <printf>
    8542:	83 c4 10             	add    $0x10,%esp
    8545:	83 ec 0c             	sub    $0xc,%esp
    8548:	68 40 ed 00 00       	push   $0xed40
    854d:	e8 0e 39 00 00       	call   be60 <strlen>
    8552:	89 c7                	mov    %eax,%edi
    8554:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    855b:	e8 00 39 00 00       	call   be60 <strlen>
    8560:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8564:	83 c4 10             	add    $0x10,%esp
    8567:	39 d8                	cmp    %ebx,%eax
    8569:	77 c5                	ja     8530 <test_cant_move_over_mem_limit+0x280>
    856b:	83 ec 0c             	sub    $0xc,%esp
    856e:	68 aa 04 00 00       	push   $0x4aa
    8573:	68 30 c8 00 00       	push   $0xc830
    8578:	56                   	push   %esi
    8579:	68 70 ed 00 00       	push   $0xed70
    857e:	6a 01                	push   $0x1
    8580:	e8 1b 3e 00 00       	call   c3a0 <printf>
    8585:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    858c:	00 00 00 
    858f:	83 c4 20             	add    $0x20,%esp
    8592:	e9 9b fd ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>

  // Check that the current process is still in root group.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    8597:	e8 cc 3c 00 00       	call   c268 <getpid>
    859c:	83 ec 08             	sub    $0x8,%esp
    859f:	50                   	push   %eax
    85a0:	68 f0 cc 00 00       	push   $0xccf0
    85a5:	e8 a6 80 ff ff       	call   650 <is_pid_in_group>
    85aa:	83 c4 10             	add    $0x10,%esp
    85ad:	85 c0                	test   %eax,%eax
    85af:	75 6b                	jne    861c <test_cant_move_over_mem_limit+0x36c>
    85b1:	31 db                	xor    %ebx,%ebx
    85b3:	eb 15                	jmp    85ca <test_cant_move_over_mem_limit+0x31a>
    85b5:	83 ec 08             	sub    $0x8,%esp
    85b8:	83 c3 01             	add    $0x1,%ebx
    85bb:	68 18 c8 00 00       	push   $0xc818
    85c0:	6a 01                	push   $0x1
    85c2:	e8 d9 3d 00 00       	call   c3a0 <printf>
    85c7:	83 c4 10             	add    $0x10,%esp
    85ca:	83 ec 0c             	sub    $0xc,%esp
    85cd:	68 c8 ed 00 00       	push   $0xedc8
    85d2:	e8 89 38 00 00       	call   be60 <strlen>
    85d7:	89 c7                	mov    %eax,%edi
    85d9:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    85e0:	e8 7b 38 00 00       	call   be60 <strlen>
    85e5:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    85e9:	83 c4 10             	add    $0x10,%esp
    85ec:	39 d8                	cmp    %ebx,%eax
    85ee:	77 c5                	ja     85b5 <test_cant_move_over_mem_limit+0x305>
    85f0:	83 ec 0c             	sub    $0xc,%esp
    85f3:	68 ad 04 00 00       	push   $0x4ad
    85f8:	68 30 c8 00 00       	push   $0xc830
    85fd:	56                   	push   %esi
    85fe:	68 f8 ed 00 00       	push   $0xedf8
    8603:	6a 01                	push   $0x1
    8605:	e8 96 3d 00 00       	call   c3a0 <printf>
    860a:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8611:	00 00 00 
    8614:	83 c4 20             	add    $0x20,%esp
    8617:	e9 16 fd ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>

  // Restore memory limit to original
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, saved_mem));
    861c:	83 ec 08             	sub    $0x8,%esp
    861f:	53                   	push   %ebx
    8620:	68 07 cb 00 00       	push   $0xcb07
    8625:	e8 b6 7c ff ff       	call   2e0 <write_file>
    862a:	83 c4 10             	add    $0x10,%esp
    862d:	85 c0                	test   %eax,%eax
    862f:	75 6b                	jne    869c <test_cant_move_over_mem_limit+0x3ec>
    8631:	31 db                	xor    %ebx,%ebx
    8633:	eb 15                	jmp    864a <test_cant_move_over_mem_limit+0x39a>
    8635:	83 ec 08             	sub    $0x8,%esp
    8638:	83 c3 01             	add    $0x1,%ebx
    863b:	68 18 c8 00 00       	push   $0xc818
    8640:	6a 01                	push   $0x1
    8642:	e8 59 3d 00 00       	call   c3a0 <printf>
    8647:	83 c4 10             	add    $0x10,%esp
    864a:	83 ec 0c             	sub    $0xc,%esp
    864d:	68 cc 11 01 00       	push   $0x111cc
    8652:	e8 09 38 00 00       	call   be60 <strlen>
    8657:	89 c7                	mov    %eax,%edi
    8659:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8660:	e8 fb 37 00 00       	call   be60 <strlen>
    8665:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8669:	83 c4 10             	add    $0x10,%esp
    866c:	39 d8                	cmp    %ebx,%eax
    866e:	77 c5                	ja     8635 <test_cant_move_over_mem_limit+0x385>
    8670:	83 ec 0c             	sub    $0xc,%esp
    8673:	68 b0 04 00 00       	push   $0x4b0
    8678:	68 30 c8 00 00       	push   $0xc830
    867d:	56                   	push   %esi
    867e:	68 f4 11 01 00       	push   $0x111f4
    8683:	6a 01                	push   $0x1
    8685:	e8 16 3d 00 00       	call   c3a0 <printf>
    868a:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8691:	00 00 00 
    8694:	83 c4 20             	add    $0x20,%esp
    8697:	e9 96 fc ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>

  // Check changes
  ASSERT_FALSE(strncmp(read_file(TEST_1_MEM_MAX, 0), saved_mem, strlen(saved_mem)));
    869c:	83 ec 0c             	sub    $0xc,%esp
    869f:	53                   	push   %ebx
    86a0:	e8 bb 37 00 00       	call   be60 <strlen>
    86a5:	5a                   	pop    %edx
    86a6:	59                   	pop    %ecx
    86a7:	6a 00                	push   $0x0
    86a9:	68 07 cb 00 00       	push   $0xcb07
    86ae:	89 c7                	mov    %eax,%edi
    86b0:	e8 6b 7b ff ff       	call   220 <read_file>
    86b5:	83 c4 0c             	add    $0xc,%esp
    86b8:	57                   	push   %edi
    86b9:	53                   	push   %ebx
    86ba:	50                   	push   %eax
    86bb:	e8 10 37 00 00       	call   bdd0 <strncmp>
    86c0:	83 c4 10             	add    $0x10,%esp
    86c3:	85 c0                	test   %eax,%eax
    86c5:	74 70                	je     8737 <test_cant_move_over_mem_limit+0x487>
    86c7:	31 db                	xor    %ebx,%ebx
    86c9:	eb 1a                	jmp    86e5 <test_cant_move_over_mem_limit+0x435>
    86cb:	90                   	nop
    86cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    86d0:	83 ec 08             	sub    $0x8,%esp
    86d3:	83 c3 01             	add    $0x1,%ebx
    86d6:	68 18 c8 00 00       	push   $0xc818
    86db:	6a 01                	push   $0x1
    86dd:	e8 be 3c 00 00       	call   c3a0 <printf>
    86e2:	83 c4 10             	add    $0x10,%esp
    86e5:	83 ec 0c             	sub    $0xc,%esp
    86e8:	68 44 12 01 00       	push   $0x11244
    86ed:	e8 6e 37 00 00       	call   be60 <strlen>
    86f2:	89 c7                	mov    %eax,%edi
    86f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    86fb:	e8 60 37 00 00       	call   be60 <strlen>
    8700:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8704:	83 c4 10             	add    $0x10,%esp
    8707:	39 d8                	cmp    %ebx,%eax
    8709:	77 c5                	ja     86d0 <test_cant_move_over_mem_limit+0x420>
    870b:	83 ec 0c             	sub    $0xc,%esp
    870e:	68 b3 04 00 00       	push   $0x4b3
    8713:	68 30 c8 00 00       	push   $0xc830
    8718:	56                   	push   %esi
    8719:	68 88 12 01 00       	push   $0x11288
    871e:	6a 01                	push   $0x1
    8720:	e8 7b 3c 00 00       	call   c3a0 <printf>
    8725:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    872c:	00 00 00 
    872f:	83 c4 20             	add    $0x20,%esp
    8732:	e9 fb fb ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
    8737:	83 ec 0c             	sub    $0xc,%esp
    873a:	31 db                	xor    %ebx,%ebx
    873c:	6a 03                	push   $0x3
    873e:	e8 2d 7d ff ff       	call   470 <disable_controller>
    8743:	83 c4 10             	add    $0x10,%esp
    8746:	85 c0                	test   %eax,%eax
    8748:	0f 85 e4 fb ff ff    	jne    8332 <test_cant_move_over_mem_limit+0x82>
    874e:	83 ec 0c             	sub    $0xc,%esp
    8751:	68 78 ce 00 00       	push   $0xce78
    8756:	e8 05 37 00 00       	call   be60 <strlen>
    875b:	89 c7                	mov    %eax,%edi
    875d:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8764:	e8 f7 36 00 00       	call   be60 <strlen>
    8769:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    876d:	83 c4 10             	add    $0x10,%esp
    8770:	39 d8                	cmp    %ebx,%eax
    8772:	76 16                	jbe    878a <test_cant_move_over_mem_limit+0x4da>
    8774:	50                   	push   %eax
    8775:	50                   	push   %eax
    8776:	83 c3 01             	add    $0x1,%ebx
    8779:	68 18 c8 00 00       	push   $0xc818
    877e:	6a 01                	push   $0x1
    8780:	e8 1b 3c 00 00       	call   c3a0 <printf>
    8785:	83 c4 10             	add    $0x10,%esp
    8788:	eb c4                	jmp    874e <test_cant_move_over_mem_limit+0x49e>
    878a:	83 ec 0c             	sub    $0xc,%esp
    878d:	68 b6 04 00 00       	push   $0x4b6
    8792:	68 30 c8 00 00       	push   $0xc830
    8797:	56                   	push   %esi
    8798:	68 c0 01 01 00       	push   $0x101c0
    879d:	6a 01                	push   $0x1
    879f:	e8 fc 3b 00 00       	call   c3a0 <printf>
    87a4:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    87ab:	00 00 00 
    87ae:	83 c4 20             	add    $0x20,%esp
    87b1:	e9 7c fb ff ff       	jmp    8332 <test_cant_move_over_mem_limit+0x82>
    87b6:	8d 76 00             	lea    0x0(%esi),%esi
    87b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000087c0 <test_cant_fork_over_mem_limit>:
}

TEST(test_cant_fork_over_mem_limit)
{
    87c0:	55                   	push   %ebp
    87c1:	89 e5                	mov    %esp,%ebp
    87c3:	57                   	push   %edi
    87c4:	56                   	push   %esi
    87c5:	53                   	push   %ebx
  // Save current process memory size.
  char proc_mem[10];
  itoa(proc_mem, getmem());
    87c6:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}

TEST(test_cant_fork_over_mem_limit)
{
    87c9:	83 ec 2c             	sub    $0x2c,%esp
    87cc:	8b 75 08             	mov    0x8(%ebp),%esi
  // Save current process memory size.
  char proc_mem[10];
  itoa(proc_mem, getmem());
    87cf:	e8 fc 3a 00 00       	call   c2d0 <getmem>
    87d4:	83 ec 08             	sub    $0x8,%esp
    87d7:	50                   	push   %eax
    87d8:	53                   	push   %ebx
    87d9:	e8 32 38 00 00       	call   c010 <itoa>
  // Buffer to read contents from memory file.
  char saved_mem[10];

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));
    87de:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
    87e5:	e8 36 7c ff ff       	call   420 <enable_controller>
    87ea:	83 c4 10             	add    $0x10,%esp
    87ed:	85 c0                	test   %eax,%eax
    87ef:	75 77                	jne    8868 <test_cant_fork_over_mem_limit+0xa8>
    87f1:	31 db                	xor    %ebx,%ebx
    87f3:	eb 18                	jmp    880d <test_cant_fork_over_mem_limit+0x4d>
    87f5:	8d 76 00             	lea    0x0(%esi),%esi
    87f8:	83 ec 08             	sub    $0x8,%esp
    87fb:	83 c3 01             	add    $0x1,%ebx
    87fe:	68 18 c8 00 00       	push   $0xc818
    8803:	6a 01                	push   $0x1
    8805:	e8 96 3b 00 00       	call   c3a0 <printf>
    880a:	83 c4 10             	add    $0x10,%esp
    880d:	83 ec 0c             	sub    $0xc,%esp
    8810:	68 46 ce 00 00       	push   $0xce46
    8815:	e8 46 36 00 00       	call   be60 <strlen>
    881a:	89 c7                	mov    %eax,%edi
    881c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8823:	e8 38 36 00 00       	call   be60 <strlen>
    8828:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    882c:	83 c4 10             	add    $0x10,%esp
    882f:	39 d8                	cmp    %ebx,%eax
    8831:	77 c5                	ja     87f8 <test_cant_fork_over_mem_limit+0x38>
    8833:	83 ec 0c             	sub    $0xc,%esp
    8836:	68 c2 04 00 00       	push   $0x4c2
    883b:	68 30 c8 00 00       	push   $0xc830
    8840:	56                   	push   %esi
    8841:	68 84 fe 00 00       	push   $0xfe84
    8846:	6a 01                	push   $0x1
    8848:	e8 53 3b 00 00       	call   c3a0 <printf>
    884d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8854:	00 00 00 
    8857:	83 c4 20             	add    $0x20,%esp
  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    885a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    885d:	5b                   	pop    %ebx
    885e:	5e                   	pop    %esi
    885f:	5f                   	pop    %edi
    8860:	5d                   	pop    %ebp
    8861:	c3                   	ret    
    8862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, proc_mem));
    8868:	83 ec 08             	sub    $0x8,%esp
    886b:	53                   	push   %ebx
    886c:	68 07 cb 00 00       	push   $0xcb07
    8871:	e8 6a 7a ff ff       	call   2e0 <write_file>
    8876:	83 c4 10             	add    $0x10,%esp
    8879:	85 c0                	test   %eax,%eax
    887b:	75 7b                	jne    88f8 <test_cant_fork_over_mem_limit+0x138>
    887d:	31 db                	xor    %ebx,%ebx
    887f:	eb 1c                	jmp    889d <test_cant_fork_over_mem_limit+0xdd>
    8881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    8888:	83 ec 08             	sub    $0x8,%esp
    888b:	83 c3 01             	add    $0x1,%ebx
    888e:	68 18 c8 00 00       	push   $0xc818
    8893:	6a 01                	push   $0x1
    8895:	e8 06 3b 00 00       	call   c3a0 <printf>
    889a:	83 c4 10             	add    $0x10,%esp
    889d:	83 ec 0c             	sub    $0xc,%esp
    88a0:	68 f8 12 01 00       	push   $0x112f8
    88a5:	e8 b6 35 00 00       	call   be60 <strlen>
    88aa:	89 c7                	mov    %eax,%edi
    88ac:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    88b3:	e8 a8 35 00 00       	call   be60 <strlen>
    88b8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    88bc:	83 c4 10             	add    $0x10,%esp
    88bf:	39 d8                	cmp    %ebx,%eax
    88c1:	77 c5                	ja     8888 <test_cant_fork_over_mem_limit+0xc8>
    88c3:	83 ec 0c             	sub    $0xc,%esp
    88c6:	68 c5 04 00 00       	push   $0x4c5
    88cb:	68 30 c8 00 00       	push   $0xc830
    88d0:	56                   	push   %esi
    88d1:	68 20 13 01 00       	push   $0x11320
    88d6:	6a 01                	push   $0x1
    88d8:	e8 c3 3a 00 00       	call   c3a0 <printf>
    88dd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    88e4:	00 00 00 
    88e7:	83 c4 20             	add    $0x20,%esp
  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    88ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    88ed:	5b                   	pop    %ebx
    88ee:	5e                   	pop    %esi
    88ef:	5f                   	pop    %edi
    88f0:	5d                   	pop    %ebp
    88f1:	c3                   	ret    
    88f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, proc_mem));

  // Read the contents of limit file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
    88f8:	83 ec 08             	sub    $0x8,%esp
    88fb:	8d 7d de             	lea    -0x22(%ebp),%edi
    88fe:	6a 00                	push   $0x0
    8900:	68 07 cb 00 00       	push   $0xcb07
    8905:	e8 16 79 ff ff       	call   220 <read_file>
    890a:	5a                   	pop    %edx
    890b:	59                   	pop    %ecx
    890c:	50                   	push   %eax
    890d:	57                   	push   %edi
    890e:	e8 3d 34 00 00       	call   bd50 <strcpy>

  strcat(proc_mem, "\n");
    8913:	58                   	pop    %eax
    8914:	5a                   	pop    %edx
    8915:	68 e1 d0 00 00       	push   $0xd0e1
    891a:	53                   	push   %ebx
    891b:	e8 a0 37 00 00       	call   c0c0 <strcat>

  // Check changes
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));
    8920:	59                   	pop    %ecx
    8921:	58                   	pop    %eax
    8922:	53                   	push   %ebx
    8923:	57                   	push   %edi
    8924:	31 db                	xor    %ebx,%ebx
    8926:	e8 55 34 00 00       	call   bd80 <strcmp>
    892b:	83 c4 10             	add    $0x10,%esp
    892e:	85 c0                	test   %eax,%eax
    8930:	75 1b                	jne    894d <test_cant_fork_over_mem_limit+0x18d>
    8932:	eb 6b                	jmp    899f <test_cant_fork_over_mem_limit+0x1df>
    8934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    8938:	83 ec 08             	sub    $0x8,%esp
    893b:	83 c3 01             	add    $0x1,%ebx
    893e:	68 18 c8 00 00       	push   $0xc818
    8943:	6a 01                	push   $0x1
    8945:	e8 56 3a 00 00       	call   c3a0 <printf>
    894a:	83 c4 10             	add    $0x10,%esp
    894d:	83 ec 0c             	sub    $0xc,%esp
    8950:	68 2a ce 00 00       	push   $0xce2a
    8955:	e8 06 35 00 00       	call   be60 <strlen>
    895a:	89 c7                	mov    %eax,%edi
    895c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8963:	e8 f8 34 00 00       	call   be60 <strlen>
    8968:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    896c:	83 c4 10             	add    $0x10,%esp
    896f:	39 d8                	cmp    %ebx,%eax
    8971:	77 c5                	ja     8938 <test_cant_fork_over_mem_limit+0x178>
    8973:	83 ec 0c             	sub    $0xc,%esp
    8976:	68 cd 04 00 00       	push   $0x4cd
    897b:	68 30 c8 00 00       	push   $0xc830
    8980:	56                   	push   %esi
    8981:	68 3c fe 00 00       	push   $0xfe3c
    8986:	6a 01                	push   $0x1
    8988:	e8 13 3a 00 00       	call   c3a0 <printf>
    898d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8994:	00 00 00 
    8997:	83 c4 20             	add    $0x20,%esp
    899a:	e9 bb fe ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>

  // Move the current process to "/cgroup/test1" cgroup.
  ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    899f:	e8 c4 38 00 00       	call   c268 <getpid>
    89a4:	83 ec 08             	sub    $0x8,%esp
    89a7:	31 db                	xor    %ebx,%ebx
    89a9:	50                   	push   %eax
    89aa:	68 ed c9 00 00       	push   $0xc9ed
    89af:	e8 6c 7c ff ff       	call   620 <move_proc>
    89b4:	83 c4 10             	add    $0x10,%esp
    89b7:	85 c0                	test   %eax,%eax
    89b9:	74 1a                	je     89d5 <test_cant_fork_over_mem_limit+0x215>
    89bb:	eb 6a                	jmp    8a27 <test_cant_fork_over_mem_limit+0x267>
    89bd:	8d 76 00             	lea    0x0(%esi),%esi
    89c0:	83 ec 08             	sub    $0x8,%esp
    89c3:	83 c3 01             	add    $0x1,%ebx
    89c6:	68 18 c8 00 00       	push   $0xc818
    89cb:	6a 01                	push   $0x1
    89cd:	e8 ce 39 00 00       	call   c3a0 <printf>
    89d2:	83 c4 10             	add    $0x10,%esp
    89d5:	83 ec 0c             	sub    $0xc,%esp
    89d8:	68 c0 ec 00 00       	push   $0xecc0
    89dd:	e8 7e 34 00 00       	call   be60 <strlen>
    89e2:	89 c7                	mov    %eax,%edi
    89e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    89eb:	e8 70 34 00 00       	call   be60 <strlen>
    89f0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    89f4:	83 c4 10             	add    $0x10,%esp
    89f7:	39 d8                	cmp    %ebx,%eax
    89f9:	77 c5                	ja     89c0 <test_cant_fork_over_mem_limit+0x200>
    89fb:	83 ec 0c             	sub    $0xc,%esp
    89fe:	68 d0 04 00 00       	push   $0x4d0
    8a03:	68 30 c8 00 00       	push   $0xc830
    8a08:	56                   	push   %esi
    8a09:	68 04 ef 00 00       	push   $0xef04
    8a0e:	6a 01                	push   $0x1
    8a10:	e8 8b 39 00 00       	call   c3a0 <printf>
    8a15:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8a1c:	00 00 00 
    8a1f:	83 c4 20             	add    $0x20,%esp
    8a22:	e9 33 fe ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>

  // Attempt to fork, notice this operation should fail and return -1.
  ASSERT_UINT_EQ(fork(), -1);
    8a27:	e8 b4 37 00 00       	call   c1e0 <fork>
    8a2c:	83 f8 ff             	cmp    $0xffffffff,%eax
    8a2f:	74 2d                	je     8a5e <test_cant_fork_over_mem_limit+0x29e>
    8a31:	e8 aa 37 00 00       	call   c1e0 <fork>
    8a36:	83 ec 0c             	sub    $0xc,%esp
    8a39:	68 d3 04 00 00       	push   $0x4d3
    8a3e:	68 30 c8 00 00       	push   $0xc830
    8a43:	6a ff                	push   $0xffffffff
    8a45:	50                   	push   %eax
    8a46:	56                   	push   %esi
    8a47:	e8 34 76 ff ff       	call   80 <print_error>
    8a4c:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8a53:	00 00 00 
    8a56:	83 c4 20             	add    $0x20,%esp
    8a59:	e9 fc fd ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>

  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    8a5e:	e8 05 38 00 00       	call   c268 <getpid>
    8a63:	83 ec 08             	sub    $0x8,%esp
    8a66:	31 db                	xor    %ebx,%ebx
    8a68:	50                   	push   %eax
    8a69:	68 f0 cc 00 00       	push   $0xccf0
    8a6e:	e8 ad 7b ff ff       	call   620 <move_proc>
    8a73:	83 c4 10             	add    $0x10,%esp
    8a76:	85 c0                	test   %eax,%eax
    8a78:	74 1b                	je     8a95 <test_cant_fork_over_mem_limit+0x2d5>
    8a7a:	eb 6b                	jmp    8ae7 <test_cant_fork_over_mem_limit+0x327>
    8a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    8a80:	83 ec 08             	sub    $0x8,%esp
    8a83:	83 c3 01             	add    $0x1,%ebx
    8a86:	68 18 c8 00 00       	push   $0xc818
    8a8b:	6a 01                	push   $0x1
    8a8d:	e8 0e 39 00 00       	call   c3a0 <printf>
    8a92:	83 c4 10             	add    $0x10,%esp
    8a95:	83 ec 0c             	sub    $0xc,%esp
    8a98:	68 b0 ef 00 00       	push   $0xefb0
    8a9d:	e8 be 33 00 00       	call   be60 <strlen>
    8aa2:	89 c7                	mov    %eax,%edi
    8aa4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8aab:	e8 b0 33 00 00       	call   be60 <strlen>
    8ab0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8ab4:	83 c4 10             	add    $0x10,%esp
    8ab7:	39 d8                	cmp    %ebx,%eax
    8ab9:	77 c5                	ja     8a80 <test_cant_fork_over_mem_limit+0x2c0>
    8abb:	83 ec 0c             	sub    $0xc,%esp
    8abe:	68 d6 04 00 00       	push   $0x4d6
    8ac3:	68 30 c8 00 00       	push   $0xc830
    8ac8:	56                   	push   %esi
    8ac9:	68 d8 ef 00 00       	push   $0xefd8
    8ace:	6a 01                	push   $0x1
    8ad0:	e8 cb 38 00 00       	call   c3a0 <printf>
    8ad5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8adc:	00 00 00 
    8adf:	83 c4 20             	add    $0x20,%esp
    8ae2:	e9 73 fd ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    8ae7:	e8 7c 37 00 00       	call   c268 <getpid>
    8aec:	83 ec 08             	sub    $0x8,%esp
    8aef:	31 db                	xor    %ebx,%ebx
    8af1:	50                   	push   %eax
    8af2:	68 f0 cc 00 00       	push   $0xccf0
    8af7:	e8 54 7b ff ff       	call   650 <is_pid_in_group>
    8afc:	83 c4 10             	add    $0x10,%esp
    8aff:	85 c0                	test   %eax,%eax
    8b01:	74 1a                	je     8b1d <test_cant_fork_over_mem_limit+0x35d>
    8b03:	eb 6a                	jmp    8b6f <test_cant_fork_over_mem_limit+0x3af>
    8b05:	8d 76 00             	lea    0x0(%esi),%esi
    8b08:	83 ec 08             	sub    $0x8,%esp
    8b0b:	83 c3 01             	add    $0x1,%ebx
    8b0e:	68 18 c8 00 00       	push   $0xc818
    8b13:	6a 01                	push   $0x1
    8b15:	e8 86 38 00 00       	call   c3a0 <printf>
    8b1a:	83 c4 10             	add    $0x10,%esp
    8b1d:	83 ec 0c             	sub    $0xc,%esp
    8b20:	68 c8 ed 00 00       	push   $0xedc8
    8b25:	e8 36 33 00 00       	call   be60 <strlen>
    8b2a:	89 c7                	mov    %eax,%edi
    8b2c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8b33:	e8 28 33 00 00       	call   be60 <strlen>
    8b38:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8b3c:	83 c4 10             	add    $0x10,%esp
    8b3f:	39 d8                	cmp    %ebx,%eax
    8b41:	77 c5                	ja     8b08 <test_cant_fork_over_mem_limit+0x348>
    8b43:	83 ec 0c             	sub    $0xc,%esp
    8b46:	68 d9 04 00 00       	push   $0x4d9
    8b4b:	68 30 c8 00 00       	push   $0xc830
    8b50:	56                   	push   %esi
    8b51:	68 f8 ed 00 00       	push   $0xedf8
    8b56:	6a 01                	push   $0x1
    8b58:	e8 43 38 00 00       	call   c3a0 <printf>
    8b5d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8b64:	00 00 00 
    8b67:	83 c4 20             	add    $0x20,%esp
    8b6a:	e9 eb fc ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
    8b6f:	83 ec 0c             	sub    $0xc,%esp
    8b72:	31 db                	xor    %ebx,%ebx
    8b74:	6a 03                	push   $0x3
    8b76:	e8 f5 78 ff ff       	call   470 <disable_controller>
    8b7b:	83 c4 10             	add    $0x10,%esp
    8b7e:	85 c0                	test   %eax,%eax
    8b80:	74 23                	je     8ba5 <test_cant_fork_over_mem_limit+0x3e5>
    8b82:	e9 d3 fc ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>
    8b87:	89 f6                	mov    %esi,%esi
    8b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    8b90:	83 ec 08             	sub    $0x8,%esp
    8b93:	83 c3 01             	add    $0x1,%ebx
    8b96:	68 18 c8 00 00       	push   $0xc818
    8b9b:	6a 01                	push   $0x1
    8b9d:	e8 fe 37 00 00       	call   c3a0 <printf>
    8ba2:	83 c4 10             	add    $0x10,%esp
    8ba5:	83 ec 0c             	sub    $0xc,%esp
    8ba8:	68 78 ce 00 00       	push   $0xce78
    8bad:	e8 ae 32 00 00       	call   be60 <strlen>
    8bb2:	89 c7                	mov    %eax,%edi
    8bb4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8bbb:	e8 a0 32 00 00       	call   be60 <strlen>
    8bc0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8bc4:	83 c4 10             	add    $0x10,%esp
    8bc7:	39 d8                	cmp    %ebx,%eax
    8bc9:	77 c5                	ja     8b90 <test_cant_fork_over_mem_limit+0x3d0>
    8bcb:	83 ec 0c             	sub    $0xc,%esp
    8bce:	68 dc 04 00 00       	push   $0x4dc
    8bd3:	68 30 c8 00 00       	push   $0xc830
    8bd8:	56                   	push   %esi
    8bd9:	68 c0 01 01 00       	push   $0x101c0
    8bde:	6a 01                	push   $0x1
    8be0:	e8 bb 37 00 00       	call   c3a0 <printf>
    8be5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8bec:	00 00 00 
    8bef:	83 c4 20             	add    $0x20,%esp
    8bf2:	e9 63 fc ff ff       	jmp    885a <test_cant_fork_over_mem_limit+0x9a>
    8bf7:	89 f6                	mov    %esi,%esi
    8bf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00008c00 <test_cant_grow_over_mem_limit>:
}

TEST(test_cant_grow_over_mem_limit)
{
    8c00:	55                   	push   %ebp
    8c01:	89 e5                	mov    %esp,%ebp
    8c03:	57                   	push   %edi
    8c04:	56                   	push   %esi
    8c05:	53                   	push   %ebx
  // Save current process memory size.
  char proc_mem[10];
  itoa(proc_mem, getmem());
    8c06:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}

TEST(test_cant_grow_over_mem_limit)
{
    8c09:	83 ec 2c             	sub    $0x2c,%esp
    8c0c:	8b 75 08             	mov    0x8(%ebp),%esi
  // Save current process memory size.
  char proc_mem[10];
  itoa(proc_mem, getmem());
    8c0f:	e8 bc 36 00 00       	call   c2d0 <getmem>
    8c14:	83 ec 08             	sub    $0x8,%esp
    8c17:	50                   	push   %eax
    8c18:	53                   	push   %ebx
    8c19:	e8 f2 33 00 00       	call   c010 <itoa>
  // Buffer to read contents from memory file.
  char saved_mem[10];

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));
    8c1e:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
    8c25:	e8 f6 77 ff ff       	call   420 <enable_controller>
    8c2a:	83 c4 10             	add    $0x10,%esp
    8c2d:	85 c0                	test   %eax,%eax
    8c2f:	75 77                	jne    8ca8 <test_cant_grow_over_mem_limit+0xa8>
    8c31:	31 db                	xor    %ebx,%ebx
    8c33:	eb 18                	jmp    8c4d <test_cant_grow_over_mem_limit+0x4d>
    8c35:	8d 76 00             	lea    0x0(%esi),%esi
    8c38:	83 ec 08             	sub    $0x8,%esp
    8c3b:	83 c3 01             	add    $0x1,%ebx
    8c3e:	68 18 c8 00 00       	push   $0xc818
    8c43:	6a 01                	push   $0x1
    8c45:	e8 56 37 00 00       	call   c3a0 <printf>
    8c4a:	83 c4 10             	add    $0x10,%esp
    8c4d:	83 ec 0c             	sub    $0xc,%esp
    8c50:	68 46 ce 00 00       	push   $0xce46
    8c55:	e8 06 32 00 00       	call   be60 <strlen>
    8c5a:	89 c7                	mov    %eax,%edi
    8c5c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8c63:	e8 f8 31 00 00       	call   be60 <strlen>
    8c68:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8c6c:	83 c4 10             	add    $0x10,%esp
    8c6f:	39 d8                	cmp    %ebx,%eax
    8c71:	77 c5                	ja     8c38 <test_cant_grow_over_mem_limit+0x38>
    8c73:	83 ec 0c             	sub    $0xc,%esp
    8c76:	68 e8 04 00 00       	push   $0x4e8
    8c7b:	68 30 c8 00 00       	push   $0xc830
    8c80:	56                   	push   %esi
    8c81:	68 84 fe 00 00       	push   $0xfe84
    8c86:	6a 01                	push   $0x1
    8c88:	e8 13 37 00 00       	call   c3a0 <printf>
    8c8d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8c94:	00 00 00 
    8c97:	83 c4 20             	add    $0x20,%esp
  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    8c9a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    8c9d:	5b                   	pop    %ebx
    8c9e:	5e                   	pop    %esi
    8c9f:	5f                   	pop    %edi
    8ca0:	5d                   	pop    %ebp
    8ca1:	c3                   	ret    
    8ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  // Enable memory controller
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, proc_mem));
    8ca8:	83 ec 08             	sub    $0x8,%esp
    8cab:	53                   	push   %ebx
    8cac:	68 07 cb 00 00       	push   $0xcb07
    8cb1:	e8 2a 76 ff ff       	call   2e0 <write_file>
    8cb6:	83 c4 10             	add    $0x10,%esp
    8cb9:	85 c0                	test   %eax,%eax
    8cbb:	75 7b                	jne    8d38 <test_cant_grow_over_mem_limit+0x138>
    8cbd:	31 db                	xor    %ebx,%ebx
    8cbf:	eb 1c                	jmp    8cdd <test_cant_grow_over_mem_limit+0xdd>
    8cc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    8cc8:	83 ec 08             	sub    $0x8,%esp
    8ccb:	83 c3 01             	add    $0x1,%ebx
    8cce:	68 18 c8 00 00       	push   $0xc818
    8cd3:	6a 01                	push   $0x1
    8cd5:	e8 c6 36 00 00       	call   c3a0 <printf>
    8cda:	83 c4 10             	add    $0x10,%esp
    8cdd:	83 ec 0c             	sub    $0xc,%esp
    8ce0:	68 f8 12 01 00       	push   $0x112f8
    8ce5:	e8 76 31 00 00       	call   be60 <strlen>
    8cea:	89 c7                	mov    %eax,%edi
    8cec:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8cf3:	e8 68 31 00 00       	call   be60 <strlen>
    8cf8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8cfc:	83 c4 10             	add    $0x10,%esp
    8cff:	39 d8                	cmp    %ebx,%eax
    8d01:	77 c5                	ja     8cc8 <test_cant_grow_over_mem_limit+0xc8>
    8d03:	83 ec 0c             	sub    $0xc,%esp
    8d06:	68 eb 04 00 00       	push   $0x4eb
    8d0b:	68 30 c8 00 00       	push   $0xc830
    8d10:	56                   	push   %esi
    8d11:	68 20 13 01 00       	push   $0x11320
    8d16:	6a 01                	push   $0x1
    8d18:	e8 83 36 00 00       	call   c3a0 <printf>
    8d1d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8d24:	00 00 00 
    8d27:	83 c4 20             	add    $0x20,%esp
  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
}
    8d2a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    8d2d:	5b                   	pop    %ebx
    8d2e:	5e                   	pop    %esi
    8d2f:	5f                   	pop    %edi
    8d30:	5d                   	pop    %ebp
    8d31:	c3                   	ret    
    8d32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  ASSERT_TRUE(enable_controller(MEM_CNT));

  // Update memory limit
  ASSERT_TRUE(write_file(TEST_1_MEM_MAX, proc_mem));

  strcat(proc_mem, "\n");
    8d38:	83 ec 08             	sub    $0x8,%esp
    8d3b:	68 e1 d0 00 00       	push   $0xd0e1
    8d40:	53                   	push   %ebx
    8d41:	e8 7a 33 00 00       	call   c0c0 <strcat>

  // Read the contents of limit file and convert it for comparison.
  strcpy(saved_mem, read_file(TEST_1_MEM_MAX, 0));
    8d46:	58                   	pop    %eax
    8d47:	5a                   	pop    %edx
    8d48:	6a 00                	push   $0x0
    8d4a:	68 07 cb 00 00       	push   $0xcb07
    8d4f:	e8 cc 74 ff ff       	call   220 <read_file>
    8d54:	59                   	pop    %ecx
    8d55:	5f                   	pop    %edi
    8d56:	8d 7d de             	lea    -0x22(%ebp),%edi
    8d59:	50                   	push   %eax
    8d5a:	57                   	push   %edi
    8d5b:	e8 f0 2f 00 00       	call   bd50 <strcpy>

  // Check changes
  ASSERT_FALSE(strcmp(saved_mem, proc_mem));
    8d60:	58                   	pop    %eax
    8d61:	5a                   	pop    %edx
    8d62:	53                   	push   %ebx
    8d63:	57                   	push   %edi
    8d64:	31 db                	xor    %ebx,%ebx
    8d66:	e8 15 30 00 00       	call   bd80 <strcmp>
    8d6b:	83 c4 10             	add    $0x10,%esp
    8d6e:	85 c0                	test   %eax,%eax
    8d70:	75 1b                	jne    8d8d <test_cant_grow_over_mem_limit+0x18d>
    8d72:	eb 6b                	jmp    8ddf <test_cant_grow_over_mem_limit+0x1df>
    8d74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    8d78:	83 ec 08             	sub    $0x8,%esp
    8d7b:	83 c3 01             	add    $0x1,%ebx
    8d7e:	68 18 c8 00 00       	push   $0xc818
    8d83:	6a 01                	push   $0x1
    8d85:	e8 16 36 00 00       	call   c3a0 <printf>
    8d8a:	83 c4 10             	add    $0x10,%esp
    8d8d:	83 ec 0c             	sub    $0xc,%esp
    8d90:	68 2a ce 00 00       	push   $0xce2a
    8d95:	e8 c6 30 00 00       	call   be60 <strlen>
    8d9a:	89 c7                	mov    %eax,%edi
    8d9c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8da3:	e8 b8 30 00 00       	call   be60 <strlen>
    8da8:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8dac:	83 c4 10             	add    $0x10,%esp
    8daf:	39 d8                	cmp    %ebx,%eax
    8db1:	77 c5                	ja     8d78 <test_cant_grow_over_mem_limit+0x178>
    8db3:	83 ec 0c             	sub    $0xc,%esp
    8db6:	68 f3 04 00 00       	push   $0x4f3
    8dbb:	68 30 c8 00 00       	push   $0xc830
    8dc0:	56                   	push   %esi
    8dc1:	68 3c fe 00 00       	push   $0xfe3c
    8dc6:	6a 01                	push   $0x1
    8dc8:	e8 d3 35 00 00       	call   c3a0 <printf>
    8dcd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8dd4:	00 00 00 
    8dd7:	83 c4 20             	add    $0x20,%esp
    8dda:	e9 bb fe ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>

  // Move the current process to "/cgroup/test1" cgroup.
  ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, getpid()));
    8ddf:	e8 84 34 00 00       	call   c268 <getpid>
    8de4:	83 ec 08             	sub    $0x8,%esp
    8de7:	31 db                	xor    %ebx,%ebx
    8de9:	50                   	push   %eax
    8dea:	68 ed c9 00 00       	push   $0xc9ed
    8def:	e8 2c 78 ff ff       	call   620 <move_proc>
    8df4:	83 c4 10             	add    $0x10,%esp
    8df7:	85 c0                	test   %eax,%eax
    8df9:	74 1a                	je     8e15 <test_cant_grow_over_mem_limit+0x215>
    8dfb:	eb 6a                	jmp    8e67 <test_cant_grow_over_mem_limit+0x267>
    8dfd:	8d 76 00             	lea    0x0(%esi),%esi
    8e00:	83 ec 08             	sub    $0x8,%esp
    8e03:	83 c3 01             	add    $0x1,%ebx
    8e06:	68 18 c8 00 00       	push   $0xc818
    8e0b:	6a 01                	push   $0x1
    8e0d:	e8 8e 35 00 00       	call   c3a0 <printf>
    8e12:	83 c4 10             	add    $0x10,%esp
    8e15:	83 ec 0c             	sub    $0xc,%esp
    8e18:	68 c0 ec 00 00       	push   $0xecc0
    8e1d:	e8 3e 30 00 00       	call   be60 <strlen>
    8e22:	89 c7                	mov    %eax,%edi
    8e24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8e2b:	e8 30 30 00 00       	call   be60 <strlen>
    8e30:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8e34:	83 c4 10             	add    $0x10,%esp
    8e37:	39 d8                	cmp    %ebx,%eax
    8e39:	77 c5                	ja     8e00 <test_cant_grow_over_mem_limit+0x200>
    8e3b:	83 ec 0c             	sub    $0xc,%esp
    8e3e:	68 f6 04 00 00       	push   $0x4f6
    8e43:	68 30 c8 00 00       	push   $0xc830
    8e48:	56                   	push   %esi
    8e49:	68 04 ef 00 00       	push   $0xef04
    8e4e:	6a 01                	push   $0x1
    8e50:	e8 4b 35 00 00       	call   c3a0 <printf>
    8e55:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8e5c:	00 00 00 
    8e5f:	83 c4 20             	add    $0x20,%esp
    8e62:	e9 33 fe ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>

  // Attempt to grow process memory, notice this operation should fail and return -1.
  ASSERT_UINT_EQ((int)sbrk(10), -1);
    8e67:	83 ec 0c             	sub    $0xc,%esp
    8e6a:	6a 0a                	push   $0xa
    8e6c:	e8 ff 33 00 00       	call   c270 <sbrk>
    8e71:	83 c4 10             	add    $0x10,%esp
    8e74:	83 f8 ff             	cmp    $0xffffffff,%eax
    8e77:	74 31                	je     8eaa <test_cant_grow_over_mem_limit+0x2aa>
    8e79:	83 ec 0c             	sub    $0xc,%esp
    8e7c:	6a 0a                	push   $0xa
    8e7e:	e8 ed 33 00 00       	call   c270 <sbrk>
    8e83:	c7 04 24 f9 04 00 00 	movl   $0x4f9,(%esp)
    8e8a:	68 30 c8 00 00       	push   $0xc830
    8e8f:	6a ff                	push   $0xffffffff
    8e91:	50                   	push   %eax
    8e92:	56                   	push   %esi
    8e93:	e8 e8 71 ff ff       	call   80 <print_error>
    8e98:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8e9f:	00 00 00 
    8ea2:	83 c4 20             	add    $0x20,%esp
    8ea5:	e9 f0 fd ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>

  // Return the process to root cgroup.
  ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, getpid()));
    8eaa:	e8 b9 33 00 00       	call   c268 <getpid>
    8eaf:	83 ec 08             	sub    $0x8,%esp
    8eb2:	31 db                	xor    %ebx,%ebx
    8eb4:	50                   	push   %eax
    8eb5:	68 f0 cc 00 00       	push   $0xccf0
    8eba:	e8 61 77 ff ff       	call   620 <move_proc>
    8ebf:	83 c4 10             	add    $0x10,%esp
    8ec2:	85 c0                	test   %eax,%eax
    8ec4:	74 1f                	je     8ee5 <test_cant_grow_over_mem_limit+0x2e5>
    8ec6:	eb 6f                	jmp    8f37 <test_cant_grow_over_mem_limit+0x337>
    8ec8:	90                   	nop
    8ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    8ed0:	83 ec 08             	sub    $0x8,%esp
    8ed3:	83 c3 01             	add    $0x1,%ebx
    8ed6:	68 18 c8 00 00       	push   $0xc818
    8edb:	6a 01                	push   $0x1
    8edd:	e8 be 34 00 00       	call   c3a0 <printf>
    8ee2:	83 c4 10             	add    $0x10,%esp
    8ee5:	83 ec 0c             	sub    $0xc,%esp
    8ee8:	68 b0 ef 00 00       	push   $0xefb0
    8eed:	e8 6e 2f 00 00       	call   be60 <strlen>
    8ef2:	89 c7                	mov    %eax,%edi
    8ef4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8efb:	e8 60 2f 00 00       	call   be60 <strlen>
    8f00:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8f04:	83 c4 10             	add    $0x10,%esp
    8f07:	39 d8                	cmp    %ebx,%eax
    8f09:	77 c5                	ja     8ed0 <test_cant_grow_over_mem_limit+0x2d0>
    8f0b:	83 ec 0c             	sub    $0xc,%esp
    8f0e:	68 fc 04 00 00       	push   $0x4fc
    8f13:	68 30 c8 00 00       	push   $0xc830
    8f18:	56                   	push   %esi
    8f19:	68 d8 ef 00 00       	push   $0xefd8
    8f1e:	6a 01                	push   $0x1
    8f20:	e8 7b 34 00 00       	call   c3a0 <printf>
    8f25:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8f2c:	00 00 00 
    8f2f:	83 c4 20             	add    $0x20,%esp
    8f32:	e9 63 fd ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>

  // Check that the process we returned is really in root cgroup.
  ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, getpid()));
    8f37:	e8 2c 33 00 00       	call   c268 <getpid>
    8f3c:	83 ec 08             	sub    $0x8,%esp
    8f3f:	31 db                	xor    %ebx,%ebx
    8f41:	50                   	push   %eax
    8f42:	68 f0 cc 00 00       	push   $0xccf0
    8f47:	e8 04 77 ff ff       	call   650 <is_pid_in_group>
    8f4c:	83 c4 10             	add    $0x10,%esp
    8f4f:	85 c0                	test   %eax,%eax
    8f51:	74 1a                	je     8f6d <test_cant_grow_over_mem_limit+0x36d>
    8f53:	eb 6a                	jmp    8fbf <test_cant_grow_over_mem_limit+0x3bf>
    8f55:	8d 76 00             	lea    0x0(%esi),%esi
    8f58:	83 ec 08             	sub    $0x8,%esp
    8f5b:	83 c3 01             	add    $0x1,%ebx
    8f5e:	68 18 c8 00 00       	push   $0xc818
    8f63:	6a 01                	push   $0x1
    8f65:	e8 36 34 00 00       	call   c3a0 <printf>
    8f6a:	83 c4 10             	add    $0x10,%esp
    8f6d:	83 ec 0c             	sub    $0xc,%esp
    8f70:	68 c8 ed 00 00       	push   $0xedc8
    8f75:	e8 e6 2e 00 00       	call   be60 <strlen>
    8f7a:	89 c7                	mov    %eax,%edi
    8f7c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    8f83:	e8 d8 2e 00 00       	call   be60 <strlen>
    8f88:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    8f8c:	83 c4 10             	add    $0x10,%esp
    8f8f:	39 d8                	cmp    %ebx,%eax
    8f91:	77 c5                	ja     8f58 <test_cant_grow_over_mem_limit+0x358>
    8f93:	83 ec 0c             	sub    $0xc,%esp
    8f96:	68 ff 04 00 00       	push   $0x4ff
    8f9b:	68 30 c8 00 00       	push   $0xc830
    8fa0:	56                   	push   %esi
    8fa1:	68 f8 ed 00 00       	push   $0xedf8
    8fa6:	6a 01                	push   $0x1
    8fa8:	e8 f3 33 00 00       	call   c3a0 <printf>
    8fad:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    8fb4:	00 00 00 
    8fb7:	83 c4 20             	add    $0x20,%esp
    8fba:	e9 db fc ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>

  // Disable memory controller
  ASSERT_TRUE(disable_controller(MEM_CNT));
    8fbf:	83 ec 0c             	sub    $0xc,%esp
    8fc2:	31 db                	xor    %ebx,%ebx
    8fc4:	6a 03                	push   $0x3
    8fc6:	e8 a5 74 ff ff       	call   470 <disable_controller>
    8fcb:	83 c4 10             	add    $0x10,%esp
    8fce:	85 c0                	test   %eax,%eax
    8fd0:	74 23                	je     8ff5 <test_cant_grow_over_mem_limit+0x3f5>
    8fd2:	e9 c3 fc ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>
    8fd7:	89 f6                	mov    %esi,%esi
    8fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    8fe0:	83 ec 08             	sub    $0x8,%esp
    8fe3:	83 c3 01             	add    $0x1,%ebx
    8fe6:	68 18 c8 00 00       	push   $0xc818
    8feb:	6a 01                	push   $0x1
    8fed:	e8 ae 33 00 00       	call   c3a0 <printf>
    8ff2:	83 c4 10             	add    $0x10,%esp
    8ff5:	83 ec 0c             	sub    $0xc,%esp
    8ff8:	68 78 ce 00 00       	push   $0xce78
    8ffd:	e8 5e 2e 00 00       	call   be60 <strlen>
    9002:	89 c7                	mov    %eax,%edi
    9004:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    900b:	e8 50 2e 00 00       	call   be60 <strlen>
    9010:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    9014:	83 c4 10             	add    $0x10,%esp
    9017:	39 d8                	cmp    %ebx,%eax
    9019:	77 c5                	ja     8fe0 <test_cant_grow_over_mem_limit+0x3e0>
    901b:	83 ec 0c             	sub    $0xc,%esp
    901e:	68 02 05 00 00       	push   $0x502
    9023:	68 30 c8 00 00       	push   $0xc830
    9028:	56                   	push   %esi
    9029:	68 c0 01 01 00       	push   $0x101c0
    902e:	6a 01                	push   $0x1
    9030:	e8 6b 33 00 00       	call   c3a0 <printf>
    9035:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    903c:	00 00 00 
    903f:	83 c4 20             	add    $0x20,%esp
    9042:	e9 53 fc ff ff       	jmp    8c9a <test_cant_grow_over_mem_limit+0x9a>
    9047:	89 f6                	mov    %esi,%esi
    9049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00009050 <test_memory_stat_content_valid>:
}

TEST(test_memory_stat_content_valid)
{
    9050:	55                   	push   %ebp
    9051:	89 e5                	mov    %esp,%ebp
    9053:	57                   	push   %edi
    9054:	56                   	push   %esi
    9055:	53                   	push   %ebx
    9056:	81 ec 34 01 00 00    	sub    $0x134,%esp
    char buf[265];
    strcpy(buf, read_file(TEST_1_MEM_STAT, 0));
    905c:	6a 00                	push   $0x0
    905e:	68 39 cb 00 00       	push   $0xcb39
    9063:	e8 b8 71 ff ff       	call   220 <read_file>
    9068:	59                   	pop    %ecx
    9069:	5b                   	pop    %ebx
    906a:	8d 9d df fe ff ff    	lea    -0x121(%ebp),%ebx
    9070:	50                   	push   %eax
    9071:	53                   	push   %ebx
    9072:	e8 d9 2c 00 00       	call   bd50 <strcpy>
    int file_dirty = get_val(buf, "file_dirty - ");
    9077:	5e                   	pop    %esi
    9078:	5f                   	pop    %edi
    9079:	68 4e cf 00 00       	push   $0xcf4e
    907e:	53                   	push   %ebx
    907f:	e8 8c 77 ff ff       	call   810 <get_val>
    9084:	89 c7                	mov    %eax,%edi
    int file_dirty_aggregated = get_val(buf, "file_dirty_aggregated - ");
    9086:	58                   	pop    %eax
    9087:	5a                   	pop    %edx
    9088:	68 5c cf 00 00       	push   $0xcf5c
    908d:	53                   	push   %ebx
    908e:	e8 7d 77 ff ff       	call   810 <get_val>
    int pgfault = get_val(buf, "pgfault - ");
    9093:	59                   	pop    %ecx
TEST(test_memory_stat_content_valid)
{
    char buf[265];
    strcpy(buf, read_file(TEST_1_MEM_STAT, 0));
    int file_dirty = get_val(buf, "file_dirty - ");
    int file_dirty_aggregated = get_val(buf, "file_dirty_aggregated - ");
    9094:	89 c6                	mov    %eax,%esi
    int pgfault = get_val(buf, "pgfault - ");
    9096:	58                   	pop    %eax
    9097:	68 75 cf 00 00       	push   $0xcf75
    909c:	53                   	push   %ebx
    909d:	e8 6e 77 ff ff       	call   810 <get_val>
    90a2:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
    int pgmajfault = get_val(buf, "file_dirty - ");
    90a8:	58                   	pop    %eax
    90a9:	5a                   	pop    %edx
    90aa:	68 4e cf 00 00       	push   $0xcf4e
    90af:	53                   	push   %ebx
    90b0:	e8 5b 77 ff ff       	call   810 <get_val>
    ASSERT_UINT_EQ(file_dirty, 0);
    90b5:	83 c4 10             	add    $0x10,%esp
    90b8:	85 ff                	test   %edi,%edi
    90ba:	75 44                	jne    9100 <test_memory_stat_content_valid+0xb0>
    ASSERT_UINT_EQ(file_dirty_aggregated, 0);
    90bc:	85 f6                	test   %esi,%esi
    90be:	75 70                	jne    9130 <test_memory_stat_content_valid+0xe0>
    ASSERT_UINT_EQ(pgfault, 0);
    90c0:	8b 95 d4 fe ff ff    	mov    -0x12c(%ebp),%edx
    90c6:	85 d2                	test   %edx,%edx
    90c8:	0f 85 92 00 00 00    	jne    9160 <test_memory_stat_content_valid+0x110>
    ASSERT_UINT_EQ(pgmajfault, 0);
    90ce:	85 c0                	test   %eax,%eax
    90d0:	74 25                	je     90f7 <test_memory_stat_content_valid+0xa7>
    90d2:	83 ec 0c             	sub    $0xc,%esp
    90d5:	68 10 05 00 00       	push   $0x510
    90da:	68 30 c8 00 00       	push   $0xc830
    90df:	6a 00                	push   $0x0
    90e1:	50                   	push   %eax
    90e2:	ff 75 08             	pushl  0x8(%ebp)
    90e5:	e8 96 6f ff ff       	call   80 <print_error>
    90ea:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    90f1:	00 00 00 
    90f4:	83 c4 20             	add    $0x20,%esp
}
    90f7:	8d 65 f4             	lea    -0xc(%ebp),%esp
    90fa:	5b                   	pop    %ebx
    90fb:	5e                   	pop    %esi
    90fc:	5f                   	pop    %edi
    90fd:	5d                   	pop    %ebp
    90fe:	c3                   	ret    
    90ff:	90                   	nop
    strcpy(buf, read_file(TEST_1_MEM_STAT, 0));
    int file_dirty = get_val(buf, "file_dirty - ");
    int file_dirty_aggregated = get_val(buf, "file_dirty_aggregated - ");
    int pgfault = get_val(buf, "pgfault - ");
    int pgmajfault = get_val(buf, "file_dirty - ");
    ASSERT_UINT_EQ(file_dirty, 0);
    9100:	83 ec 0c             	sub    $0xc,%esp
    9103:	68 0d 05 00 00       	push   $0x50d
    9108:	68 30 c8 00 00       	push   $0xc830
    910d:	6a 00                	push   $0x0
    910f:	57                   	push   %edi
    9110:	ff 75 08             	pushl  0x8(%ebp)
    9113:	e8 68 6f ff ff       	call   80 <print_error>
    9118:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    911f:	00 00 00 
    9122:	83 c4 20             	add    $0x20,%esp
    ASSERT_UINT_EQ(file_dirty_aggregated, 0);
    ASSERT_UINT_EQ(pgfault, 0);
    ASSERT_UINT_EQ(pgmajfault, 0);
}
    9125:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9128:	5b                   	pop    %ebx
    9129:	5e                   	pop    %esi
    912a:	5f                   	pop    %edi
    912b:	5d                   	pop    %ebp
    912c:	c3                   	ret    
    912d:	8d 76 00             	lea    0x0(%esi),%esi
    int file_dirty = get_val(buf, "file_dirty - ");
    int file_dirty_aggregated = get_val(buf, "file_dirty_aggregated - ");
    int pgfault = get_val(buf, "pgfault - ");
    int pgmajfault = get_val(buf, "file_dirty - ");
    ASSERT_UINT_EQ(file_dirty, 0);
    ASSERT_UINT_EQ(file_dirty_aggregated, 0);
    9130:	83 ec 0c             	sub    $0xc,%esp
    9133:	68 0e 05 00 00       	push   $0x50e
    9138:	68 30 c8 00 00       	push   $0xc830
    913d:	6a 00                	push   $0x0
    913f:	56                   	push   %esi
    9140:	ff 75 08             	pushl  0x8(%ebp)
    9143:	e8 38 6f ff ff       	call   80 <print_error>
    9148:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    914f:	00 00 00 
    9152:	83 c4 20             	add    $0x20,%esp
    ASSERT_UINT_EQ(pgfault, 0);
    ASSERT_UINT_EQ(pgmajfault, 0);
}
    9155:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9158:	5b                   	pop    %ebx
    9159:	5e                   	pop    %esi
    915a:	5f                   	pop    %edi
    915b:	5d                   	pop    %ebp
    915c:	c3                   	ret    
    915d:	8d 76 00             	lea    0x0(%esi),%esi
    int file_dirty_aggregated = get_val(buf, "file_dirty_aggregated - ");
    int pgfault = get_val(buf, "pgfault - ");
    int pgmajfault = get_val(buf, "file_dirty - ");
    ASSERT_UINT_EQ(file_dirty, 0);
    ASSERT_UINT_EQ(file_dirty_aggregated, 0);
    ASSERT_UINT_EQ(pgfault, 0);
    9160:	83 ec 0c             	sub    $0xc,%esp
    9163:	68 0f 05 00 00       	push   $0x50f
    9168:	68 30 c8 00 00       	push   $0xc830
    916d:	6a 00                	push   $0x0
    916f:	ff b5 d4 fe ff ff    	pushl  -0x12c(%ebp)
    9175:	ff 75 08             	pushl  0x8(%ebp)
    9178:	e8 03 6f ff ff       	call   80 <print_error>
    917d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9184:	00 00 00 
    9187:	83 c4 20             	add    $0x20,%esp
    ASSERT_UINT_EQ(pgmajfault, 0);
}
    918a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    918d:	5b                   	pop    %ebx
    918e:	5e                   	pop    %esi
    918f:	5f                   	pop    %edi
    9190:	5d                   	pop    %ebp
    9191:	c3                   	ret    
    9192:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    9199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000091a0 <test_kernel_freem_mem>:

TEST(test_kernel_freem_mem)
{
    91a0:	55                   	push   %ebp
    91a1:	89 e5                	mov    %esp,%ebp
    91a3:	53                   	push   %ebx
    91a4:	83 ec 04             	sub    $0x4,%esp
    91a7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  ASSERT_FALSE(kmemtest());
    91aa:	e8 29 31 00 00       	call   c2d8 <kmemtest>
    91af:	85 c0                	test   %eax,%eax
    91b1:	74 0d                	je     91c0 <test_kernel_freem_mem+0x20>
}
    91b3:	83 c4 04             	add    $0x4,%esp
    91b6:	89 d8                	mov    %ebx,%eax
    91b8:	5b                   	pop    %ebx
    91b9:	5d                   	pop    %ebp
    91ba:	e9 41 6e ff ff       	jmp    0 <test_kernel_freem_mem.part.23>
    91bf:	90                   	nop
    91c0:	83 c4 04             	add    $0x4,%esp
    91c3:	5b                   	pop    %ebx
    91c4:	5d                   	pop    %ebp
    91c5:	c3                   	ret    
    91c6:	8d 76 00             	lea    0x0(%esi),%esi
    91c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000091d0 <test_cpu_stat_content_valid>:

TEST(test_cpu_stat_content_valid)
{
    91d0:	55                   	push   %ebp
    91d1:	89 e5                	mov    %esp,%ebp
    91d3:	57                   	push   %edi
    91d4:	56                   	push   %esi
    91d5:	53                   	push   %ebx
    char buf[265];
    strcpy(buf, read_file(TEST_1_CPU_STAT, 0));
    91d6:	8d 9d df fe ff ff    	lea    -0x121(%ebp),%ebx
{
  ASSERT_FALSE(kmemtest());
}

TEST(test_cpu_stat_content_valid)
{
    91dc:	81 ec 24 01 00 00    	sub    $0x124,%esp
    char buf[265];
    strcpy(buf, read_file(TEST_1_CPU_STAT, 0));
    91e2:	6a 00                	push   $0x0
    91e4:	68 6d ca 00 00       	push   $0xca6d
    91e9:	e8 32 70 ff ff       	call   220 <read_file>
    91ee:	5a                   	pop    %edx
    91ef:	59                   	pop    %ecx
    91f0:	50                   	push   %eax
    91f1:	53                   	push   %ebx
    91f2:	e8 59 2b 00 00       	call   bd50 <strcpy>
    int usage_usec = get_val(buf, "usage_usec - ");
    91f7:	5e                   	pop    %esi
    91f8:	5f                   	pop    %edi
    91f9:	68 80 cf 00 00       	push   $0xcf80
    91fe:	53                   	push   %ebx
    91ff:	e8 0c 76 ff ff       	call   810 <get_val>
    9204:	89 c6                	mov    %eax,%esi
    int user_usec = get_val(buf, "user_usec - ");
    9206:	58                   	pop    %eax
    9207:	5a                   	pop    %edx
    9208:	68 8e cf 00 00       	push   $0xcf8e
    920d:	53                   	push   %ebx
    920e:	e8 fd 75 ff ff       	call   810 <get_val>
    int system_usec = get_val(buf, "system_usec - ");
    9213:	59                   	pop    %ecx
TEST(test_cpu_stat_content_valid)
{
    char buf[265];
    strcpy(buf, read_file(TEST_1_CPU_STAT, 0));
    int usage_usec = get_val(buf, "usage_usec - ");
    int user_usec = get_val(buf, "user_usec - ");
    9214:	89 c7                	mov    %eax,%edi
    int system_usec = get_val(buf, "system_usec - ");
    9216:	58                   	pop    %eax
    9217:	68 9b cf 00 00       	push   $0xcf9b
    921c:	53                   	push   %ebx
    921d:	e8 ee 75 ff ff       	call   810 <get_val>
    ASSERT_UINT_EQ(usage_usec, 0);
    9222:	83 c4 10             	add    $0x10,%esp
    9225:	85 f6                	test   %esi,%esi
    9227:	75 17                	jne    9240 <test_cpu_stat_content_valid+0x70>
    ASSERT_UINT_EQ(user_usec, 0);
    9229:	85 ff                	test   %edi,%edi
    922b:	75 43                	jne    9270 <test_cpu_stat_content_valid+0xa0>
    ASSERT_UINT_EQ(system_usec, 0);
    922d:	85 c0                	test   %eax,%eax
    922f:	75 6f                	jne    92a0 <test_cpu_stat_content_valid+0xd0>
}
    9231:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9234:	5b                   	pop    %ebx
    9235:	5e                   	pop    %esi
    9236:	5f                   	pop    %edi
    9237:	5d                   	pop    %ebp
    9238:	c3                   	ret    
    9239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    char buf[265];
    strcpy(buf, read_file(TEST_1_CPU_STAT, 0));
    int usage_usec = get_val(buf, "usage_usec - ");
    int user_usec = get_val(buf, "user_usec - ");
    int system_usec = get_val(buf, "system_usec - ");
    ASSERT_UINT_EQ(usage_usec, 0);
    9240:	83 ec 0c             	sub    $0xc,%esp
    9243:	68 1f 05 00 00       	push   $0x51f
    9248:	68 30 c8 00 00       	push   $0xc830
    924d:	6a 00                	push   $0x0
    924f:	56                   	push   %esi
    9250:	ff 75 08             	pushl  0x8(%ebp)
    9253:	e8 28 6e ff ff       	call   80 <print_error>
    9258:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    925f:	00 00 00 
    9262:	83 c4 20             	add    $0x20,%esp
    ASSERT_UINT_EQ(user_usec, 0);
    ASSERT_UINT_EQ(system_usec, 0);
}
    9265:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9268:	5b                   	pop    %ebx
    9269:	5e                   	pop    %esi
    926a:	5f                   	pop    %edi
    926b:	5d                   	pop    %ebp
    926c:	c3                   	ret    
    926d:	8d 76 00             	lea    0x0(%esi),%esi
    strcpy(buf, read_file(TEST_1_CPU_STAT, 0));
    int usage_usec = get_val(buf, "usage_usec - ");
    int user_usec = get_val(buf, "user_usec - ");
    int system_usec = get_val(buf, "system_usec - ");
    ASSERT_UINT_EQ(usage_usec, 0);
    ASSERT_UINT_EQ(user_usec, 0);
    9270:	83 ec 0c             	sub    $0xc,%esp
    9273:	68 20 05 00 00       	push   $0x520
    9278:	68 30 c8 00 00       	push   $0xc830
    927d:	6a 00                	push   $0x0
    927f:	57                   	push   %edi
    9280:	ff 75 08             	pushl  0x8(%ebp)
    9283:	e8 f8 6d ff ff       	call   80 <print_error>
    9288:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    928f:	00 00 00 
    9292:	83 c4 20             	add    $0x20,%esp
    ASSERT_UINT_EQ(system_usec, 0);
}
    9295:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9298:	5b                   	pop    %ebx
    9299:	5e                   	pop    %esi
    929a:	5f                   	pop    %edi
    929b:	5d                   	pop    %ebp
    929c:	c3                   	ret    
    929d:	8d 76 00             	lea    0x0(%esi),%esi
    int usage_usec = get_val(buf, "usage_usec - ");
    int user_usec = get_val(buf, "user_usec - ");
    int system_usec = get_val(buf, "system_usec - ");
    ASSERT_UINT_EQ(usage_usec, 0);
    ASSERT_UINT_EQ(user_usec, 0);
    ASSERT_UINT_EQ(system_usec, 0);
    92a0:	83 ec 0c             	sub    $0xc,%esp
    92a3:	68 21 05 00 00       	push   $0x521
    92a8:	68 30 c8 00 00       	push   $0xc830
    92ad:	6a 00                	push   $0x0
    92af:	50                   	push   %eax
    92b0:	ff 75 08             	pushl  0x8(%ebp)
    92b3:	e8 c8 6d ff ff       	call   80 <print_error>
    92b8:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    92bf:	00 00 00 
    92c2:	83 c4 20             	add    $0x20,%esp
}
    92c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    92c8:	5b                   	pop    %ebx
    92c9:	5e                   	pop    %esi
    92ca:	5f                   	pop    %edi
    92cb:	5d                   	pop    %ebp
    92cc:	c3                   	ret    
    92cd:	8d 76 00             	lea    0x0(%esi),%esi

000092d0 <test_cpu_stat>:

TEST(test_cpu_stat)
{
    92d0:	55                   	push   %ebp
    92d1:	89 e5                	mov    %esp,%ebp
    92d3:	57                   	push   %edi
    92d4:	56                   	push   %esi
    92d5:	53                   	push   %ebx
    92d6:	81 ec 34 03 00 00    	sub    $0x334,%esp
    92dc:	8b 75 08             	mov    0x8(%ebp),%esi
    char buf1[265];
    char buf2[265];
    char buf3[265];

    // read cpu.stat into a buffer
    strcpy(buf1, read_file(TEST_1_CPU_STAT,0));
    92df:	6a 00                	push   $0x0
    92e1:	68 6d ca 00 00       	push   $0xca6d
    92e6:	e8 35 6f ff ff       	call   220 <read_file>
    92eb:	59                   	pop    %ecx
    92ec:	5b                   	pop    %ebx
    92ed:	8d 9d cd fc ff ff    	lea    -0x333(%ebp),%ebx
    92f3:	50                   	push   %eax
    92f4:	53                   	push   %ebx
    92f5:	e8 56 2a 00 00       	call   bd50 <strcpy>

    // Fork here since the process should not be running after we move it inside the cgroup.
    int pid = fork();
    92fa:	e8 e1 2e 00 00       	call   c1e0 <fork>
    int pidToMove = 0;
    int sum = 0;
    int wstatus;

    // Child
    if (pid == 0) {
    92ff:	83 c4 10             	add    $0x10,%esp
    9302:	85 c0                	test   %eax,%eax
    9304:	0f 84 bd 03 00 00    	je     96c7 <test_cpu_stat+0x3f7>
        sleep(25);
        exit(0);
    }
    // Father
    else {
        sleep(5);
    930a:	83 ec 0c             	sub    $0xc,%esp
    930d:	6a 05                	push   $0x5
    930f:	e8 64 2f 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    9314:	58                   	pop    %eax
    9315:	5a                   	pop    %edx
    9316:	6a 00                	push   $0x0
    9318:	68 c6 c8 00 00       	push   $0xc8c6
    931d:	e8 fe 6e ff ff       	call   220 <read_file>
    9322:	89 04 24             	mov    %eax,(%esp)
    9325:	e8 76 2c 00 00       	call   bfa0 <atoi>

        // Read the child pid from temp file.
        pidToMove = temp_read(0);

        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));
    932a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    9331:	89 c7                	mov    %eax,%edi

        // Read the child pid from temp file.
        pidToMove = temp_read(0);

        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));
    9333:	e8 c8 73 ff ff       	call   700 <temp_write>
    9338:	83 c4 10             	add    $0x10,%esp
    933b:	85 c0                	test   %eax,%eax
    933d:	75 79                	jne    93b8 <test_cpu_stat+0xe8>
    933f:	31 db                	xor    %ebx,%ebx
    9341:	eb 1a                	jmp    935d <test_cpu_stat+0x8d>
    9343:	90                   	nop
    9344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    9348:	83 ec 08             	sub    $0x8,%esp
    934b:	83 c3 01             	add    $0x1,%ebx
    934e:	68 18 c8 00 00       	push   $0xc818
    9353:	6a 01                	push   $0x1
    9355:	e8 46 30 00 00       	call   c3a0 <printf>
    935a:	83 c4 10             	add    $0x10,%esp
    935d:	83 ec 0c             	sub    $0xc,%esp
    9360:	68 ac cd 00 00       	push   $0xcdac
    9365:	e8 f6 2a 00 00       	call   be60 <strlen>
    936a:	89 c7                	mov    %eax,%edi
    936c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9373:	e8 e8 2a 00 00       	call   be60 <strlen>
    9378:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    937c:	83 c4 10             	add    $0x10,%esp
    937f:	39 d8                	cmp    %ebx,%eax
    9381:	77 c5                	ja     9348 <test_cpu_stat+0x78>
    9383:	83 ec 0c             	sub    $0xc,%esp
    9386:	68 53 05 00 00       	push   $0x553
    938b:	68 30 c8 00 00       	push   $0xc830
    9390:	56                   	push   %esi
    9391:	68 ac f7 00 00       	push   $0xf7ac
    9396:	6a 01                	push   $0x1
    9398:	e8 03 30 00 00       	call   c3a0 <printf>
    939d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    93a4:	00 00 00 
    93a7:	83 c4 20             	add    $0x20,%esp

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());

    }
}
    93aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    93ad:	5b                   	pop    %ebx
    93ae:	5e                   	pop    %esi
    93af:	5f                   	pop    %edi
    93b0:	5d                   	pop    %ebp
    93b1:	c3                   	ret    
    93b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

        // Update the temp file for further reading, since next sum will be read from it.
        ASSERT_TRUE(temp_write(0));

        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
    93b8:	83 ec 08             	sub    $0x8,%esp
    93bb:	57                   	push   %edi
    93bc:	68 ed c9 00 00       	push   $0xc9ed
    93c1:	e8 5a 72 ff ff       	call   620 <move_proc>
    93c6:	83 c4 10             	add    $0x10,%esp
    93c9:	85 c0                	test   %eax,%eax
    93cb:	75 7b                	jne    9448 <test_cpu_stat+0x178>
    93cd:	31 db                	xor    %ebx,%ebx
    93cf:	eb 1c                	jmp    93ed <test_cpu_stat+0x11d>
    93d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    93d8:	83 ec 08             	sub    $0x8,%esp
    93db:	83 c3 01             	add    $0x1,%ebx
    93de:	68 18 c8 00 00       	push   $0xc818
    93e3:	6a 01                	push   $0x1
    93e5:	e8 b6 2f 00 00       	call   c3a0 <printf>
    93ea:	83 c4 10             	add    $0x10,%esp
    93ed:	83 ec 0c             	sub    $0xc,%esp
    93f0:	68 e4 f7 00 00       	push   $0xf7e4
    93f5:	e8 66 2a 00 00       	call   be60 <strlen>
    93fa:	89 c7                	mov    %eax,%edi
    93fc:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9403:	e8 58 2a 00 00       	call   be60 <strlen>
    9408:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    940c:	83 c4 10             	add    $0x10,%esp
    940f:	39 d8                	cmp    %ebx,%eax
    9411:	77 c5                	ja     93d8 <test_cpu_stat+0x108>
    9413:	83 ec 0c             	sub    $0xc,%esp
    9416:	68 56 05 00 00       	push   $0x556
    941b:	68 30 c8 00 00       	push   $0xc830
    9420:	56                   	push   %esi
    9421:	68 10 f8 00 00       	push   $0xf810
    9426:	6a 01                	push   $0x1
    9428:	e8 73 2f 00 00       	call   c3a0 <printf>
    942d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9434:	00 00 00 
    9437:	83 c4 20             	add    $0x20,%esp

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());

    }
}
    943a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    943d:	5b                   	pop    %ebx
    943e:	5e                   	pop    %esi
    943f:	5f                   	pop    %edi
    9440:	5d                   	pop    %ebp
    9441:	c3                   	ret    
    9442:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));

        // Check that the process we moved is really in "/cgroup/test1" cgroup.
        ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, pidToMove));
    9448:	83 ec 08             	sub    $0x8,%esp
    944b:	57                   	push   %edi
    944c:	68 ed c9 00 00       	push   $0xc9ed
    9451:	e8 fa 71 ff ff       	call   650 <is_pid_in_group>
    9456:	83 c4 10             	add    $0x10,%esp
    9459:	85 c0                	test   %eax,%eax
    945b:	75 72                	jne    94cf <test_cpu_stat+0x1ff>
    945d:	31 db                	xor    %ebx,%ebx
    945f:	eb 1c                	jmp    947d <test_cpu_stat+0x1ad>
    9461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    9468:	83 ec 08             	sub    $0x8,%esp
    946b:	83 c3 01             	add    $0x1,%ebx
    946e:	68 18 c8 00 00       	push   $0xc818
    9473:	6a 01                	push   $0x1
    9475:	e8 26 2f 00 00       	call   c3a0 <printf>
    947a:	83 c4 10             	add    $0x10,%esp
    947d:	83 ec 0c             	sub    $0xc,%esp
    9480:	68 64 f8 00 00       	push   $0xf864
    9485:	e8 d6 29 00 00       	call   be60 <strlen>
    948a:	89 c7                	mov    %eax,%edi
    948c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9493:	e8 c8 29 00 00       	call   be60 <strlen>
    9498:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    949c:	83 c4 10             	add    $0x10,%esp
    949f:	39 d8                	cmp    %ebx,%eax
    94a1:	77 c5                	ja     9468 <test_cpu_stat+0x198>
    94a3:	83 ec 0c             	sub    $0xc,%esp
    94a6:	68 59 05 00 00       	push   $0x559
    94ab:	68 30 c8 00 00       	push   $0xc830
    94b0:	56                   	push   %esi
    94b1:	68 94 f8 00 00       	push   $0xf894
    94b6:	6a 01                	push   $0x1
    94b8:	e8 e3 2e 00 00       	call   c3a0 <printf>
    94bd:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    94c4:	00 00 00 
    94c7:	83 c4 20             	add    $0x20,%esp
    94ca:	e9 db fe ff ff       	jmp    93aa <test_cpu_stat+0xda>

        // Go to sleep to ensure the child process had a chance to be scheduled.
        sleep(15);
    94cf:	83 ec 0c             	sub    $0xc,%esp
    94d2:	6a 0f                	push   $0xf
    94d4:	e8 9f 2d 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    94d9:	59                   	pop    %ecx
    94da:	58                   	pop    %eax
    94db:	6a 00                	push   $0x0
    94dd:	68 c6 c8 00 00       	push   $0xc8c6
    94e2:	e8 39 6d ff ff       	call   220 <read_file>
    94e7:	89 04 24             	mov    %eax,(%esp)
    94ea:	e8 b1 2a 00 00       	call   bfa0 <atoi>
        // Go to sleep to ensure the child process had a chance to be scheduled.
        sleep(15);

        // Verify that the child process have ran
        sum = temp_read(0);
        ASSERT_UINT_EQ(sum, 10);
    94ef:	83 c4 10             	add    $0x10,%esp
    94f2:	83 f8 0a             	cmp    $0xa,%eax
    94f5:	74 28                	je     951f <test_cpu_stat+0x24f>
    94f7:	83 ec 0c             	sub    $0xc,%esp
    94fa:	68 60 05 00 00       	push   $0x560
    94ff:	68 30 c8 00 00       	push   $0xc830
    9504:	6a 0a                	push   $0xa
    9506:	50                   	push   %eax
    9507:	56                   	push   %esi
    9508:	e8 73 6b ff ff       	call   80 <print_error>
    950d:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9514:	00 00 00 
    9517:	83 c4 20             	add    $0x20,%esp
    951a:	e9 8b fe ff ff       	jmp    93aa <test_cpu_stat+0xda>

        // Return the child to root cgroup.
        ASSERT_TRUE(move_proc(ROOT_CGROUP_PROCS, pidToMove));
    951f:	83 ec 08             	sub    $0x8,%esp
    9522:	57                   	push   %edi
    9523:	68 f0 cc 00 00       	push   $0xccf0
    9528:	e8 f3 70 ff ff       	call   620 <move_proc>
    952d:	83 c4 10             	add    $0x10,%esp
    9530:	85 c0                	test   %eax,%eax
    9532:	75 73                	jne    95a7 <test_cpu_stat+0x2d7>
    9534:	31 db                	xor    %ebx,%ebx
    9536:	eb 1d                	jmp    9555 <test_cpu_stat+0x285>
    9538:	90                   	nop
    9539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    9540:	83 ec 08             	sub    $0x8,%esp
    9543:	83 c3 01             	add    $0x1,%ebx
    9546:	68 18 c8 00 00       	push   $0xc818
    954b:	6a 01                	push   $0x1
    954d:	e8 4e 2e 00 00       	call   c3a0 <printf>
    9552:	83 c4 10             	add    $0x10,%esp
    9555:	83 ec 0c             	sub    $0xc,%esp
    9558:	68 f0 f8 00 00       	push   $0xf8f0
    955d:	e8 fe 28 00 00       	call   be60 <strlen>
    9562:	89 c7                	mov    %eax,%edi
    9564:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    956b:	e8 f0 28 00 00       	call   be60 <strlen>
    9570:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    9574:	83 c4 10             	add    $0x10,%esp
    9577:	39 d8                	cmp    %ebx,%eax
    9579:	77 c5                	ja     9540 <test_cpu_stat+0x270>
    957b:	83 ec 0c             	sub    $0xc,%esp
    957e:	68 63 05 00 00       	push   $0x563
    9583:	68 30 c8 00 00       	push   $0xc830
    9588:	56                   	push   %esi
    9589:	68 18 f9 00 00       	push   $0xf918
    958e:	6a 01                	push   $0x1
    9590:	e8 0b 2e 00 00       	call   c3a0 <printf>
    9595:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    959c:	00 00 00 
    959f:	83 c4 20             	add    $0x20,%esp
    95a2:	e9 03 fe ff ff       	jmp    93aa <test_cpu_stat+0xda>

        // Check that the child we returned is really in root cgroup.
        ASSERT_TRUE(is_pid_in_group(ROOT_CGROUP_PROCS, pidToMove));
    95a7:	83 ec 08             	sub    $0x8,%esp
    95aa:	57                   	push   %edi
    95ab:	68 f0 cc 00 00       	push   $0xccf0
    95b0:	e8 9b 70 ff ff       	call   650 <is_pid_in_group>
    95b5:	83 c4 10             	add    $0x10,%esp
    95b8:	85 c0                	test   %eax,%eax
    95ba:	75 6b                	jne    9627 <test_cpu_stat+0x357>
    95bc:	31 db                	xor    %ebx,%ebx
    95be:	eb 15                	jmp    95d5 <test_cpu_stat+0x305>
    95c0:	83 ec 08             	sub    $0x8,%esp
    95c3:	83 c3 01             	add    $0x1,%ebx
    95c6:	68 18 c8 00 00       	push   $0xc818
    95cb:	6a 01                	push   $0x1
    95cd:	e8 ce 2d 00 00       	call   c3a0 <printf>
    95d2:	83 c4 10             	add    $0x10,%esp
    95d5:	83 ec 0c             	sub    $0xc,%esp
    95d8:	68 6c f9 00 00       	push   $0xf96c
    95dd:	e8 7e 28 00 00       	call   be60 <strlen>
    95e2:	89 c7                	mov    %eax,%edi
    95e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    95eb:	e8 70 28 00 00       	call   be60 <strlen>
    95f0:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    95f4:	83 c4 10             	add    $0x10,%esp
    95f7:	39 d8                	cmp    %ebx,%eax
    95f9:	77 c5                	ja     95c0 <test_cpu_stat+0x2f0>
    95fb:	83 ec 0c             	sub    $0xc,%esp
    95fe:	68 66 05 00 00       	push   $0x566
    9603:	68 30 c8 00 00       	push   $0xc830
    9608:	56                   	push   %esi
    9609:	68 9c f9 00 00       	push   $0xf99c
    960e:	6a 01                	push   $0x1
    9610:	e8 8b 2d 00 00       	call   c3a0 <printf>
    9615:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    961c:	00 00 00 
    961f:	83 c4 20             	add    $0x20,%esp
    9622:	e9 83 fd ff ff       	jmp    93aa <test_cpu_stat+0xda>

        // read cpu.stat into a seconde buffer
        strcpy(buf2,read_file(TEST_1_CPU_STAT,0));
    9627:	83 ec 08             	sub    $0x8,%esp
    962a:	6a 00                	push   $0x0
    962c:	68 6d ca 00 00       	push   $0xca6d
    9631:	e8 ea 6b ff ff       	call   220 <read_file>
    9636:	59                   	pop    %ecx
    9637:	5f                   	pop    %edi
    9638:	8d bd d6 fd ff ff    	lea    -0x22a(%ebp),%edi
    963e:	50                   	push   %eax
    963f:	57                   	push   %edi
    9640:	e8 0b 27 00 00       	call   bd50 <strcpy>

        // Verify that the cpu time has changed because of the child's runing
        ASSERT_TRUE(strcmp(buf1, buf2));
    9645:	58                   	pop    %eax
    9646:	5a                   	pop    %edx
    9647:	57                   	push   %edi
    9648:	53                   	push   %ebx
    9649:	31 db                	xor    %ebx,%ebx
    964b:	e8 30 27 00 00       	call   bd80 <strcmp>
    9650:	83 c4 10             	add    $0x10,%esp
    9653:	85 c0                	test   %eax,%eax
    9655:	74 1e                	je     9675 <test_cpu_stat+0x3a5>
    9657:	e9 a9 00 00 00       	jmp    9705 <test_cpu_stat+0x435>
    965c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    9660:	83 ec 08             	sub    $0x8,%esp
    9663:	83 c3 01             	add    $0x1,%ebx
    9666:	68 18 c8 00 00       	push   $0xc818
    966b:	6a 01                	push   $0x1
    966d:	e8 2e 2d 00 00       	call   c3a0 <printf>
    9672:	83 c4 10             	add    $0x10,%esp
    9675:	83 ec 0c             	sub    $0xc,%esp
    9678:	68 aa cf 00 00       	push   $0xcfaa
    967d:	e8 de 27 00 00       	call   be60 <strlen>
    9682:	89 c7                	mov    %eax,%edi
    9684:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    968b:	e8 d0 27 00 00       	call   be60 <strlen>
    9690:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    9694:	83 c4 10             	add    $0x10,%esp
    9697:	39 d8                	cmp    %ebx,%eax
    9699:	77 c5                	ja     9660 <test_cpu_stat+0x390>
    969b:	83 ec 0c             	sub    $0xc,%esp
    969e:	68 6c 05 00 00       	push   $0x56c
    96a3:	68 30 c8 00 00       	push   $0xc830
    96a8:	56                   	push   %esi
    96a9:	68 70 13 01 00       	push   $0x11370
    96ae:	6a 01                	push   $0x1
    96b0:	e8 eb 2c 00 00       	call   c3a0 <printf>
    96b5:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    96bc:	00 00 00 
    96bf:	83 c4 20             	add    $0x20,%esp
    96c2:	e9 e3 fc ff ff       	jmp    93aa <test_cpu_stat+0xda>
    int sum = 0;
    int wstatus;

    // Child
    if (pid == 0) {
        pidToMove = getpid();
    96c7:	e8 9c 2b 00 00       	call   c268 <getpid>

        // Save the pid of child in temp file.
        temp_write(pidToMove);
    96cc:	83 ec 0c             	sub    $0xc,%esp
    96cf:	50                   	push   %eax
    96d0:	e8 2b 70 ff ff       	call   700 <temp_write>

        // Go to sleep for long period of time.
        sleep(10);
    96d5:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
    96dc:	e8 97 2b 00 00       	call   c278 <sleep>
        for (int i = 0; i < 10; i++) {
            sum += 1;
        }

        // Save sum into temp file.
        temp_write(sum);
    96e1:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
    96e8:	e8 13 70 ff ff       	call   700 <temp_write>

        // Go to sleep to ensure we cen return the child to root cgroup
        sleep(25);
    96ed:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
    96f4:	e8 7f 2b 00 00       	call   c278 <sleep>
        exit(0);
    96f9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    9700:	e8 e3 2a 00 00       	call   c1e8 <exit>
        strcpy(buf2,read_file(TEST_1_CPU_STAT,0));

        // Verify that the cpu time has changed because of the child's runing
        ASSERT_TRUE(strcmp(buf1, buf2));

        sleep(10);
    9705:	83 ec 0c             	sub    $0xc,%esp
    9708:	6a 0a                	push   $0xa
    970a:	e8 69 2b 00 00       	call   c278 <sleep>

        // read cpu.stat into a third buffer
        strcpy(buf3,read_file(TEST_1_CPU_STAT,0));
    970f:	59                   	pop    %ecx
    9710:	5b                   	pop    %ebx
    9711:	6a 00                	push   $0x0
    9713:	68 6d ca 00 00       	push   $0xca6d
    9718:	8d 9d df fe ff ff    	lea    -0x121(%ebp),%ebx
    971e:	e8 fd 6a ff ff       	call   220 <read_file>
    9723:	5a                   	pop    %edx
    9724:	59                   	pop    %ecx
    9725:	50                   	push   %eax
    9726:	53                   	push   %ebx
    9727:	e8 24 26 00 00       	call   bd50 <strcpy>

        // Verify that the cpu time has no changed since the child removed
        ASSERT_FALSE(strcmp(buf2,buf3));
    972c:	58                   	pop    %eax
    972d:	5a                   	pop    %edx
    972e:	53                   	push   %ebx
    972f:	57                   	push   %edi
    9730:	e8 4b 26 00 00       	call   bd80 <strcmp>
    9735:	83 c4 10             	add    $0x10,%esp
    9738:	85 c0                	test   %eax,%eax
    973a:	74 6b                	je     97a7 <test_cpu_stat+0x4d7>
    973c:	31 db                	xor    %ebx,%ebx
    973e:	eb 15                	jmp    9755 <test_cpu_stat+0x485>
    9740:	83 ec 08             	sub    $0x8,%esp
    9743:	83 c3 01             	add    $0x1,%ebx
    9746:	68 18 c8 00 00       	push   $0xc818
    974b:	6a 01                	push   $0x1
    974d:	e8 4e 2c 00 00       	call   c3a0 <printf>
    9752:	83 c4 10             	add    $0x10,%esp
    9755:	83 ec 0c             	sub    $0xc,%esp
    9758:	68 bd cf 00 00       	push   $0xcfbd
    975d:	e8 fe 26 00 00       	call   be60 <strlen>
    9762:	89 c7                	mov    %eax,%edi
    9764:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    976b:	e8 f0 26 00 00       	call   be60 <strlen>
    9770:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    9774:	83 c4 10             	add    $0x10,%esp
    9777:	39 d8                	cmp    %ebx,%eax
    9779:	77 c5                	ja     9740 <test_cpu_stat+0x470>
    977b:	83 ec 0c             	sub    $0xc,%esp
    977e:	68 74 05 00 00       	push   $0x574
    9783:	68 30 c8 00 00       	push   $0xc830
    9788:	56                   	push   %esi
    9789:	68 ac 13 01 00       	push   $0x113ac
    978e:	6a 01                	push   $0x1
    9790:	e8 0b 2c 00 00       	call   c3a0 <printf>
    9795:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    979c:	00 00 00 
    979f:	83 c4 20             	add    $0x20,%esp
    97a2:	e9 03 fc ff ff       	jmp    93aa <test_cpu_stat+0xda>

        // Wait for child to exit.
        wait(&wstatus);
    97a7:	8d 85 c8 fc ff ff    	lea    -0x338(%ebp),%eax
    97ad:	83 ec 0c             	sub    $0xc,%esp
    97b0:	50                   	push   %eax
    97b1:	e8 3a 2a 00 00       	call   c1f0 <wait>
        ASSERT_TRUE(wstatus);
    97b6:	83 c4 10             	add    $0x10,%esp
    97b9:	83 bd c8 fc ff ff 00 	cmpl   $0x0,-0x338(%ebp)
    97c0:	75 6a                	jne    982c <test_cpu_stat+0x55c>
    97c2:	31 db                	xor    %ebx,%ebx
    97c4:	83 ec 0c             	sub    $0xc,%esp
    97c7:	68 ba cd 00 00       	push   $0xcdba
    97cc:	e8 8f 26 00 00       	call   be60 <strlen>
    97d1:	89 c7                	mov    %eax,%edi
    97d3:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    97da:	e8 81 26 00 00       	call   be60 <strlen>
    97df:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    97e3:	83 c4 10             	add    $0x10,%esp
    97e6:	39 d8                	cmp    %ebx,%eax
    97e8:	76 16                	jbe    9800 <test_cpu_stat+0x530>
    97ea:	52                   	push   %edx
    97eb:	52                   	push   %edx
    97ec:	83 c3 01             	add    $0x1,%ebx
    97ef:	68 18 c8 00 00       	push   $0xc818
    97f4:	6a 01                	push   $0x1
    97f6:	e8 a5 2b 00 00       	call   c3a0 <printf>
    97fb:	83 c4 10             	add    $0x10,%esp
    97fe:	eb c4                	jmp    97c4 <test_cpu_stat+0x4f4>
    9800:	83 ec 0c             	sub    $0xc,%esp
    9803:	68 78 05 00 00       	push   $0x578
    9808:	68 30 c8 00 00       	push   $0xc830
    980d:	56                   	push   %esi
    980e:	68 f4 f9 00 00       	push   $0xf9f4
    9813:	6a 01                	push   $0x1
    9815:	e8 86 2b 00 00       	call   c3a0 <printf>
    981a:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9821:	00 00 00 
    9824:	83 c4 20             	add    $0x20,%esp
    9827:	e9 7e fb ff ff       	jmp    93aa <test_cpu_stat+0xda>

        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    982c:	e8 9f 6f ff ff       	call   7d0 <temp_delete>
    9831:	31 db                	xor    %ebx,%ebx
    9833:	85 c0                	test   %eax,%eax
    9835:	0f 85 6f fb ff ff    	jne    93aa <test_cpu_stat+0xda>
    983b:	83 ec 0c             	sub    $0xc,%esp
    983e:	68 c2 cd 00 00       	push   $0xcdc2
    9843:	e8 18 26 00 00       	call   be60 <strlen>
    9848:	89 c7                	mov    %eax,%edi
    984a:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9851:	e8 0a 26 00 00       	call   be60 <strlen>
    9856:	8d 44 07 02          	lea    0x2(%edi,%eax,1),%eax
    985a:	83 c4 10             	add    $0x10,%esp
    985d:	39 d8                	cmp    %ebx,%eax
    985f:	76 16                	jbe    9877 <test_cpu_stat+0x5a7>
    9861:	50                   	push   %eax
    9862:	50                   	push   %eax
    9863:	83 c3 01             	add    $0x1,%ebx
    9866:	68 18 c8 00 00       	push   $0xc818
    986b:	6a 01                	push   $0x1
    986d:	e8 2e 2b 00 00       	call   c3a0 <printf>
    9872:	83 c4 10             	add    $0x10,%esp
    9875:	eb c4                	jmp    983b <test_cpu_stat+0x56b>
    9877:	83 ec 0c             	sub    $0xc,%esp
    987a:	68 7b 05 00 00       	push   $0x57b
    987f:	68 30 c8 00 00       	push   $0xc830
    9884:	56                   	push   %esi
    9885:	68 28 fa 00 00       	push   $0xfa28
    988a:	6a 01                	push   $0x1
    988c:	e8 0f 2b 00 00       	call   c3a0 <printf>
    9891:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9898:	00 00 00 
    989b:	83 c4 20             	add    $0x20,%esp
    989e:	e9 07 fb ff ff       	jmp    93aa <test_cpu_stat+0xda>
    98a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    98a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000098b0 <test_mem_stat>:

    }
}

TEST (test_mem_stat) {
    98b0:	55                   	push   %ebp
    98b1:	89 e5                	mov    %esp,%ebp
    98b3:	57                   	push   %edi
    98b4:	56                   	push   %esi
    98b5:	53                   	push   %ebx
    int wstatus;
    char befor_all[265];
    char effect_write_first_file[265];
    char effect_write_second_file[265];

    strcpy(befor_all, read_file(TEST_1_MEM_STAT,0));
    98b6:	8d 9d cd fc ff ff    	lea    -0x333(%ebp),%ebx
        ASSERT_TRUE(temp_delete());

    }
}

TEST (test_mem_stat) {
    98bc:	81 ec 44 03 00 00    	sub    $0x344,%esp
    int wstatus;
    char befor_all[265];
    char effect_write_first_file[265];
    char effect_write_second_file[265];

    strcpy(befor_all, read_file(TEST_1_MEM_STAT,0));
    98c2:	6a 00                	push   $0x0
    98c4:	68 39 cb 00 00       	push   $0xcb39
    98c9:	e8 52 69 ff ff       	call   220 <read_file>
    98ce:	5f                   	pop    %edi
    98cf:	5a                   	pop    %edx
    98d0:	50                   	push   %eax
    98d1:	53                   	push   %ebx
    98d2:	e8 79 24 00 00       	call   bd50 <strcpy>
    // Fork a process because reading the memory values from inside the cgroup may affect the values.
    int pid = fork();
    98d7:	e8 04 29 00 00       	call   c1e0 <fork>
    int pidToMove = 0;
    // Child
    if (pid == 0) {
    98dc:	83 c4 10             	add    $0x10,%esp
    98df:	85 c0                	test   %eax,%eax
    98e1:	0f 85 39 01 00 00    	jne    9a20 <test_mem_stat+0x170>
        pidToMove = getpid();
    98e7:	e8 7c 29 00 00       	call   c268 <getpid>
        // Save the pid of child in temp file.
        ASSERT_TRUE(temp_write(pidToMove));
    98ec:	83 ec 0c             	sub    $0xc,%esp
    98ef:	31 db                	xor    %ebx,%ebx
    98f1:	50                   	push   %eax
    98f2:	e8 09 6e ff ff       	call   700 <temp_write>
    98f7:	83 c4 10             	add    $0x10,%esp
    98fa:	85 c0                	test   %eax,%eax
    98fc:	0f 84 c3 00 00 00    	je     99c5 <test_mem_stat+0x115>

        // Go to sleep for long period of time alowe move the prosses into cgroup.
        sleep(10);
    9902:	83 ec 0c             	sub    $0xc,%esp
        char str [256];
        memset(str, 'a', 256);
    9905:	8d 9d df fe ff ff    	lea    -0x121(%ebp),%ebx
        pidToMove = getpid();
        // Save the pid of child in temp file.
        ASSERT_TRUE(temp_write(pidToMove));

        // Go to sleep for long period of time alowe move the prosses into cgroup.
        sleep(10);
    990b:	6a 0a                	push   $0xa
    990d:	e8 66 29 00 00       	call   c278 <sleep>
        char str [256];
        memset(str, 'a', 256);
    9912:	83 c4 0c             	add    $0xc,%esp
    9915:	68 00 01 00 00       	push   $0x100
    991a:	6a 61                	push   $0x61
    991c:	53                   	push   %ebx
    991d:	e8 6e 25 00 00       	call   be90 <memset>

        // Write to a new file 2 times.
        int fd;
        ASSERT_TRUE(fd=write_new_file("c", str));
    9922:	59                   	pop    %ecx
    9923:	5e                   	pop    %esi
    9924:	53                   	push   %ebx
    9925:	68 3d c8 00 00       	push   $0xc83d
    992a:	e8 71 6a ff ff       	call   3a0 <write_new_file>
    992f:	83 c4 10             	add    $0x10,%esp
    9932:	85 c0                	test   %eax,%eax
    9934:	89 c6                	mov    %eax,%esi
    9936:	0f 85 24 02 00 00    	jne    9b60 <test_mem_stat+0x2b0>
    993c:	31 db                	xor    %ebx,%ebx
    993e:	eb 15                	jmp    9955 <test_mem_stat+0xa5>
    9940:	83 ec 08             	sub    $0x8,%esp
    9943:	83 c3 01             	add    $0x1,%ebx
    9946:	68 18 c8 00 00       	push   $0xc818
    994b:	6a 01                	push   $0x1
    994d:	e8 4e 2a 00 00       	call   c3a0 <printf>
    9952:	83 c4 10             	add    $0x10,%esp
    9955:	83 ec 0c             	sub    $0xc,%esp
    9958:	68 cf cf 00 00       	push   $0xcfcf
    995d:	e8 fe 24 00 00       	call   be60 <strlen>
    9962:	89 c6                	mov    %eax,%esi
    9964:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    996b:	e8 f0 24 00 00       	call   be60 <strlen>
    9970:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9974:	83 c4 10             	add    $0x10,%esp
    9977:	39 d8                	cmp    %ebx,%eax
    9979:	77 c5                	ja     9940 <test_mem_stat+0x90>
    997b:	83 ec 0c             	sub    $0xc,%esp
    997e:	68 97 05 00 00       	push   $0x597
    9983:	68 30 c8 00 00       	push   $0xc830
    9988:	ff 75 08             	pushl  0x8(%ebp)
    998b:	68 e8 13 01 00       	push   $0x113e8
    9990:	6a 01                	push   $0x1
    9992:	e8 09 2a 00 00       	call   c3a0 <printf>
    9997:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    999e:	00 00 00 
    99a1:	83 c4 20             	add    $0x20,%esp
        wait(&wstatus);
        ASSERT_TRUE(wstatus);
        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    }
}
    99a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    99a7:	5b                   	pop    %ebx
    99a8:	5e                   	pop    %esi
    99a9:	5f                   	pop    %edi
    99aa:	5d                   	pop    %ebp
    99ab:	c3                   	ret    
    99ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    int pidToMove = 0;
    // Child
    if (pid == 0) {
        pidToMove = getpid();
        // Save the pid of child in temp file.
        ASSERT_TRUE(temp_write(pidToMove));
    99b0:	83 ec 08             	sub    $0x8,%esp
    99b3:	83 c3 01             	add    $0x1,%ebx
    99b6:	68 18 c8 00 00       	push   $0xc818
    99bb:	6a 01                	push   $0x1
    99bd:	e8 de 29 00 00       	call   c3a0 <printf>
    99c2:	83 c4 10             	add    $0x10,%esp
    99c5:	83 ec 0c             	sub    $0xc,%esp
    99c8:	68 04 ce 00 00       	push   $0xce04
    99cd:	e8 8e 24 00 00       	call   be60 <strlen>
    99d2:	89 c6                	mov    %eax,%esi
    99d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    99db:	e8 80 24 00 00       	call   be60 <strlen>
    99e0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    99e4:	83 c4 10             	add    $0x10,%esp
    99e7:	39 d8                	cmp    %ebx,%eax
    99e9:	77 c5                	ja     99b0 <test_mem_stat+0x100>
    99eb:	83 ec 0c             	sub    $0xc,%esp
    99ee:	68 8e 05 00 00       	push   $0x58e
    99f3:	68 30 c8 00 00       	push   $0xc830
    99f8:	ff 75 08             	pushl  0x8(%ebp)
    99fb:	68 c0 fd 00 00       	push   $0xfdc0
    9a00:	6a 01                	push   $0x1
    9a02:	e8 99 29 00 00       	call   c3a0 <printf>
    9a07:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9a0e:	00 00 00 
    9a11:	83 c4 20             	add    $0x20,%esp
        wait(&wstatus);
        ASSERT_TRUE(wstatus);
        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    }
}
    9a14:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9a17:	5b                   	pop    %ebx
    9a18:	5e                   	pop    %esi
    9a19:	5f                   	pop    %edi
    9a1a:	5d                   	pop    %ebp
    9a1b:	c3                   	ret    
    9a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

        exit(0);

    } else { // Father

        sleep(5);
    9a20:	83 ec 0c             	sub    $0xc,%esp
    9a23:	6a 05                	push   $0x5
    9a25:	e8 4e 28 00 00       	call   c278 <sleep>
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    9a2a:	59                   	pop    %ecx
    9a2b:	5e                   	pop    %esi
    9a2c:	6a 00                	push   $0x0
    9a2e:	68 c6 c8 00 00       	push   $0xc8c6
    9a33:	e8 e8 67 ff ff       	call   220 <read_file>
    9a38:	89 04 24             	mov    %eax,(%esp)
    9a3b:	e8 60 25 00 00       	call   bfa0 <atoi>

        sleep(5);
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
    9a40:	5f                   	pop    %edi
  return close_file(fd);
}

// Read an integer from the temporary file.
int temp_read(int print) {
  return atoi(read_file(TEMP_FILE, print));
    9a41:	89 c6                	mov    %eax,%esi

        sleep(5);
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
    9a43:	58                   	pop    %eax
    9a44:	56                   	push   %esi
    9a45:	68 ed c9 00 00       	push   $0xc9ed
    9a4a:	e8 d1 6b ff ff       	call   620 <move_proc>
    9a4f:	83 c4 10             	add    $0x10,%esp
    9a52:	85 c0                	test   %eax,%eax
    9a54:	75 7a                	jne    9ad0 <test_mem_stat+0x220>
    9a56:	31 db                	xor    %ebx,%ebx
    9a58:	eb 1b                	jmp    9a75 <test_mem_stat+0x1c5>
    9a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    9a60:	83 ec 08             	sub    $0x8,%esp
    9a63:	83 c3 01             	add    $0x1,%ebx
    9a66:	68 18 c8 00 00       	push   $0xc818
    9a6b:	6a 01                	push   $0x1
    9a6d:	e8 2e 29 00 00       	call   c3a0 <printf>
    9a72:	83 c4 10             	add    $0x10,%esp
    9a75:	83 ec 0c             	sub    $0xc,%esp
    9a78:	68 e4 f7 00 00       	push   $0xf7e4
    9a7d:	e8 de 23 00 00       	call   be60 <strlen>
    9a82:	89 c6                	mov    %eax,%esi
    9a84:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9a8b:	e8 d0 23 00 00       	call   be60 <strlen>
    9a90:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9a94:	83 c4 10             	add    $0x10,%esp
    9a97:	39 d8                	cmp    %ebx,%eax
    9a99:	77 c5                	ja     9a60 <test_mem_stat+0x1b0>
    9a9b:	83 ec 0c             	sub    $0xc,%esp
    9a9e:	68 aa 05 00 00       	push   $0x5aa
    9aa3:	68 30 c8 00 00       	push   $0xc830
    9aa8:	ff 75 08             	pushl  0x8(%ebp)
    9aab:	68 10 f8 00 00       	push   $0xf810
    9ab0:	6a 01                	push   $0x1
    9ab2:	e8 e9 28 00 00       	call   c3a0 <printf>
    9ab7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9abe:	00 00 00 
    9ac1:	83 c4 20             	add    $0x20,%esp
        wait(&wstatus);
        ASSERT_TRUE(wstatus);
        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    }
}
    9ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9ac7:	5b                   	pop    %ebx
    9ac8:	5e                   	pop    %esi
    9ac9:	5f                   	pop    %edi
    9aca:	5d                   	pop    %ebp
    9acb:	c3                   	ret    
    9acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        // Read the child pid from temp file.
        pidToMove = temp_read(0);
        // Move the child process to "/cgroup/test1" cgroup.
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
        // Check that the process we moved is really in "/cgroup/test1" cgroup.
        ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, pidToMove));
    9ad0:	83 ec 08             	sub    $0x8,%esp
    9ad3:	56                   	push   %esi
    9ad4:	68 ed c9 00 00       	push   $0xc9ed
    9ad9:	e8 72 6b ff ff       	call   650 <is_pid_in_group>
    9ade:	83 c4 10             	add    $0x10,%esp
    9ae1:	85 c0                	test   %eax,%eax
    9ae3:	0f 85 07 01 00 00    	jne    9bf0 <test_mem_stat+0x340>
    9ae9:	31 db                	xor    %ebx,%ebx
    9aeb:	eb 18                	jmp    9b05 <test_mem_stat+0x255>
    9aed:	8d 76 00             	lea    0x0(%esi),%esi
    9af0:	83 ec 08             	sub    $0x8,%esp
    9af3:	83 c3 01             	add    $0x1,%ebx
    9af6:	68 18 c8 00 00       	push   $0xc818
    9afb:	6a 01                	push   $0x1
    9afd:	e8 9e 28 00 00       	call   c3a0 <printf>
    9b02:	83 c4 10             	add    $0x10,%esp
    9b05:	83 ec 0c             	sub    $0xc,%esp
    9b08:	68 64 f8 00 00       	push   $0xf864
    9b0d:	e8 4e 23 00 00       	call   be60 <strlen>
    9b12:	89 c6                	mov    %eax,%esi
    9b14:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9b1b:	e8 40 23 00 00       	call   be60 <strlen>
    9b20:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9b24:	83 c4 10             	add    $0x10,%esp
    9b27:	39 d8                	cmp    %ebx,%eax
    9b29:	77 c5                	ja     9af0 <test_mem_stat+0x240>
    9b2b:	83 ec 0c             	sub    $0xc,%esp
    9b2e:	68 ac 05 00 00       	push   $0x5ac
    9b33:	68 30 c8 00 00       	push   $0xc830
    9b38:	ff 75 08             	pushl  0x8(%ebp)
    9b3b:	68 94 f8 00 00       	push   $0xf894
    9b40:	6a 01                	push   $0x1
    9b42:	e8 59 28 00 00       	call   c3a0 <printf>
    9b47:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9b4e:	00 00 00 
    9b51:	83 c4 20             	add    $0x20,%esp
        wait(&wstatus);
        ASSERT_TRUE(wstatus);
        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    }
}
    9b54:	8d 65 f4             	lea    -0xc(%ebp),%esp
    9b57:	5b                   	pop    %ebx
    9b58:	5e                   	pop    %esi
    9b59:	5f                   	pop    %edi
    9b5a:	5d                   	pop    %ebp
    9b5b:	c3                   	ret    
    9b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        memset(str, 'a', 256);

        // Write to a new file 2 times.
        int fd;
        ASSERT_TRUE(fd=write_new_file("c", str));
        ASSERT_TRUE(write_new_file("c", str));
    9b60:	83 ec 08             	sub    $0x8,%esp
    9b63:	53                   	push   %ebx
    9b64:	68 3d c8 00 00       	push   $0xc83d
    9b69:	e8 32 68 ff ff       	call   3a0 <write_new_file>
    9b6e:	83 c4 10             	add    $0x10,%esp
    9b71:	85 c0                	test   %eax,%eax
    9b73:	0f 85 30 02 00 00    	jne    9da9 <test_mem_stat+0x4f9>
    9b79:	31 db                	xor    %ebx,%ebx
    9b7b:	eb 18                	jmp    9b95 <test_mem_stat+0x2e5>
    9b7d:	8d 76 00             	lea    0x0(%esi),%esi
    9b80:	83 ec 08             	sub    $0x8,%esp
    9b83:	83 c3 01             	add    $0x1,%ebx
    9b86:	68 18 c8 00 00       	push   $0xc818
    9b8b:	6a 01                	push   $0x1
    9b8d:	e8 0e 28 00 00       	call   c3a0 <printf>
    9b92:	83 c4 10             	add    $0x10,%esp
    9b95:	83 ec 0c             	sub    $0xc,%esp
    9b98:	68 d2 cf 00 00       	push   $0xcfd2
    9b9d:	e8 be 22 00 00       	call   be60 <strlen>
    9ba2:	89 c6                	mov    %eax,%esi
    9ba4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9bab:	e8 b0 22 00 00       	call   be60 <strlen>
    9bb0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9bb4:	83 c4 10             	add    $0x10,%esp
    9bb7:	39 d8                	cmp    %ebx,%eax
    9bb9:	77 c5                	ja     9b80 <test_mem_stat+0x2d0>
    9bbb:	83 ec 0c             	sub    $0xc,%esp
    9bbe:	68 98 05 00 00       	push   $0x598
    9bc3:	68 30 c8 00 00       	push   $0xc830
    9bc8:	ff 75 08             	pushl  0x8(%ebp)
    9bcb:	68 30 14 01 00       	push   $0x11430
    9bd0:	6a 01                	push   $0x1
    9bd2:	e8 c9 27 00 00       	call   c3a0 <printf>
    9bd7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9bde:	00 00 00 
    9be1:	83 c4 20             	add    $0x20,%esp
    9be4:	e9 db fe ff ff       	jmp    9ac4 <test_mem_stat+0x214>
    9be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        ASSERT_TRUE(move_proc(TEST_1_CGROUP_PROCS, pidToMove));
        // Check that the process we moved is really in "/cgroup/test1" cgroup.
        ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, pidToMove));
        // Go to sleep to ensure the child process had a chance to be scheduled.
        // Allows the child to write a page twice for a new file
        sleep(20);
    9bf0:	83 ec 0c             	sub    $0xc,%esp
    9bf3:	6a 14                	push   $0x14
    9bf5:	e8 7e 26 00 00       	call   c278 <sleep>
        strcpy(effect_write_first_file, read_file(TEST_1_MEM_STAT,0));
    9bfa:	58                   	pop    %eax
    9bfb:	5a                   	pop    %edx
    9bfc:	6a 00                	push   $0x0
    9bfe:	68 39 cb 00 00       	push   $0xcb39
    9c03:	e8 18 66 ff ff       	call   220 <read_file>
    9c08:	59                   	pop    %ecx
    9c09:	8d 95 d6 fd ff ff    	lea    -0x22a(%ebp),%edx
    9c0f:	5e                   	pop    %esi
    9c10:	50                   	push   %eax
    9c11:	52                   	push   %edx

        //Allows the child to write to a new file close and write again
        sleep(20);
        strcpy(effect_write_second_file, read_file(TEST_1_MEM_STAT,0));
    9c12:	8d b5 df fe ff ff    	lea    -0x121(%ebp),%esi
        // Check that the process we moved is really in "/cgroup/test1" cgroup.
        ASSERT_TRUE(is_pid_in_group(TEST_1_CGROUP_PROCS, pidToMove));
        // Go to sleep to ensure the child process had a chance to be scheduled.
        // Allows the child to write a page twice for a new file
        sleep(20);
        strcpy(effect_write_first_file, read_file(TEST_1_MEM_STAT,0));
    9c18:	89 95 c4 fc ff ff    	mov    %edx,-0x33c(%ebp)
    9c1e:	e8 2d 21 00 00       	call   bd50 <strcpy>

        //Allows the child to write to a new file close and write again
        sleep(20);
    9c23:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
    9c2a:	e8 49 26 00 00       	call   c278 <sleep>
        strcpy(effect_write_second_file, read_file(TEST_1_MEM_STAT,0));
    9c2f:	5f                   	pop    %edi
    9c30:	58                   	pop    %eax
    9c31:	6a 00                	push   $0x0
    9c33:	68 39 cb 00 00       	push   $0xcb39
    9c38:	e8 e3 65 ff ff       	call   220 <read_file>
    9c3d:	5a                   	pop    %edx
    9c3e:	59                   	pop    %ecx
    9c3f:	50                   	push   %eax
    9c40:	56                   	push   %esi
    9c41:	e8 0a 21 00 00       	call   bd50 <strcpy>

        // check the effect of pgmajfault
        int pgmajfault_befor = get_val(befor_all, "pgmajfault - ");
    9c46:	5f                   	pop    %edi
    9c47:	58                   	pop    %eax
    9c48:	68 16 d0 00 00       	push   $0xd016
    9c4d:	53                   	push   %ebx
    9c4e:	e8 bd 6b ff ff       	call   810 <get_val>
    9c53:	89 c7                	mov    %eax,%edi
        int pgmajfault_after = get_val(effect_write_second_file, "pgmajfault - ");
    9c55:	58                   	pop    %eax
    9c56:	5a                   	pop    %edx
    9c57:	68 16 d0 00 00       	push   $0xd016
    9c5c:	56                   	push   %esi
    9c5d:	e8 ae 6b ff ff       	call   810 <get_val>
        ASSERT_TRUE(pgmajfault_after - pgmajfault_befor >= 2);
    9c62:	29 f8                	sub    %edi,%eax
    9c64:	83 c4 10             	add    $0x10,%esp
    9c67:	8b 95 c4 fc ff ff    	mov    -0x33c(%ebp),%edx
    9c6d:	83 f8 01             	cmp    $0x1,%eax
    9c70:	0f 8e c3 00 00 00    	jle    9d39 <test_mem_stat+0x489>

        // check the effect of pgfault
        // The second write to file c was before closing and file d was after closing,
        // so we need more pgfaults besides what the writing itself causes
        int grow_pgfoult_after_first = get_val(effect_write_first_file, "pgfault - ") - get_val(befor_all , "pgfault - ");
    9c76:	83 ec 08             	sub    $0x8,%esp
    9c79:	89 95 c4 fc ff ff    	mov    %edx,-0x33c(%ebp)
    9c7f:	68 75 cf 00 00       	push   $0xcf75
    9c84:	52                   	push   %edx
    9c85:	e8 86 6b ff ff       	call   810 <get_val>
    9c8a:	59                   	pop    %ecx
    9c8b:	89 c7                	mov    %eax,%edi
    9c8d:	58                   	pop    %eax
    9c8e:	68 75 cf 00 00       	push   $0xcf75
    9c93:	53                   	push   %ebx
    9c94:	e8 77 6b ff ff       	call   810 <get_val>
    9c99:	29 c7                	sub    %eax,%edi
        int grow_pgfoult_after_seconde = get_val(effect_write_second_file, "pgfault - ") - get_val(effect_write_first_file, "pgfault - ");
    9c9b:	58                   	pop    %eax
    9c9c:	5a                   	pop    %edx
    9c9d:	68 75 cf 00 00       	push   $0xcf75
    9ca2:	56                   	push   %esi
    9ca3:	e8 68 6b ff ff       	call   810 <get_val>
    9ca8:	8b 95 c4 fc ff ff    	mov    -0x33c(%ebp),%edx
    9cae:	89 85 c0 fc ff ff    	mov    %eax,-0x340(%ebp)
    9cb4:	59                   	pop    %ecx
    9cb5:	58                   	pop    %eax
    9cb6:	68 75 cf 00 00       	push   $0xcf75
    9cbb:	52                   	push   %edx
    9cbc:	e8 4f 6b ff ff       	call   810 <get_val>
        ASSERT_TRUE(grow_pgfoult_after_first);
    9cc1:	83 c4 10             	add    $0x10,%esp
    9cc4:	85 ff                	test   %edi,%edi
    9cc6:	0f 85 65 01 00 00    	jne    9e31 <test_mem_stat+0x581>
    9ccc:	31 db                	xor    %ebx,%ebx
    9cce:	eb 15                	jmp    9ce5 <test_mem_stat+0x435>
    9cd0:	83 ec 08             	sub    $0x8,%esp
    9cd3:	83 c3 01             	add    $0x1,%ebx
    9cd6:	68 18 c8 00 00       	push   $0xc818
    9cdb:	6a 01                	push   $0x1
    9cdd:	e8 be 26 00 00       	call   c3a0 <printf>
    9ce2:	83 c4 10             	add    $0x10,%esp
    9ce5:	83 ec 0c             	sub    $0xc,%esp
    9ce8:	68 24 d0 00 00       	push   $0xd024
    9ced:	e8 6e 21 00 00       	call   be60 <strlen>
    9cf2:	89 c6                	mov    %eax,%esi
    9cf4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9cfb:	e8 60 21 00 00       	call   be60 <strlen>
    9d00:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9d04:	83 c4 10             	add    $0x10,%esp
    9d07:	39 d8                	cmp    %ebx,%eax
    9d09:	77 c5                	ja     9cd0 <test_mem_stat+0x420>
    9d0b:	83 ec 0c             	sub    $0xc,%esp
    9d0e:	68 c0 05 00 00       	push   $0x5c0
    9d13:	68 30 c8 00 00       	push   $0xc830
    9d18:	ff 75 08             	pushl  0x8(%ebp)
    9d1b:	68 b8 15 01 00       	push   $0x115b8
    9d20:	6a 01                	push   $0x1
    9d22:	e8 79 26 00 00       	call   c3a0 <printf>
    9d27:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9d2e:	00 00 00 
    9d31:	83 c4 20             	add    $0x20,%esp
    9d34:	e9 8b fd ff ff       	jmp    9ac4 <test_mem_stat+0x214>
    9d39:	31 db                	xor    %ebx,%ebx
    9d3b:	eb 18                	jmp    9d55 <test_mem_stat+0x4a5>
    9d3d:	8d 76 00             	lea    0x0(%esi),%esi
        strcpy(effect_write_second_file, read_file(TEST_1_MEM_STAT,0));

        // check the effect of pgmajfault
        int pgmajfault_befor = get_val(befor_all, "pgmajfault - ");
        int pgmajfault_after = get_val(effect_write_second_file, "pgmajfault - ");
        ASSERT_TRUE(pgmajfault_after - pgmajfault_befor >= 2);
    9d40:	83 ec 08             	sub    $0x8,%esp
    9d43:	83 c3 01             	add    $0x1,%ebx
    9d46:	68 18 c8 00 00       	push   $0xc818
    9d4b:	6a 01                	push   $0x1
    9d4d:	e8 4e 26 00 00       	call   c3a0 <printf>
    9d52:	83 c4 10             	add    $0x10,%esp
    9d55:	83 ec 0c             	sub    $0xc,%esp
    9d58:	68 38 15 01 00       	push   $0x11538
    9d5d:	e8 fe 20 00 00       	call   be60 <strlen>
    9d62:	89 c6                	mov    %eax,%esi
    9d64:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9d6b:	e8 f0 20 00 00       	call   be60 <strlen>
    9d70:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9d74:	83 c4 10             	add    $0x10,%esp
    9d77:	39 d8                	cmp    %ebx,%eax
    9d79:	77 c5                	ja     9d40 <test_mem_stat+0x490>
    9d7b:	83 ec 0c             	sub    $0xc,%esp
    9d7e:	68 b9 05 00 00       	push   $0x5b9
    9d83:	68 30 c8 00 00       	push   $0xc830
    9d88:	ff 75 08             	pushl  0x8(%ebp)
    9d8b:	68 64 15 01 00       	push   $0x11564
    9d90:	6a 01                	push   $0x1
    9d92:	e8 09 26 00 00       	call   c3a0 <printf>
    9d97:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9d9e:	00 00 00 
    9da1:	83 c4 20             	add    $0x20,%esp
    9da4:	e9 1b fd ff ff       	jmp    9ac4 <test_mem_stat+0x214>

        // Write to a new file 2 times.
        int fd;
        ASSERT_TRUE(fd=write_new_file("c", str));
        ASSERT_TRUE(write_new_file("c", str));
        ASSERT_TRUE(close_file(fd));
    9da9:	83 ec 0c             	sub    $0xc,%esp
    9dac:	56                   	push   %esi
    9dad:	e8 ee 63 ff ff       	call   1a0 <close_file>
    9db2:	83 c4 10             	add    $0x10,%esp
    9db5:	85 c0                	test   %eax,%eax
    9db7:	0f 85 f4 00 00 00    	jne    9eb1 <test_mem_stat+0x601>
    9dbd:	31 db                	xor    %ebx,%ebx
    9dbf:	eb 1c                	jmp    9ddd <test_mem_stat+0x52d>
    9dc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    9dc8:	83 ec 08             	sub    $0x8,%esp
    9dcb:	83 c3 01             	add    $0x1,%ebx
    9dce:	68 18 c8 00 00       	push   $0xc818
    9dd3:	6a 01                	push   $0x1
    9dd5:	e8 c6 25 00 00       	call   c3a0 <printf>
    9dda:	83 c4 10             	add    $0x10,%esp
    9ddd:	83 ec 0c             	sub    $0xc,%esp
    9de0:	68 eb cf 00 00       	push   $0xcfeb
    9de5:	e8 76 20 00 00       	call   be60 <strlen>
    9dea:	89 c6                	mov    %eax,%esi
    9dec:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9df3:	e8 68 20 00 00       	call   be60 <strlen>
    9df8:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9dfc:	83 c4 10             	add    $0x10,%esp
    9dff:	39 d8                	cmp    %ebx,%eax
    9e01:	77 c5                	ja     9dc8 <test_mem_stat+0x518>
    9e03:	83 ec 0c             	sub    $0xc,%esp
    9e06:	68 99 05 00 00       	push   $0x599
        sleep(20);

        // Write times to another file with the file closed in the middle.
        ASSERT_TRUE(fd=write_new_file("d", str));
        ASSERT_TRUE(close_file(fd));
    9e0b:	68 30 c8 00 00       	push   $0xc830
    9e10:	ff 75 08             	pushl  0x8(%ebp)
    9e13:	68 74 14 01 00       	push   $0x11474
    9e18:	6a 01                	push   $0x1
    9e1a:	e8 81 25 00 00       	call   c3a0 <printf>
    9e1f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9e26:	00 00 00 
    9e29:	83 c4 20             	add    $0x20,%esp
    9e2c:	e9 93 fc ff ff       	jmp    9ac4 <test_mem_stat+0x214>
        // The second write to file c was before closing and file d was after closing,
        // so we need more pgfaults besides what the writing itself causes
        int grow_pgfoult_after_first = get_val(effect_write_first_file, "pgfault - ") - get_val(befor_all , "pgfault - ");
        int grow_pgfoult_after_seconde = get_val(effect_write_second_file, "pgfault - ") - get_val(effect_write_first_file, "pgfault - ");
        ASSERT_TRUE(grow_pgfoult_after_first);
        ASSERT_TRUE(grow_pgfoult_after_seconde > grow_pgfoult_after_first);
    9e31:	8b 8d c0 fc ff ff    	mov    -0x340(%ebp),%ecx
    9e37:	29 c1                	sub    %eax,%ecx
    9e39:	39 cf                	cmp    %ecx,%edi
    9e3b:	0f 8c 08 01 00 00    	jl     9f49 <test_mem_stat+0x699>
    9e41:	31 db                	xor    %ebx,%ebx
    9e43:	eb 18                	jmp    9e5d <test_mem_stat+0x5ad>
    9e45:	8d 76 00             	lea    0x0(%esi),%esi
    9e48:	83 ec 08             	sub    $0x8,%esp
    9e4b:	83 c3 01             	add    $0x1,%ebx
    9e4e:	68 18 c8 00 00       	push   $0xc818
    9e53:	6a 01                	push   $0x1
    9e55:	e8 46 25 00 00       	call   c3a0 <printf>
    9e5a:	83 c4 10             	add    $0x10,%esp
    9e5d:	83 ec 0c             	sub    $0xc,%esp
    9e60:	68 fc 15 01 00       	push   $0x115fc
    9e65:	e8 f6 1f 00 00       	call   be60 <strlen>
    9e6a:	89 c6                	mov    %eax,%esi
    9e6c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9e73:	e8 e8 1f 00 00       	call   be60 <strlen>
    9e78:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9e7c:	83 c4 10             	add    $0x10,%esp
    9e7f:	39 d8                	cmp    %ebx,%eax
    9e81:	77 c5                	ja     9e48 <test_mem_stat+0x598>
    9e83:	83 ec 0c             	sub    $0xc,%esp
    9e86:	68 c1 05 00 00       	push   $0x5c1
    9e8b:	68 30 c8 00 00       	push   $0xc830
    9e90:	ff 75 08             	pushl  0x8(%ebp)
    9e93:	68 34 16 01 00       	push   $0x11634
    9e98:	6a 01                	push   $0x1
    9e9a:	e8 01 25 00 00       	call   c3a0 <printf>
    9e9f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9ea6:	00 00 00 
    9ea9:	83 c4 20             	add    $0x20,%esp
    9eac:	e9 13 fc ff ff       	jmp    9ac4 <test_mem_stat+0x214>
        // Write to a new file 2 times.
        int fd;
        ASSERT_TRUE(fd=write_new_file("c", str));
        ASSERT_TRUE(write_new_file("c", str));
        ASSERT_TRUE(close_file(fd));
        sleep(20);
    9eb1:	83 ec 0c             	sub    $0xc,%esp
    9eb4:	6a 14                	push   $0x14
    9eb6:	e8 bd 23 00 00       	call   c278 <sleep>

        // Write times to another file with the file closed in the middle.
        ASSERT_TRUE(fd=write_new_file("d", str));
    9ebb:	58                   	pop    %eax
    9ebc:	5a                   	pop    %edx
    9ebd:	53                   	push   %ebx
    9ebe:	68 5e d0 00 00       	push   $0xd05e
    9ec3:	e8 d8 64 ff ff       	call   3a0 <write_new_file>
    9ec8:	83 c4 10             	add    $0x10,%esp
    9ecb:	85 c0                	test   %eax,%eax
    9ecd:	89 c6                	mov    %eax,%esi
    9ecf:	0f 85 c4 01 00 00    	jne    a099 <test_mem_stat+0x7e9>
    9ed5:	31 db                	xor    %ebx,%ebx
    9ed7:	eb 1c                	jmp    9ef5 <test_mem_stat+0x645>
    9ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    9ee0:	83 ec 08             	sub    $0x8,%esp
    9ee3:	83 c3 01             	add    $0x1,%ebx
    9ee6:	68 18 c8 00 00       	push   $0xc818
    9eeb:	6a 01                	push   $0x1
    9eed:	e8 ae 24 00 00       	call   c3a0 <printf>
    9ef2:	83 c4 10             	add    $0x10,%esp
    9ef5:	83 ec 0c             	sub    $0xc,%esp
    9ef8:	68 fa cf 00 00       	push   $0xcffa
    9efd:	e8 5e 1f 00 00       	call   be60 <strlen>
    9f02:	89 c6                	mov    %eax,%esi
    9f04:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9f0b:	e8 50 1f 00 00       	call   be60 <strlen>
    9f10:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9f14:	83 c4 10             	add    $0x10,%esp
    9f17:	39 d8                	cmp    %ebx,%eax
    9f19:	77 c5                	ja     9ee0 <test_mem_stat+0x630>
    9f1b:	83 ec 0c             	sub    $0xc,%esp
    9f1e:	68 9d 05 00 00       	push   $0x59d
    9f23:	68 30 c8 00 00       	push   $0xc830
    9f28:	ff 75 08             	pushl  0x8(%ebp)
    9f2b:	68 ac 14 01 00       	push   $0x114ac
    9f30:	6a 01                	push   $0x1
    9f32:	e8 69 24 00 00       	call   c3a0 <printf>
    9f37:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    9f3e:	00 00 00 
    9f41:	83 c4 20             	add    $0x20,%esp
    9f44:	e9 7b fb ff ff       	jmp    9ac4 <test_mem_stat+0x214>
        ASSERT_TRUE(grow_pgfoult_after_first);
        ASSERT_TRUE(grow_pgfoult_after_seconde > grow_pgfoult_after_first);

        // check the effect of file dirty
        // we calculate the dirte and aggregated together as it is impossible to know if there is a delay in writing to disk
        int dirty_befor = get_val(befor_all, "file_dirty - ") + get_val(befor_all, "file_dirty_aggregated - ");
    9f49:	83 ec 08             	sub    $0x8,%esp
    9f4c:	68 4e cf 00 00       	push   $0xcf4e
    9f51:	53                   	push   %ebx
    9f52:	e8 b9 68 ff ff       	call   810 <get_val>
    9f57:	5a                   	pop    %edx
    9f58:	59                   	pop    %ecx
    9f59:	68 5c cf 00 00       	push   $0xcf5c
    9f5e:	53                   	push   %ebx
    9f5f:	89 c7                	mov    %eax,%edi
    9f61:	e8 aa 68 ff ff       	call   810 <get_val>
        int dirty_after = get_val(effect_write_second_file, "file_dirty - ") + get_val(effect_write_second_file, "file_dirty_aggregated - ");
    9f66:	5b                   	pop    %ebx
        ASSERT_TRUE(grow_pgfoult_after_first);
        ASSERT_TRUE(grow_pgfoult_after_seconde > grow_pgfoult_after_first);

        // check the effect of file dirty
        // we calculate the dirte and aggregated together as it is impossible to know if there is a delay in writing to disk
        int dirty_befor = get_val(befor_all, "file_dirty - ") + get_val(befor_all, "file_dirty_aggregated - ");
    9f67:	01 c7                	add    %eax,%edi
        int dirty_after = get_val(effect_write_second_file, "file_dirty - ") + get_val(effect_write_second_file, "file_dirty_aggregated - ");
    9f69:	58                   	pop    %eax
    9f6a:	68 4e cf 00 00       	push   $0xcf4e
    9f6f:	56                   	push   %esi
    9f70:	e8 9b 68 ff ff       	call   810 <get_val>
    9f75:	89 c3                	mov    %eax,%ebx
    9f77:	58                   	pop    %eax
    9f78:	5a                   	pop    %edx
    9f79:	68 5c cf 00 00       	push   $0xcf5c
    9f7e:	56                   	push   %esi
    9f7f:	e8 8c 68 ff ff       	call   810 <get_val>
        ASSERT_TRUE(dirty_after - dirty_befor >= 2);
    9f84:	01 d8                	add    %ebx,%eax
    9f86:	83 c4 10             	add    $0x10,%esp
    9f89:	31 db                	xor    %ebx,%ebx
    9f8b:	29 f8                	sub    %edi,%eax
    9f8d:	83 f8 01             	cmp    $0x1,%eax
    9f90:	0f 8e af 00 00 00    	jle    a045 <test_mem_stat+0x795>
        // Wait for child to exit.
        wait(&wstatus);
    9f96:	8d 85 c8 fc ff ff    	lea    -0x338(%ebp),%eax
    9f9c:	83 ec 0c             	sub    $0xc,%esp
    9f9f:	31 db                	xor    %ebx,%ebx
    9fa1:	50                   	push   %eax
    9fa2:	e8 49 22 00 00       	call   c1f0 <wait>
        ASSERT_TRUE(wstatus);
    9fa7:	8b 85 c8 fc ff ff    	mov    -0x338(%ebp),%eax
    9fad:	83 c4 10             	add    $0x10,%esp
    9fb0:	85 c0                	test   %eax,%eax
    9fb2:	74 21                	je     9fd5 <test_mem_stat+0x725>
    9fb4:	e9 c1 01 00 00       	jmp    a17a <test_mem_stat+0x8ca>
    9fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    9fc0:	83 ec 08             	sub    $0x8,%esp
    9fc3:	83 c3 01             	add    $0x1,%ebx
    9fc6:	68 18 c8 00 00       	push   $0xc818
    9fcb:	6a 01                	push   $0x1
    9fcd:	e8 ce 23 00 00       	call   c3a0 <printf>
    9fd2:	83 c4 10             	add    $0x10,%esp
    9fd5:	83 ec 0c             	sub    $0xc,%esp
    9fd8:	68 ba cd 00 00       	push   $0xcdba
    9fdd:	e8 7e 1e 00 00       	call   be60 <strlen>
    9fe2:	89 c6                	mov    %eax,%esi
    9fe4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    9feb:	e8 70 1e 00 00       	call   be60 <strlen>
    9ff0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    9ff4:	83 c4 10             	add    $0x10,%esp
    9ff7:	39 d8                	cmp    %ebx,%eax
    9ff9:	77 c5                	ja     9fc0 <test_mem_stat+0x710>
    9ffb:	83 ec 0c             	sub    $0xc,%esp
    9ffe:	68 ca 05 00 00       	push   $0x5ca
    a003:	68 30 c8 00 00       	push   $0xc830
    a008:	ff 75 08             	pushl  0x8(%ebp)
    a00b:	68 f4 f9 00 00       	push   $0xf9f4
    a010:	6a 01                	push   $0x1
    a012:	e8 89 23 00 00       	call   c3a0 <printf>
    a017:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a01e:	00 00 00 
    a021:	83 c4 20             	add    $0x20,%esp
    a024:	e9 9b fa ff ff       	jmp    9ac4 <test_mem_stat+0x214>
    a029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

        // check the effect of file dirty
        // we calculate the dirte and aggregated together as it is impossible to know if there is a delay in writing to disk
        int dirty_befor = get_val(befor_all, "file_dirty - ") + get_val(befor_all, "file_dirty_aggregated - ");
        int dirty_after = get_val(effect_write_second_file, "file_dirty - ") + get_val(effect_write_second_file, "file_dirty_aggregated - ");
        ASSERT_TRUE(dirty_after - dirty_befor >= 2);
    a030:	83 ec 08             	sub    $0x8,%esp
    a033:	83 c3 01             	add    $0x1,%ebx
    a036:	68 18 c8 00 00       	push   $0xc818
    a03b:	6a 01                	push   $0x1
    a03d:	e8 5e 23 00 00       	call   c3a0 <printf>
    a042:	83 c4 10             	add    $0x10,%esp
    a045:	83 ec 0c             	sub    $0xc,%esp
    a048:	68 94 16 01 00       	push   $0x11694
    a04d:	e8 0e 1e 00 00       	call   be60 <strlen>
    a052:	89 c6                	mov    %eax,%esi
    a054:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a05b:	e8 00 1e 00 00       	call   be60 <strlen>
    a060:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a064:	83 c4 10             	add    $0x10,%esp
    a067:	39 d8                	cmp    %ebx,%eax
    a069:	77 c5                	ja     a030 <test_mem_stat+0x780>
    a06b:	83 ec 0c             	sub    $0xc,%esp
    a06e:	68 c7 05 00 00       	push   $0x5c7
    a073:	68 30 c8 00 00       	push   $0xc830
    a078:	ff 75 08             	pushl  0x8(%ebp)
    a07b:	68 b4 16 01 00       	push   $0x116b4
    a080:	6a 01                	push   $0x1
    a082:	e8 19 23 00 00       	call   c3a0 <printf>
    a087:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a08e:	00 00 00 
    a091:	83 c4 20             	add    $0x20,%esp
    a094:	e9 2b fa ff ff       	jmp    9ac4 <test_mem_stat+0x214>
        ASSERT_TRUE(close_file(fd));
        sleep(20);

        // Write times to another file with the file closed in the middle.
        ASSERT_TRUE(fd=write_new_file("d", str));
        ASSERT_TRUE(close_file(fd));
    a099:	83 ec 0c             	sub    $0xc,%esp
    a09c:	50                   	push   %eax
    a09d:	e8 fe 60 ff ff       	call   1a0 <close_file>
    a0a2:	83 c4 10             	add    $0x10,%esp
    a0a5:	85 c0                	test   %eax,%eax
    a0a7:	75 4c                	jne    a0f5 <test_mem_stat+0x845>
    a0a9:	31 db                	xor    %ebx,%ebx
    a0ab:	eb 15                	jmp    a0c2 <test_mem_stat+0x812>
    a0ad:	83 ec 08             	sub    $0x8,%esp
    a0b0:	83 c3 01             	add    $0x1,%ebx
    a0b3:	68 18 c8 00 00       	push   $0xc818
    a0b8:	6a 01                	push   $0x1
    a0ba:	e8 e1 22 00 00       	call   c3a0 <printf>
    a0bf:	83 c4 10             	add    $0x10,%esp
    a0c2:	83 ec 0c             	sub    $0xc,%esp
    a0c5:	68 eb cf 00 00       	push   $0xcfeb
    a0ca:	e8 91 1d 00 00       	call   be60 <strlen>
    a0cf:	89 c6                	mov    %eax,%esi
    a0d1:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a0d8:	e8 83 1d 00 00       	call   be60 <strlen>
    a0dd:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a0e1:	83 c4 10             	add    $0x10,%esp
    a0e4:	39 d8                	cmp    %ebx,%eax
    a0e6:	77 c5                	ja     a0ad <test_mem_stat+0x7fd>
    a0e8:	83 ec 0c             	sub    $0xc,%esp
    a0eb:	68 9e 05 00 00       	push   $0x59e
    a0f0:	e9 16 fd ff ff       	jmp    9e0b <test_mem_stat+0x55b>
        ASSERT_TRUE(write_new_file("d", str));
    a0f5:	50                   	push   %eax
    a0f6:	50                   	push   %eax
    a0f7:	53                   	push   %ebx
    a0f8:	68 5e d0 00 00       	push   $0xd05e
    a0fd:	e8 9e 62 ff ff       	call   3a0 <write_new_file>
    a102:	83 c4 10             	add    $0x10,%esp
    a105:	85 c0                	test   %eax,%eax
    a107:	0f 85 ec 00 00 00    	jne    a1f9 <test_mem_stat+0x949>
    a10d:	31 db                	xor    %ebx,%ebx
    a10f:	eb 15                	jmp    a126 <test_mem_stat+0x876>
    a111:	83 ec 08             	sub    $0x8,%esp
    a114:	83 c3 01             	add    $0x1,%ebx
    a117:	68 18 c8 00 00       	push   $0xc818
    a11c:	6a 01                	push   $0x1
    a11e:	e8 7d 22 00 00       	call   c3a0 <printf>
    a123:	83 c4 10             	add    $0x10,%esp
    a126:	83 ec 0c             	sub    $0xc,%esp
    a129:	68 fd cf 00 00       	push   $0xcffd
    a12e:	e8 2d 1d 00 00       	call   be60 <strlen>
    a133:	89 c6                	mov    %eax,%esi
    a135:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a13c:	e8 1f 1d 00 00       	call   be60 <strlen>
    a141:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a145:	83 c4 10             	add    $0x10,%esp
    a148:	39 d8                	cmp    %ebx,%eax
    a14a:	77 c5                	ja     a111 <test_mem_stat+0x861>
    a14c:	83 ec 0c             	sub    $0xc,%esp
    a14f:	68 9f 05 00 00       	push   $0x59f
    a154:	68 30 c8 00 00       	push   $0xc830
    a159:	ff 75 08             	pushl  0x8(%ebp)
    a15c:	68 f4 14 01 00       	push   $0x114f4
    a161:	6a 01                	push   $0x1
    a163:	e8 38 22 00 00       	call   c3a0 <printf>
    a168:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a16f:	00 00 00 
    a172:	83 c4 20             	add    $0x20,%esp
    a175:	e9 4a f9 ff ff       	jmp    9ac4 <test_mem_stat+0x214>
        ASSERT_TRUE(dirty_after - dirty_befor >= 2);
        // Wait for child to exit.
        wait(&wstatus);
        ASSERT_TRUE(wstatus);
        // Remove the temp file.
        ASSERT_TRUE(temp_delete());
    a17a:	e8 51 66 ff ff       	call   7d0 <temp_delete>
    a17f:	31 db                	xor    %ebx,%ebx
    a181:	85 c0                	test   %eax,%eax
    a183:	74 20                	je     a1a5 <test_mem_stat+0x8f5>
    a185:	e9 3a f9 ff ff       	jmp    9ac4 <test_mem_stat+0x214>
    a18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    a190:	83 ec 08             	sub    $0x8,%esp
    a193:	83 c3 01             	add    $0x1,%ebx
    a196:	68 18 c8 00 00       	push   $0xc818
    a19b:	6a 01                	push   $0x1
    a19d:	e8 fe 21 00 00       	call   c3a0 <printf>
    a1a2:	83 c4 10             	add    $0x10,%esp
    a1a5:	83 ec 0c             	sub    $0xc,%esp
    a1a8:	68 c2 cd 00 00       	push   $0xcdc2
    a1ad:	e8 ae 1c 00 00       	call   be60 <strlen>
    a1b2:	89 c6                	mov    %eax,%esi
    a1b4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a1bb:	e8 a0 1c 00 00       	call   be60 <strlen>
    a1c0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a1c4:	83 c4 10             	add    $0x10,%esp
    a1c7:	39 d8                	cmp    %ebx,%eax
    a1c9:	77 c5                	ja     a190 <test_mem_stat+0x8e0>
    a1cb:	83 ec 0c             	sub    $0xc,%esp
    a1ce:	68 cc 05 00 00       	push   $0x5cc
    a1d3:	68 30 c8 00 00       	push   $0xc830
    a1d8:	ff 75 08             	pushl  0x8(%ebp)
    a1db:	68 28 fa 00 00       	push   $0xfa28
    a1e0:	6a 01                	push   $0x1
    a1e2:	e8 b9 21 00 00       	call   c3a0 <printf>
    a1e7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a1ee:	00 00 00 
    a1f1:	83 c4 20             	add    $0x20,%esp
    a1f4:	e9 cb f8 ff ff       	jmp    9ac4 <test_mem_stat+0x214>

        // Write times to another file with the file closed in the middle.
        ASSERT_TRUE(fd=write_new_file("d", str));
        ASSERT_TRUE(close_file(fd));
        ASSERT_TRUE(write_new_file("d", str));
        ASSERT_TRUE(close_file(fd));
    a1f9:	83 ec 0c             	sub    $0xc,%esp
    a1fc:	56                   	push   %esi
    a1fd:	e8 9e 5f ff ff       	call   1a0 <close_file>
    a202:	83 c4 10             	add    $0x10,%esp
    a205:	85 c0                	test   %eax,%eax
    a207:	75 4f                	jne    a258 <test_mem_stat+0x9a8>
    a209:	31 db                	xor    %ebx,%ebx
    a20b:	eb 18                	jmp    a225 <test_mem_stat+0x975>
    a20d:	8d 76 00             	lea    0x0(%esi),%esi
    a210:	83 ec 08             	sub    $0x8,%esp
    a213:	83 c3 01             	add    $0x1,%ebx
    a216:	68 18 c8 00 00       	push   $0xc818
    a21b:	6a 01                	push   $0x1
    a21d:	e8 7e 21 00 00       	call   c3a0 <printf>
    a222:	83 c4 10             	add    $0x10,%esp
    a225:	83 ec 0c             	sub    $0xc,%esp
    a228:	68 eb cf 00 00       	push   $0xcfeb
    a22d:	e8 2e 1c 00 00       	call   be60 <strlen>
    a232:	89 c6                	mov    %eax,%esi
    a234:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a23b:	e8 20 1c 00 00       	call   be60 <strlen>
    a240:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a244:	83 c4 10             	add    $0x10,%esp
    a247:	39 d8                	cmp    %ebx,%eax
    a249:	77 c5                	ja     a210 <test_mem_stat+0x960>
    a24b:	83 ec 0c             	sub    $0xc,%esp
    a24e:	68 a0 05 00 00       	push   $0x5a0
    a253:	e9 b3 fb ff ff       	jmp    9e0b <test_mem_stat+0x55b>

        exit(0);
    a258:	83 ec 0c             	sub    $0xc,%esp
    a25b:	6a 00                	push   $0x0
    a25d:	e8 86 1f 00 00       	call   c1e8 <exit>
    a262:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    a269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000a270 <test_nested_cgroups>:
    }
}


TEST (test_nested_cgroups)
{
    a270:	55                   	push   %ebp
  char * mem_str_buf = 0;
  uint kernel_total_mem = 0;
  uint depth_cnt = 1;
  char min_val[12] = {0};
  //char max_val[12] = {0};
  char current_nested_cgroup[MAX_PATH_LENGTH] = {0};
    a271:	31 c0                	xor    %eax,%eax
    a273:	b9 80 00 00 00       	mov    $0x80,%ecx
    }
}


TEST (test_nested_cgroups)
{
    a278:	89 e5                	mov    %esp,%ebp
    a27a:	57                   	push   %edi
    a27b:	56                   	push   %esi
    a27c:	53                   	push   %ebx
  char * mem_str_buf = 0;
  uint kernel_total_mem = 0;
  uint depth_cnt = 1;
  char min_val[12] = {0};
  //char max_val[12] = {0};
  char current_nested_cgroup[MAX_PATH_LENGTH] = {0};
    a27d:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
    }
}


TEST (test_nested_cgroups)
{
    a283:	81 ec 34 02 00 00    	sub    $0x234,%esp
  char * mem_str_buf = 0;
  uint kernel_total_mem = 0;
  uint depth_cnt = 1;
  char min_val[12] = {0};
    a289:	c7 85 dc fd ff ff 00 	movl   $0x0,-0x224(%ebp)
    a290:	00 00 00 
    a293:	c7 85 e0 fd ff ff 00 	movl   $0x0,-0x220(%ebp)
    a29a:	00 00 00 
  //char max_val[12] = {0};
  char current_nested_cgroup[MAX_PATH_LENGTH] = {0};
    a29d:	f3 ab                	rep stos %eax,%es:(%edi)
  char current_nesting_index = '0';
  uint current_nested_cgroup_length = 0;


  mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
    a29f:	6a 00                	push   $0x0
    a2a1:	68 39 cb 00 00       	push   $0xcb39
TEST (test_nested_cgroups)
{
  char * mem_str_buf = 0;
  uint kernel_total_mem = 0;
  uint depth_cnt = 1;
  char min_val[12] = {0};
    a2a6:	c7 85 e4 fd ff ff 00 	movl   $0x0,-0x21c(%ebp)
    a2ad:	00 00 00 
  char current_nested_cgroup[MAX_PATH_LENGTH] = {0};
  char current_nesting_index = '0';
  uint current_nested_cgroup_length = 0;


  mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
    a2b0:	e8 6b 5f ff ff       	call   220 <read_file>
//Parse memory.stat info and fetch "kernel" value
int get_kernel_total_memory(char * mem_stat_info)
{
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");
    a2b5:	59                   	pop    %ecx
    a2b6:	5b                   	pop    %ebx
    a2b7:	68 3f c8 00 00       	push   $0xc83f
    a2bc:	50                   	push   %eax
  kernel_total_mem = get_kernel_total_memory(mem_str_buf);

  printf(1, "\nkernel total memory: %x \n", kernel_total_mem);

  //initialize the nested cgroup path
  strcpy(current_nested_cgroup, ROOT_CGROUP);
    a2bd:	8d 9d e8 fd ff ff    	lea    -0x218(%ebp),%ebx
//Parse memory.stat info and fetch "kernel" value
int get_kernel_total_memory(char * mem_stat_info)
{
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");
    a2c3:	e8 48 1e 00 00       	call   c110 <strstr>

  return atoi(kernel_value);
    a2c8:	89 04 24             	mov    %eax,(%esp)
    a2cb:	e8 d0 1c 00 00       	call   bfa0 <atoi>


  mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
  kernel_total_mem = get_kernel_total_memory(mem_str_buf);

  printf(1, "\nkernel total memory: %x \n", kernel_total_mem);
    a2d0:	83 c4 0c             	add    $0xc,%esp
{
  char * kernel_value = 0;

  kernel_value = strstr(mem_stat_info, (char *)"kernel - ");

  return atoi(kernel_value);
    a2d3:	89 c6                	mov    %eax,%esi


  mem_str_buf = read_file(TEST_1_MEM_STAT, 0);
  kernel_total_mem = get_kernel_total_memory(mem_str_buf);

  printf(1, "\nkernel total memory: %x \n", kernel_total_mem);
    a2d5:	50                   	push   %eax
    a2d6:	68 3d d0 00 00       	push   $0xd03d
    a2db:	6a 01                	push   $0x1
    a2dd:	e8 be 20 00 00       	call   c3a0 <printf>

  //initialize the nested cgroup path
  strcpy(current_nested_cgroup, ROOT_CGROUP);
    a2e2:	5f                   	pop    %edi
    a2e3:	58                   	pop    %eax
    a2e4:	68 d4 c8 00 00       	push   $0xc8d4
    a2e9:	53                   	push   %ebx
    a2ea:	e8 61 1a 00 00       	call   bd50 <strcpy>
  strcat(current_nested_cgroup, TESTED_NESTED_CGROUP_CHILD);
    a2ef:	58                   	pop    %eax
    a2f0:	5a                   	pop    %edx
    a2f1:	68 58 d0 00 00       	push   $0xd058
    a2f6:	53                   	push   %ebx
    a2f7:	e8 c4 1d 00 00       	call   c0c0 <strcat>
  current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;
    a2fc:	89 1c 24             	mov    %ebx,(%esp)
    a2ff:	e8 5c 1b 00 00       	call   be60 <strlen>

  /* Create the root nested cgroup and enable the memory controller*/
  ASSERT_FALSE(mkdir(current_nested_cgroup));
    a304:	89 1c 24             	mov    %ebx,(%esp)
  printf(1, "\nkernel total memory: %x \n", kernel_total_mem);

  //initialize the nested cgroup path
  strcpy(current_nested_cgroup, ROOT_CGROUP);
  strcat(current_nested_cgroup, TESTED_NESTED_CGROUP_CHILD);
  current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;
    a307:	c6 84 05 e8 fd ff ff 	movb   $0x30,-0x218(%ebp,%eax,1)
    a30e:	30 

  /* Create the root nested cgroup and enable the memory controller*/
  ASSERT_FALSE(mkdir(current_nested_cgroup));
    a30f:	e8 3c 1f 00 00       	call   c250 <mkdir>
    a314:	83 c4 10             	add    $0x10,%esp
    a317:	85 c0                	test   %eax,%eax
    a319:	74 75                	je     a390 <test_nested_cgroups+0x120>
    a31b:	31 db                	xor    %ebx,%ebx
    a31d:	eb 16                	jmp    a335 <test_nested_cgroups+0xc5>
    a31f:	90                   	nop
    a320:	83 ec 08             	sub    $0x8,%esp
    a323:	83 c3 01             	add    $0x1,%ebx
    a326:	68 18 c8 00 00       	push   $0xc818
    a32b:	6a 01                	push   $0x1
    a32d:	e8 6e 20 00 00       	call   c3a0 <printf>
    a332:	83 c4 10             	add    $0x10,%esp
    a335:	83 ec 0c             	sub    $0xc,%esp
    a338:	68 60 d0 00 00       	push   $0xd060
    a33d:	e8 1e 1b 00 00       	call   be60 <strlen>
    a342:	89 c6                	mov    %eax,%esi
    a344:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a34b:	e8 10 1b 00 00       	call   be60 <strlen>
    a350:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a354:	83 c4 10             	add    $0x10,%esp
    a357:	39 d8                	cmp    %ebx,%eax
    a359:	77 c5                	ja     a320 <test_nested_cgroups+0xb0>
    a35b:	83 ec 0c             	sub    $0xc,%esp
    a35e:	68 e8 05 00 00       	push   $0x5e8

    //create another nested cgroup (mem controller should be enabled)
    current_nesting_index++;
    strcat(current_nested_cgroup, TESTED_NESTED_CGROUP_CHILD);
    current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;
    ASSERT_FALSE(mkdir(current_nested_cgroup));
    a363:	68 30 c8 00 00       	push   $0xc830
    a368:	ff 75 08             	pushl  0x8(%ebp)
    a36b:	68 fc 16 01 00       	push   $0x116fc
    a370:	6a 01                	push   $0x1
    a372:	e8 29 20 00 00       	call   c3a0 <printf>
    a377:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a37e:	00 00 00 
    a381:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(unlink(current_nested_cgroup));

    current_nested_cgroup_length -= sizeof(TESTED_NESTED_CGROUP_CHILD);
    current_nested_cgroup[current_nested_cgroup_length] = 0;
  }
}
    a384:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a387:	5b                   	pop    %ebx
    a388:	5e                   	pop    %esi
    a389:	5f                   	pop    %edi
    a38a:	5d                   	pop    %ebp
    a38b:	c3                   	ret    
    a38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;

  /* Create the root nested cgroup and enable the memory controller*/
  ASSERT_FALSE(mkdir(current_nested_cgroup));

  strcpy(temp_path_g, current_nested_cgroup);
    a390:	83 ec 08             	sub    $0x8,%esp
    a393:	53                   	push   %ebx
    a394:	68 40 40 01 00       	push   $0x14040
    a399:	e8 b2 19 00 00       	call   bd50 <strcpy>
  strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    a39e:	59                   	pop    %ecx
    a39f:	5f                   	pop    %edi
    a3a0:	68 7d d0 00 00       	push   $0xd07d
    a3a5:	68 40 40 01 00       	push   $0x14040
    a3aa:	e8 11 1d 00 00       	call   c0c0 <strcat>
  ASSERT_TRUE(write_file(temp_path_g, "+mem"));
    a3af:	58                   	pop    %eax
    a3b0:	5a                   	pop    %edx
    a3b1:	68 9b ce 00 00       	push   $0xce9b
    a3b6:	68 40 40 01 00       	push   $0x14040
    a3bb:	e8 20 5f ff ff       	call   2e0 <write_file>
    a3c0:	83 c4 10             	add    $0x10,%esp
    a3c3:	85 c0                	test   %eax,%eax
    a3c5:	0f 84 25 02 00 00    	je     a5f0 <test_nested_cgroups+0x380>
    a3cb:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    a3d0:	89 f0                	mov    %esi,%eax
    a3d2:	8d bd dc fd ff ff    	lea    -0x224(%ebp),%edi
    a3d8:	f7 e2                	mul    %edx
    a3da:	c6 85 d4 fd ff ff 30 	movb   $0x30,-0x22c(%ebp)
    a3e1:	c1 ea 03             	shr    $0x3,%edx
    a3e4:	89 95 d0 fd ff ff    	mov    %edx,-0x230(%ebp)
    a3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  /* create the 9 other nested groups. Enable memory controller in each of them because
     it's not propagated from the parent cgroup */
  for(depth_cnt = 1; depth_cnt < 10; depth_cnt++)
  {
    /* define the min-max values for the current cgroup */
    memset(min_val, 12, 0);
    a3f0:	83 ec 04             	sub    $0x4,%esp
    a3f3:	6a 00                	push   $0x0
    a3f5:	6a 0c                	push   $0xc
    a3f7:	57                   	push   %edi
    a3f8:	e8 93 1a 00 00       	call   be90 <memset>
    itoa(min_val, kernel_total_mem / 10);
    a3fd:	59                   	pop    %ecx
    a3fe:	58                   	pop    %eax
    a3ff:	ff b5 d0 fd ff ff    	pushl  -0x230(%ebp)
    a405:	57                   	push   %edi
    a406:	e8 05 1c 00 00       	call   c010 <itoa>

    // Protect portion of memory for the current nested cgroup
    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    a40b:	83 c4 0c             	add    $0xc,%esp
    a40e:	68 00 02 00 00       	push   $0x200
    a413:	6a 00                	push   $0x0
    a415:	68 40 40 01 00       	push   $0x14040
    a41a:	e8 71 1a 00 00       	call   be90 <memset>
    strcpy(temp_path_g, current_nested_cgroup);
    a41f:	58                   	pop    %eax
    a420:	5a                   	pop    %edx
    a421:	53                   	push   %ebx
    a422:	68 40 40 01 00       	push   $0x14040
    a427:	e8 24 19 00 00       	call   bd50 <strcpy>
    strcat(temp_path_g, TEST_NESTED_MEM_MIN);
    a42c:	59                   	pop    %ecx
    a42d:	58                   	pop    %eax
    a42e:	68 2d cb 00 00       	push   $0xcb2d
    a433:	68 40 40 01 00       	push   $0x14040
    a438:	e8 83 1c 00 00       	call   c0c0 <strcat>
    printf(1, "temp_path_g nested cgroup min path: %s\n", temp_path_g);
    a43d:	83 c4 0c             	add    $0xc,%esp
    a440:	68 40 40 01 00       	push   $0x14040
    a445:	68 b0 17 01 00       	push   $0x117b0
    a44a:	6a 01                	push   $0x1
    a44c:	e8 4f 1f 00 00       	call   c3a0 <printf>
    ASSERT_TRUE(write_file(temp_path_g, min_val));
    a451:	58                   	pop    %eax
    a452:	5a                   	pop    %edx
    a453:	57                   	push   %edi
    a454:	68 40 40 01 00       	push   $0x14040
    a459:	e8 82 5e ff ff       	call   2e0 <write_file>
    a45e:	83 c4 10             	add    $0x10,%esp
    a461:	85 c0                	test   %eax,%eax
    a463:	0f 84 af 03 00 00    	je     a818 <test_nested_cgroups+0x5a8>
    read_file(temp_path_g, 1);
    a469:	83 ec 08             	sub    $0x8,%esp
    a46c:	6a 01                	push   $0x1
    a46e:	68 40 40 01 00       	push   $0x14040
    a473:	e8 a8 5d ff ff       	call   220 <read_file>

    //create another nested cgroup (mem controller should be enabled)
    current_nesting_index++;
    strcat(current_nested_cgroup, TESTED_NESTED_CGROUP_CHILD);
    a478:	58                   	pop    %eax
    a479:	5a                   	pop    %edx
    a47a:	68 58 d0 00 00       	push   $0xd058
    a47f:	53                   	push   %ebx
    a480:	80 85 d4 fd ff ff 01 	addb   $0x1,-0x22c(%ebp)
    a487:	e8 34 1c 00 00       	call   c0c0 <strcat>
    current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;
    a48c:	89 1c 24             	mov    %ebx,(%esp)
    a48f:	e8 cc 19 00 00       	call   be60 <strlen>
    a494:	0f b6 95 d4 fd ff ff 	movzbl -0x22c(%ebp),%edx
    ASSERT_FALSE(mkdir(current_nested_cgroup));
    a49b:	89 1c 24             	mov    %ebx,(%esp)
    read_file(temp_path_g, 1);

    //create another nested cgroup (mem controller should be enabled)
    current_nesting_index++;
    strcat(current_nested_cgroup, TESTED_NESTED_CGROUP_CHILD);
    current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;
    a49e:	88 94 05 e8 fd ff ff 	mov    %dl,-0x218(%ebp,%eax,1)
    ASSERT_FALSE(mkdir(current_nested_cgroup));
    a4a5:	e8 a6 1d 00 00       	call   c250 <mkdir>
    a4aa:	83 c4 10             	add    $0x10,%esp
    a4ad:	85 c0                	test   %eax,%eax
    a4af:	0f 85 14 03 00 00    	jne    a7c9 <test_nested_cgroups+0x559>

    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    a4b5:	83 ec 04             	sub    $0x4,%esp
    a4b8:	68 00 02 00 00       	push   $0x200
    a4bd:	6a 00                	push   $0x0
    a4bf:	68 40 40 01 00       	push   $0x14040
    a4c4:	e8 c7 19 00 00       	call   be90 <memset>
    strcpy(temp_path_g, current_nested_cgroup);
    a4c9:	59                   	pop    %ecx
    a4ca:	58                   	pop    %eax
    a4cb:	53                   	push   %ebx
    a4cc:	68 40 40 01 00       	push   $0x14040
    a4d1:	e8 7a 18 00 00       	call   bd50 <strcpy>
    strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    a4d6:	58                   	pop    %eax
    a4d7:	5a                   	pop    %edx
    a4d8:	68 7d d0 00 00       	push   $0xd07d
    a4dd:	68 40 40 01 00       	push   $0x14040
    a4e2:	e8 d9 1b 00 00       	call   c0c0 <strcat>
    ASSERT_TRUE(write_file(temp_path_g, "+mem"));
    a4e7:	59                   	pop    %ecx
    a4e8:	58                   	pop    %eax
    a4e9:	68 9b ce 00 00       	push   $0xce9b
    a4ee:	68 40 40 01 00       	push   $0x14040
    a4f3:	e8 e8 5d ff ff       	call   2e0 <write_file>
    a4f8:	83 c4 10             	add    $0x10,%esp
    a4fb:	85 c0                	test   %eax,%eax
    a4fd:	0f 84 65 03 00 00    	je     a868 <test_nested_cgroups+0x5f8>
  strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
  ASSERT_TRUE(write_file(temp_path_g, "+mem"));

  /* create the 9 other nested groups. Enable memory controller in each of them because
     it's not propagated from the parent cgroup */
  for(depth_cnt = 1; depth_cnt < 10; depth_cnt++)
    a503:	80 bd d4 fd ff ff 39 	cmpb   $0x39,-0x22c(%ebp)
    a50a:	0f 85 e0 fe ff ff    	jne    a3f0 <test_nested_cgroups+0x180>
    strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    ASSERT_TRUE(write_file(temp_path_g, "+mem"));
  }

  //check if we can allocate now more memory in the last cgroup
  memset(temp_path_g, 0, MAX_PATH_LENGTH);
    a510:	83 ec 04             	sub    $0x4,%esp
    a513:	68 00 02 00 00       	push   $0x200
    a518:	6a 00                	push   $0x0
    a51a:	68 40 40 01 00       	push   $0x14040
    a51f:	e8 6c 19 00 00       	call   be90 <memset>
  strcpy(temp_path_g, current_nested_cgroup);
    a524:	59                   	pop    %ecx
    a525:	58                   	pop    %eax
    a526:	53                   	push   %ebx
    a527:	68 40 40 01 00       	push   $0x14040
    a52c:	e8 1f 18 00 00       	call   bd50 <strcpy>
  strcat(temp_path_g, TEST_NESTED_MEM_MIN);
    a531:	58                   	pop    %eax
    a532:	5a                   	pop    %edx
    a533:	68 2d cb 00 00       	push   $0xcb2d
    a538:	68 40 40 01 00       	push   $0x14040
    a53d:	e8 7e 1b 00 00       	call   c0c0 <strcat>

  //allocate 25% of kernel space - should fail (this should also fail for lesser values)
  memset(min_val, 12, 0);
    a542:	83 c4 0c             	add    $0xc,%esp
    a545:	6a 00                	push   $0x0
    a547:	6a 0c                	push   $0xc
    a549:	57                   	push   %edi
    a54a:	e8 41 19 00 00       	call   be90 <memset>
  itoa(min_val, kernel_total_mem / 4);
    a54f:	59                   	pop    %ecx
    a550:	58                   	pop    %eax
    a551:	89 f0                	mov    %esi,%eax
    a553:	c1 e8 02             	shr    $0x2,%eax
    a556:	50                   	push   %eax
    a557:	57                   	push   %edi
    a558:	e8 b3 1a 00 00       	call   c010 <itoa>
  ASSERT_FALSE(write_file(temp_path_g, min_val));
    a55d:	58                   	pop    %eax
    a55e:	5a                   	pop    %edx
    a55f:	57                   	push   %edi
    a560:	68 40 40 01 00       	push   $0x14040
    a565:	e8 76 5d ff ff       	call   2e0 <write_file>
    a56a:	83 c4 10             	add    $0x10,%esp
    a56d:	85 c0                	test   %eax,%eax
    a56f:	0f 84 ef 00 00 00    	je     a664 <test_nested_cgroups+0x3f4>
    a575:	31 db                	xor    %ebx,%ebx
    a577:	eb 1c                	jmp    a595 <test_nested_cgroups+0x325>
    a579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    a580:	83 ec 08             	sub    $0x8,%esp
    a583:	83 c3 01             	add    $0x1,%ebx
    a586:	68 18 c8 00 00       	push   $0xc818
    a58b:	6a 01                	push   $0x1
    a58d:	e8 0e 1e 00 00       	call   c3a0 <printf>
    a592:	83 c4 10             	add    $0x10,%esp
    a595:	83 ec 0c             	sub    $0xc,%esp
    a598:	68 d8 17 01 00       	push   $0x117d8
    a59d:	e8 be 18 00 00       	call   be60 <strlen>
    a5a2:	89 c6                	mov    %eax,%esi
    a5a4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a5ab:	e8 b0 18 00 00       	call   be60 <strlen>
    a5b0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a5b4:	83 c4 10             	add    $0x10,%esp
    a5b7:	39 d8                	cmp    %ebx,%eax
    a5b9:	77 c5                	ja     a580 <test_nested_cgroups+0x310>
    a5bb:	83 ec 0c             	sub    $0xc,%esp
    a5be:	68 12 06 00 00       	push   $0x612
    a5c3:	68 30 c8 00 00       	push   $0xc830
    a5c8:	ff 75 08             	pushl  0x8(%ebp)
    a5cb:	68 48 18 01 00       	push   $0x11848
    a5d0:	6a 01                	push   $0x1
    a5d2:	e8 c9 1d 00 00       	call   c3a0 <printf>
    a5d7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a5de:	00 00 00 
    a5e1:	83 c4 20             	add    $0x20,%esp
    a5e4:	e9 9b fd ff ff       	jmp    a384 <test_nested_cgroups+0x114>
    a5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    a5f0:	31 db                	xor    %ebx,%ebx
    a5f2:	eb 19                	jmp    a60d <test_nested_cgroups+0x39d>
    a5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  /* Create the root nested cgroup and enable the memory controller*/
  ASSERT_FALSE(mkdir(current_nested_cgroup));

  strcpy(temp_path_g, current_nested_cgroup);
  strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
  ASSERT_TRUE(write_file(temp_path_g, "+mem"));
    a5f8:	83 ec 08             	sub    $0x8,%esp
    a5fb:	83 c3 01             	add    $0x1,%ebx
    a5fe:	68 18 c8 00 00       	push   $0xc818
    a603:	6a 01                	push   $0x1
    a605:	e8 96 1d 00 00       	call   c3a0 <printf>
    a60a:	83 c4 10             	add    $0x10,%esp
    a60d:	83 ec 0c             	sub    $0xc,%esp
    a610:	68 44 17 01 00       	push   $0x11744
    a615:	e8 46 18 00 00       	call   be60 <strlen>
    a61a:	89 c6                	mov    %eax,%esi
    a61c:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a623:	e8 38 18 00 00       	call   be60 <strlen>
    a628:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a62c:	83 c4 10             	add    $0x10,%esp
    a62f:	39 d8                	cmp    %ebx,%eax
    a631:	77 c5                	ja     a5f8 <test_nested_cgroups+0x388>
    a633:	83 ec 0c             	sub    $0xc,%esp
    a636:	68 ec 05 00 00       	push   $0x5ec
    ASSERT_FALSE(mkdir(current_nested_cgroup));

    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    strcpy(temp_path_g, current_nested_cgroup);
    strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    ASSERT_TRUE(write_file(temp_path_g, "+mem"));
    a63b:	68 30 c8 00 00       	push   $0xc830
    a640:	ff 75 08             	pushl  0x8(%ebp)
    a643:	68 64 17 01 00       	push   $0x11764
    a648:	6a 01                	push   $0x1
    a64a:	e8 51 1d 00 00       	call   c3a0 <printf>
    a64f:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a656:	00 00 00 
    a659:	83 c4 20             	add    $0x20,%esp
    ASSERT_FALSE(unlink(current_nested_cgroup));

    current_nested_cgroup_length -= sizeof(TESTED_NESTED_CGROUP_CHILD);
    current_nested_cgroup[current_nested_cgroup_length] = 0;
  }
}
    a65c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a65f:	5b                   	pop    %ebx
    a660:	5e                   	pop    %esi
    a661:	5f                   	pop    %edi
    a662:	5d                   	pop    %ebp
    a663:	c3                   	ret    
  //allocate 25% of kernel space - should fail (this should also fail for lesser values)
  memset(min_val, 12, 0);
  itoa(min_val, kernel_total_mem / 4);
  ASSERT_FALSE(write_file(temp_path_g, min_val));

  memset(min_val, 12, 0);
    a664:	83 ec 04             	sub    $0x4,%esp
    a667:	6a 00                	push   $0x0
    a669:	6a 0c                	push   $0xc
    a66b:	57                   	push   %edi
    a66c:	e8 1f 18 00 00       	call   be90 <memset>
  itoa(min_val, 0);
    a671:	58                   	pop    %eax
    a672:	5a                   	pop    %edx
    a673:	6a 00                	push   $0x0
    a675:	57                   	push   %edi
    a676:	e8 95 19 00 00       	call   c010 <itoa>
  current_nested_cgroup_length = strlen(current_nested_cgroup);
    a67b:	89 1c 24             	mov    %ebx,(%esp)
    a67e:	e8 dd 17 00 00       	call   be60 <strlen>
    a683:	8d 74 03 f8          	lea    -0x8(%ebx,%eax,1),%esi
    a687:	8d 44 03 a8          	lea    -0x58(%ebx,%eax,1),%eax
    a68b:	83 c4 10             	add    $0x10,%esp
    a68e:	89 85 d4 fd ff ff    	mov    %eax,-0x22c(%ebp)
    a694:	eb 72                	jmp    a708 <test_nested_cgroups+0x498>
    a696:	8d 76 00             	lea    0x0(%esi),%esi
    a699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    strcpy(temp_path_g, current_nested_cgroup);
    strcat(temp_path_g, TEST_NESTED_MEM_MIN);
    ASSERT_TRUE(write_file(temp_path_g, min_val));

    // disable mem controller
    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    a6a0:	83 ec 04             	sub    $0x4,%esp
    a6a3:	68 00 02 00 00       	push   $0x200
    a6a8:	6a 00                	push   $0x0
    a6aa:	68 40 40 01 00       	push   $0x14040
    a6af:	e8 dc 17 00 00       	call   be90 <memset>
    strcpy(temp_path_g, current_nested_cgroup);
    a6b4:	58                   	pop    %eax
    a6b5:	5a                   	pop    %edx
    a6b6:	53                   	push   %ebx
    a6b7:	68 40 40 01 00       	push   $0x14040
    a6bc:	e8 8f 16 00 00       	call   bd50 <strcpy>
    strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    a6c1:	59                   	pop    %ecx
    a6c2:	58                   	pop    %eax
    a6c3:	68 7d d0 00 00       	push   $0xd07d
    a6c8:	68 40 40 01 00       	push   $0x14040
    a6cd:	e8 ee 19 00 00       	call   c0c0 <strcat>
    write_file(temp_path_g, "-mem");
    a6d2:	58                   	pop    %eax
    a6d3:	5a                   	pop    %edx
    a6d4:	68 b9 ce 00 00       	push   $0xceb9
    a6d9:	68 40 40 01 00       	push   $0x14040
    a6de:	e8 fd 5b ff ff       	call   2e0 <write_file>

    //delete nested cgroup
    ASSERT_FALSE(unlink(current_nested_cgroup));
    a6e3:	89 1c 24             	mov    %ebx,(%esp)
    a6e6:	e8 4d 1b 00 00       	call   c238 <unlink>
    a6eb:	83 c4 10             	add    $0x10,%esp
    a6ee:	85 c0                	test   %eax,%eax
    a6f0:	0f 85 c2 01 00 00    	jne    a8b8 <test_nested_cgroups+0x648>

    current_nested_cgroup_length -= sizeof(TESTED_NESTED_CGROUP_CHILD);
    current_nested_cgroup[current_nested_cgroup_length] = 0;
    a6f6:	c6 06 00             	movb   $0x0,(%esi)
    a6f9:	83 ee 08             	sub    $0x8,%esi
  itoa(min_val, 0);
  current_nested_cgroup_length = strlen(current_nested_cgroup);

  /* disable memory controllers, set min back to 0 and delete cgroups
    Here we do it backwards - reversed tro the last loop */
  for(depth_cnt = 0; depth_cnt < 10; depth_cnt++)
    a6fc:	39 b5 d4 fd ff ff    	cmp    %esi,-0x22c(%ebp)
    a702:	0f 84 7c fc ff ff    	je     a384 <test_nested_cgroups+0x114>
  {
    // set min value to 0 (just in case)
    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    a708:	83 ec 04             	sub    $0x4,%esp
    a70b:	68 00 02 00 00       	push   $0x200
    a710:	6a 00                	push   $0x0
    a712:	68 40 40 01 00       	push   $0x14040
    a717:	e8 74 17 00 00       	call   be90 <memset>
    strcpy(temp_path_g, current_nested_cgroup);
    a71c:	59                   	pop    %ecx
    a71d:	58                   	pop    %eax
    a71e:	53                   	push   %ebx
    a71f:	68 40 40 01 00       	push   $0x14040
    a724:	e8 27 16 00 00       	call   bd50 <strcpy>
    strcat(temp_path_g, TEST_NESTED_MEM_MIN);
    a729:	58                   	pop    %eax
    a72a:	5a                   	pop    %edx
    a72b:	68 2d cb 00 00       	push   $0xcb2d
    a730:	68 40 40 01 00       	push   $0x14040
    a735:	e8 86 19 00 00       	call   c0c0 <strcat>
    ASSERT_TRUE(write_file(temp_path_g, min_val));
    a73a:	59                   	pop    %ecx
    a73b:	58                   	pop    %eax
    a73c:	57                   	push   %edi
    a73d:	68 40 40 01 00       	push   $0x14040
    a742:	e8 99 5b ff ff       	call   2e0 <write_file>
    a747:	83 c4 10             	add    $0x10,%esp
    a74a:	85 c0                	test   %eax,%eax
    a74c:	0f 85 4e ff ff ff    	jne    a6a0 <test_nested_cgroups+0x430>
    a752:	31 db                	xor    %ebx,%ebx
    a754:	eb 1f                	jmp    a775 <test_nested_cgroups+0x505>
    a756:	8d 76 00             	lea    0x0(%esi),%esi
    a759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    a760:	83 ec 08             	sub    $0x8,%esp
    a763:	83 c3 01             	add    $0x1,%ebx
    a766:	68 18 c8 00 00       	push   $0xc818
    a76b:	6a 01                	push   $0x1
    a76d:	e8 2e 1c 00 00       	call   c3a0 <printf>
    a772:	83 c4 10             	add    $0x10,%esp
    a775:	83 ec 0c             	sub    $0xc,%esp
    a778:	68 d8 17 01 00       	push   $0x117d8
    a77d:	e8 de 16 00 00       	call   be60 <strlen>
    a782:	89 c6                	mov    %eax,%esi
    a784:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a78b:	e8 d0 16 00 00       	call   be60 <strlen>
    a790:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a794:	83 c4 10             	add    $0x10,%esp
    a797:	39 d8                	cmp    %ebx,%eax
    a799:	77 c5                	ja     a760 <test_nested_cgroups+0x4f0>
    a79b:	83 ec 0c             	sub    $0xc,%esp
    a79e:	68 20 06 00 00       	push   $0x620
    a7a3:	68 30 c8 00 00       	push   $0xc830
    a7a8:	ff 75 08             	pushl  0x8(%ebp)
    a7ab:	68 fc 17 01 00       	push   $0x117fc
    a7b0:	6a 01                	push   $0x1
    a7b2:	e8 e9 1b 00 00       	call   c3a0 <printf>
    a7b7:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a7be:	00 00 00 
    a7c1:	83 c4 20             	add    $0x20,%esp
    a7c4:	e9 bb fb ff ff       	jmp    a384 <test_nested_cgroups+0x114>
    a7c9:	31 db                	xor    %ebx,%ebx
    a7cb:	eb 18                	jmp    a7e5 <test_nested_cgroups+0x575>
    a7cd:	8d 76 00             	lea    0x0(%esi),%esi

    //create another nested cgroup (mem controller should be enabled)
    current_nesting_index++;
    strcat(current_nested_cgroup, TESTED_NESTED_CGROUP_CHILD);
    current_nested_cgroup[strlen(current_nested_cgroup)] = current_nesting_index;
    ASSERT_FALSE(mkdir(current_nested_cgroup));
    a7d0:	83 ec 08             	sub    $0x8,%esp
    a7d3:	83 c3 01             	add    $0x1,%ebx
    a7d6:	68 18 c8 00 00       	push   $0xc818
    a7db:	6a 01                	push   $0x1
    a7dd:	e8 be 1b 00 00       	call   c3a0 <printf>
    a7e2:	83 c4 10             	add    $0x10,%esp
    a7e5:	83 ec 0c             	sub    $0xc,%esp
    a7e8:	68 60 d0 00 00       	push   $0xd060
    a7ed:	e8 6e 16 00 00       	call   be60 <strlen>
    a7f2:	89 c6                	mov    %eax,%esi
    a7f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a7fb:	e8 60 16 00 00       	call   be60 <strlen>
    a800:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a804:	83 c4 10             	add    $0x10,%esp
    a807:	39 d8                	cmp    %ebx,%eax
    a809:	77 c5                	ja     a7d0 <test_nested_cgroups+0x560>
    a80b:	83 ec 0c             	sub    $0xc,%esp
    a80e:	68 02 06 00 00       	push   $0x602
    a813:	e9 4b fb ff ff       	jmp    a363 <test_nested_cgroups+0xf3>
    a818:	31 db                	xor    %ebx,%ebx
    a81a:	eb 19                	jmp    a835 <test_nested_cgroups+0x5c5>
    a81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    // Protect portion of memory for the current nested cgroup
    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    strcpy(temp_path_g, current_nested_cgroup);
    strcat(temp_path_g, TEST_NESTED_MEM_MIN);
    printf(1, "temp_path_g nested cgroup min path: %s\n", temp_path_g);
    ASSERT_TRUE(write_file(temp_path_g, min_val));
    a820:	83 ec 08             	sub    $0x8,%esp
    a823:	83 c3 01             	add    $0x1,%ebx
    a826:	68 18 c8 00 00       	push   $0xc818
    a82b:	6a 01                	push   $0x1
    a82d:	e8 6e 1b 00 00       	call   c3a0 <printf>
    a832:	83 c4 10             	add    $0x10,%esp
    a835:	83 ec 0c             	sub    $0xc,%esp
    a838:	68 d8 17 01 00       	push   $0x117d8
    a83d:	e8 1e 16 00 00       	call   be60 <strlen>
    a842:	89 c6                	mov    %eax,%esi
    a844:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a84b:	e8 10 16 00 00       	call   be60 <strlen>
    a850:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a854:	83 c4 10             	add    $0x10,%esp
    a857:	39 d8                	cmp    %ebx,%eax
    a859:	77 c5                	ja     a820 <test_nested_cgroups+0x5b0>
    a85b:	83 ec 0c             	sub    $0xc,%esp
    a85e:	68 fb 05 00 00       	push   $0x5fb
    a863:	e9 3b ff ff ff       	jmp    a7a3 <test_nested_cgroups+0x533>
    a868:	31 db                	xor    %ebx,%ebx
    a86a:	eb 19                	jmp    a885 <test_nested_cgroups+0x615>
    a86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ASSERT_FALSE(mkdir(current_nested_cgroup));

    memset(temp_path_g, 0, MAX_PATH_LENGTH);
    strcpy(temp_path_g, current_nested_cgroup);
    strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    ASSERT_TRUE(write_file(temp_path_g, "+mem"));
    a870:	83 ec 08             	sub    $0x8,%esp
    a873:	83 c3 01             	add    $0x1,%ebx
    a876:	68 18 c8 00 00       	push   $0xc818
    a87b:	6a 01                	push   $0x1
    a87d:	e8 1e 1b 00 00       	call   c3a0 <printf>
    a882:	83 c4 10             	add    $0x10,%esp
    a885:	83 ec 0c             	sub    $0xc,%esp
    a888:	68 44 17 01 00       	push   $0x11744
    a88d:	e8 ce 15 00 00       	call   be60 <strlen>
    a892:	89 c6                	mov    %eax,%esi
    a894:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a89b:	e8 c0 15 00 00       	call   be60 <strlen>
    a8a0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a8a4:	83 c4 10             	add    $0x10,%esp
    a8a7:	39 d8                	cmp    %ebx,%eax
    a8a9:	77 c5                	ja     a870 <test_nested_cgroups+0x600>
    a8ab:	83 ec 0c             	sub    $0xc,%esp
    a8ae:	68 07 06 00 00       	push   $0x607
    a8b3:	e9 83 fd ff ff       	jmp    a63b <test_nested_cgroups+0x3cb>
    a8b8:	31 db                	xor    %ebx,%ebx
    a8ba:	eb 19                	jmp    a8d5 <test_nested_cgroups+0x665>
    a8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    strcpy(temp_path_g, current_nested_cgroup);
    strcat(temp_path_g, TEST_NESTED_SUBTREE_CONTROL);
    write_file(temp_path_g, "-mem");

    //delete nested cgroup
    ASSERT_FALSE(unlink(current_nested_cgroup));
    a8c0:	83 ec 08             	sub    $0x8,%esp
    a8c3:	83 c3 01             	add    $0x1,%ebx
    a8c6:	68 18 c8 00 00       	push   $0xc818
    a8cb:	6a 01                	push   $0x1
    a8cd:	e8 ce 1a 00 00       	call   c3a0 <printf>
    a8d2:	83 c4 10             	add    $0x10,%esp
    a8d5:	83 ec 0c             	sub    $0xc,%esp
    a8d8:	68 95 d0 00 00       	push   $0xd095
    a8dd:	e8 7e 15 00 00       	call   be60 <strlen>
    a8e2:	89 c6                	mov    %eax,%esi
    a8e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a8eb:	e8 70 15 00 00       	call   be60 <strlen>
    a8f0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a8f4:	83 c4 10             	add    $0x10,%esp
    a8f7:	39 d8                	cmp    %ebx,%eax
    a8f9:	77 c5                	ja     a8c0 <test_nested_cgroups+0x650>
    a8fb:	83 ec 0c             	sub    $0xc,%esp
    a8fe:	68 29 06 00 00       	push   $0x629
    a903:	68 30 c8 00 00       	push   $0xc830
    a908:	ff 75 08             	pushl  0x8(%ebp)
    a90b:	68 94 18 01 00       	push   $0x11894
    a910:	6a 01                	push   $0x1
    a912:	e8 89 1a 00 00       	call   c3a0 <printf>
    a917:	c7 05 40 42 01 00 01 	movl   $0x1,0x14240
    a91e:	00 00 00 
    a921:	83 c4 20             	add    $0x20,%esp
    a924:	e9 5b fa ff ff       	jmp    a384 <test_nested_cgroups+0x114>
    a929:	66 90                	xchg   %ax,%ax
    a92b:	66 90                	xchg   %ax,%ax
    a92d:	66 90                	xchg   %ax,%ax
    a92f:	90                   	nop

0000a930 <main>:
  }
}


int main(int argc, char * argv[])
{
    a930:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    a934:	83 e4 f0             	and    $0xfffffff0,%esp
    a937:	ff 71 fc             	pushl  -0x4(%ecx)
    a93a:	55                   	push   %ebp
    a93b:	89 e5                	mov    %esp,%ebp
    a93d:	56                   	push   %esi
    a93e:	53                   	push   %ebx
    a93f:	51                   	push   %ecx
    a940:	83 ec 0c             	sub    $0xc,%esp
    // comment out for debug messages
    set_suppress(1);

    run_test(test_mount_cgroup_fs);
    a943:	8b 35 40 42 01 00    	mov    0x14240,%esi
  return controller_names[controller_type];
}

// Turn on debug messeges or turn them off.
void set_suppress(char _suppress) {
  suppress = _suppress;
    a949:	c6 05 44 42 01 00 01 	movb   $0x1,0x14244
int main(int argc, char * argv[])
{
    // comment out for debug messages
    set_suppress(1);

    run_test(test_mount_cgroup_fs);
    a950:	85 f6                	test   %esi,%esi
    a952:	74 1a                	je     a96e <main+0x3e>
    run_test(test_deleting_cgroups);
    run_test(test_umount_cgroup_fs);
    run_test_break_msg(test_kernel_freem_mem);

    if (failed) {
        printf(1, "[    CGROUPTESTS FAILED    ]\n");
    a954:	51                   	push   %ecx
    a955:	51                   	push   %ecx
    a956:	68 f8 d2 00 00       	push   $0xd2f8
    a95b:	6a 01                	push   $0x1
    a95d:	e8 3e 1a 00 00       	call   c3a0 <printf>
        exit(1);
    a962:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    a969:	e8 7a 18 00 00       	call   c1e8 <exit>
int main(int argc, char * argv[])
{
    // comment out for debug messages
    set_suppress(1);

    run_test(test_mount_cgroup_fs);
    a96e:	53                   	push   %ebx
    a96f:	68 b3 d0 00 00       	push   $0xd0b3
    a974:	68 c8 d0 00 00       	push   $0xd0c8
    a979:	6a 01                	push   $0x1
    a97b:	e8 20 1a 00 00       	call   c3a0 <printf>
    a980:	c7 04 24 b3 d0 00 00 	movl   $0xd0b3,(%esp)
    a987:	e8 14 60 ff ff       	call   9a0 <test_mount_cgroup_fs>
    a98c:	83 c4 10             	add    $0x10,%esp
    a98f:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    a996:	0f 85 12 01 00 00    	jne    aaae <main+0x17e>
    a99c:	31 db                	xor    %ebx,%ebx
    a99e:	eb 15                	jmp    a9b5 <main+0x85>
    a9a0:	83 ec 08             	sub    $0x8,%esp
    a9a3:	83 c3 01             	add    $0x1,%ebx
    a9a6:	68 18 c8 00 00       	push   $0xc818
    a9ab:	6a 01                	push   $0x1
    a9ad:	e8 ee 19 00 00       	call   c3a0 <printf>
    a9b2:	83 c4 10             	add    $0x10,%esp
    a9b5:	83 ec 0c             	sub    $0xc,%esp
    a9b8:	68 b3 d0 00 00       	push   $0xd0b3
    a9bd:	e8 9e 14 00 00       	call   be60 <strlen>
    a9c2:	89 c6                	mov    %eax,%esi
    a9c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    a9cb:	e8 90 14 00 00       	call   be60 <strlen>
    a9d0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    a9d4:	83 c4 10             	add    $0x10,%esp
    a9d7:	39 d8                	cmp    %ebx,%eax
    a9d9:	77 c5                	ja     a9a0 <main+0x70>
    a9db:	51                   	push   %ecx
    a9dc:	68 b3 d0 00 00       	push   $0xd0b3
    a9e1:	68 d5 d0 00 00       	push   $0xd0d5
    a9e6:	6a 01                	push   $0x1
    a9e8:	e8 b3 19 00 00       	call   c3a0 <printf>
    run_test(test_creating_cgroups);
    a9ed:	83 c4 10             	add    $0x10,%esp
    a9f0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    a9f7:	0f 85 57 ff ff ff    	jne    a954 <main+0x24>
    a9fd:	52                   	push   %edx
    a9fe:	68 e3 d0 00 00       	push   $0xd0e3
    aa03:	68 c8 d0 00 00       	push   $0xd0c8
    aa08:	6a 01                	push   $0x1
    aa0a:	e8 91 19 00 00       	call   c3a0 <printf>
    aa0f:	c7 04 24 e3 d0 00 00 	movl   $0xd0e3,(%esp)
    aa16:	e8 c5 61 ff ff       	call   be0 <test_creating_cgroups>
    aa1b:	83 c4 10             	add    $0x10,%esp
    aa1e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    aa25:	0f 85 13 01 00 00    	jne    ab3e <main+0x20e>
    aa2b:	31 db                	xor    %ebx,%ebx
    aa2d:	eb 16                	jmp    aa45 <main+0x115>
    aa2f:	90                   	nop
    aa30:	83 ec 08             	sub    $0x8,%esp
    aa33:	83 c3 01             	add    $0x1,%ebx
    aa36:	68 18 c8 00 00       	push   $0xc818
    aa3b:	6a 01                	push   $0x1
    aa3d:	e8 5e 19 00 00       	call   c3a0 <printf>
    aa42:	83 c4 10             	add    $0x10,%esp
    aa45:	83 ec 0c             	sub    $0xc,%esp
    aa48:	68 e3 d0 00 00       	push   $0xd0e3
    aa4d:	e8 0e 14 00 00       	call   be60 <strlen>
    aa52:	89 c6                	mov    %eax,%esi
    aa54:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    aa5b:	e8 00 14 00 00       	call   be60 <strlen>
    aa60:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    aa64:	83 c4 10             	add    $0x10,%esp
    aa67:	39 d8                	cmp    %ebx,%eax
    aa69:	77 c5                	ja     aa30 <main+0x100>
    aa6b:	50                   	push   %eax
    aa6c:	68 e3 d0 00 00       	push   $0xd0e3
    aa71:	68 d5 d0 00 00       	push   $0xd0d5
    aa76:	6a 01                	push   $0x1
    aa78:	e8 23 19 00 00       	call   c3a0 <printf>
    run_test(test_opening_and_closing_cgroup_files);
    aa7d:	83 c4 10             	add    $0x10,%esp
    aa80:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    aa87:	0f 85 c7 fe ff ff    	jne    a954 <main+0x24>
    aa8d:	50                   	push   %eax
    aa8e:	68 dc 18 01 00       	push   $0x118dc
    aa93:	68 c8 d0 00 00       	push   $0xd0c8
    aa98:	6a 01                	push   $0x1
    aa9a:	e8 01 19 00 00       	call   c3a0 <printf>
    aa9f:	c7 04 24 dc 18 01 00 	movl   $0x118dc,(%esp)
    aaa6:	e8 b5 65 ff ff       	call   1060 <test_opening_and_closing_cgroup_files>
    aaab:	83 c4 10             	add    $0x10,%esp
    aaae:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    aab5:	0f 85 d3 00 00 00    	jne    ab8e <main+0x25e>
    aabb:	31 db                	xor    %ebx,%ebx
    aabd:	eb 16                	jmp    aad5 <main+0x1a5>
    aabf:	90                   	nop
    aac0:	83 ec 08             	sub    $0x8,%esp
    aac3:	83 c3 01             	add    $0x1,%ebx
    aac6:	68 18 c8 00 00       	push   $0xc818
    aacb:	6a 01                	push   $0x1
    aacd:	e8 ce 18 00 00       	call   c3a0 <printf>
    aad2:	83 c4 10             	add    $0x10,%esp
    aad5:	83 ec 0c             	sub    $0xc,%esp
    aad8:	68 dc 18 01 00       	push   $0x118dc
    aadd:	e8 7e 13 00 00       	call   be60 <strlen>
    aae2:	89 c6                	mov    %eax,%esi
    aae4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    aaeb:	e8 70 13 00 00       	call   be60 <strlen>
    aaf0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    aaf4:	83 c4 10             	add    $0x10,%esp
    aaf7:	39 d8                	cmp    %ebx,%eax
    aaf9:	77 c5                	ja     aac0 <main+0x190>
    aafb:	50                   	push   %eax
    aafc:	68 dc 18 01 00       	push   $0x118dc
    ab01:	68 d5 d0 00 00       	push   $0xd0d5
    ab06:	6a 01                	push   $0x1
    ab08:	e8 93 18 00 00       	call   c3a0 <printf>
    run_test_break_msg(test_reading_cgroup_files);
    ab0d:	83 c4 10             	add    $0x10,%esp
    ab10:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ab17:	0f 85 37 fe ff ff    	jne    a954 <main+0x24>
    ab1d:	50                   	push   %eax
    ab1e:	68 f9 d0 00 00       	push   $0xd0f9
    ab23:	68 13 d1 00 00       	push   $0xd113
    ab28:	6a 01                	push   $0x1
    ab2a:	e8 71 18 00 00       	call   c3a0 <printf>
    ab2f:	c7 04 24 f9 d0 00 00 	movl   $0xd0f9,(%esp)
    ab36:	e8 55 6e ff ff       	call   1990 <test_reading_cgroup_files>
    ab3b:	83 c4 10             	add    $0x10,%esp
    ab3e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ab45:	0f 85 d3 00 00 00    	jne    ac1e <main+0x2ee>
    ab4b:	50                   	push   %eax
    ab4c:	68 f9 d0 00 00       	push   $0xd0f9
    ab51:	68 21 d1 00 00       	push   $0xd121
    ab56:	6a 01                	push   $0x1
    ab58:	e8 43 18 00 00       	call   c3a0 <printf>
    run_test(test_memory_stat_content_valid);
    ab5d:	83 c4 10             	add    $0x10,%esp
    ab60:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ab67:	0f 85 e7 fd ff ff    	jne    a954 <main+0x24>
    ab6d:	50                   	push   %eax
    ab6e:	68 04 19 01 00       	push   $0x11904
    ab73:	68 c8 d0 00 00       	push   $0xd0c8
    ab78:	6a 01                	push   $0x1
    ab7a:	e8 21 18 00 00       	call   c3a0 <printf>
    ab7f:	c7 04 24 04 19 01 00 	movl   $0x11904,(%esp)
    ab86:	e8 c5 e4 ff ff       	call   9050 <test_memory_stat_content_valid>
    ab8b:	83 c4 10             	add    $0x10,%esp
    ab8e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ab95:	0f 85 13 01 00 00    	jne    acae <main+0x37e>
    ab9b:	31 db                	xor    %ebx,%ebx
    ab9d:	eb 16                	jmp    abb5 <main+0x285>
    ab9f:	90                   	nop
    aba0:	83 ec 08             	sub    $0x8,%esp
    aba3:	83 c3 01             	add    $0x1,%ebx
    aba6:	68 18 c8 00 00       	push   $0xc818
    abab:	6a 01                	push   $0x1
    abad:	e8 ee 17 00 00       	call   c3a0 <printf>
    abb2:	83 c4 10             	add    $0x10,%esp
    abb5:	83 ec 0c             	sub    $0xc,%esp
    abb8:	68 04 19 01 00       	push   $0x11904
    abbd:	e8 9e 12 00 00       	call   be60 <strlen>
    abc2:	89 c6                	mov    %eax,%esi
    abc4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    abcb:	e8 90 12 00 00       	call   be60 <strlen>
    abd0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    abd4:	83 c4 10             	add    $0x10,%esp
    abd7:	39 d8                	cmp    %ebx,%eax
    abd9:	77 c5                	ja     aba0 <main+0x270>
    abdb:	56                   	push   %esi
    abdc:	68 04 19 01 00       	push   $0x11904
    abe1:	68 d5 d0 00 00       	push   $0xd0d5
    abe6:	6a 01                	push   $0x1
    abe8:	e8 b3 17 00 00       	call   c3a0 <printf>
    run_test(test_cpu_stat_content_valid);
    abed:	83 c4 10             	add    $0x10,%esp
    abf0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    abf7:	0f 85 57 fd ff ff    	jne    a954 <main+0x24>
    abfd:	53                   	push   %ebx
    abfe:	68 2c d1 00 00       	push   $0xd12c
    ac03:	68 c8 d0 00 00       	push   $0xd0c8
    ac08:	6a 01                	push   $0x1
    ac0a:	e8 91 17 00 00       	call   c3a0 <printf>
    ac0f:	c7 04 24 2c d1 00 00 	movl   $0xd12c,(%esp)
    ac16:	e8 b5 e5 ff ff       	call   91d0 <test_cpu_stat_content_valid>
    ac1b:	83 c4 10             	add    $0x10,%esp
    ac1e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ac25:	0f 85 13 01 00 00    	jne    ad3e <main+0x40e>
    ac2b:	31 db                	xor    %ebx,%ebx
    ac2d:	eb 16                	jmp    ac45 <main+0x315>
    ac2f:	90                   	nop
    ac30:	83 ec 08             	sub    $0x8,%esp
    ac33:	83 c3 01             	add    $0x1,%ebx
    ac36:	68 18 c8 00 00       	push   $0xc818
    ac3b:	6a 01                	push   $0x1
    ac3d:	e8 5e 17 00 00       	call   c3a0 <printf>
    ac42:	83 c4 10             	add    $0x10,%esp
    ac45:	83 ec 0c             	sub    $0xc,%esp
    ac48:	68 2c d1 00 00       	push   $0xd12c
    ac4d:	e8 0e 12 00 00       	call   be60 <strlen>
    ac52:	89 c6                	mov    %eax,%esi
    ac54:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    ac5b:	e8 00 12 00 00       	call   be60 <strlen>
    ac60:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    ac64:	83 c4 10             	add    $0x10,%esp
    ac67:	39 d8                	cmp    %ebx,%eax
    ac69:	77 c5                	ja     ac30 <main+0x300>
    ac6b:	51                   	push   %ecx
    ac6c:	68 2c d1 00 00       	push   $0xd12c
    ac71:	68 d5 d0 00 00       	push   $0xd0d5
    ac76:	6a 01                	push   $0x1
    ac78:	e8 23 17 00 00       	call   c3a0 <printf>
    run_test(test_moving_process);
    ac7d:	83 c4 10             	add    $0x10,%esp
    ac80:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ac87:	0f 85 c7 fc ff ff    	jne    a954 <main+0x24>
    ac8d:	52                   	push   %edx
    ac8e:	68 48 d1 00 00       	push   $0xd148
    ac93:	68 c8 d0 00 00       	push   $0xd0c8
    ac98:	6a 01                	push   $0x1
    ac9a:	e8 01 17 00 00       	call   c3a0 <printf>
    ac9f:	c7 04 24 48 d1 00 00 	movl   $0xd148,(%esp)
    aca6:	e8 65 88 ff ff       	call   3510 <test_moving_process>
    acab:	83 c4 10             	add    $0x10,%esp
    acae:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    acb5:	0f 85 13 01 00 00    	jne    adce <main+0x49e>
    acbb:	31 db                	xor    %ebx,%ebx
    acbd:	eb 16                	jmp    acd5 <main+0x3a5>
    acbf:	90                   	nop
    acc0:	83 ec 08             	sub    $0x8,%esp
    acc3:	83 c3 01             	add    $0x1,%ebx
    acc6:	68 18 c8 00 00       	push   $0xc818
    accb:	6a 01                	push   $0x1
    accd:	e8 ce 16 00 00       	call   c3a0 <printf>
    acd2:	83 c4 10             	add    $0x10,%esp
    acd5:	83 ec 0c             	sub    $0xc,%esp
    acd8:	68 48 d1 00 00       	push   $0xd148
    acdd:	e8 7e 11 00 00       	call   be60 <strlen>
    ace2:	89 c6                	mov    %eax,%esi
    ace4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    aceb:	e8 70 11 00 00       	call   be60 <strlen>
    acf0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    acf4:	83 c4 10             	add    $0x10,%esp
    acf7:	39 d8                	cmp    %ebx,%eax
    acf9:	77 c5                	ja     acc0 <main+0x390>
    acfb:	50                   	push   %eax
    acfc:	68 48 d1 00 00       	push   $0xd148
    ad01:	68 d5 d0 00 00       	push   $0xd0d5
    ad06:	6a 01                	push   $0x1
    ad08:	e8 93 16 00 00       	call   c3a0 <printf>
    run_test(test_enable_and_disable_all_controllers);
    ad0d:	83 c4 10             	add    $0x10,%esp
    ad10:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ad17:	0f 85 37 fc ff ff    	jne    a954 <main+0x24>
    ad1d:	50                   	push   %eax
    ad1e:	68 24 19 01 00       	push   $0x11924
    ad23:	68 c8 d0 00 00       	push   $0xd0c8
    ad28:	6a 01                	push   $0x1
    ad2a:	e8 71 16 00 00       	call   c3a0 <printf>
    ad2f:	c7 04 24 24 19 01 00 	movl   $0x11924,(%esp)
    ad36:	e8 a5 76 ff ff       	call   23e0 <test_enable_and_disable_all_controllers>
    ad3b:	83 c4 10             	add    $0x10,%esp
    ad3e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ad45:	0f 85 13 01 00 00    	jne    ae5e <main+0x52e>
    ad4b:	31 db                	xor    %ebx,%ebx
    ad4d:	eb 16                	jmp    ad65 <main+0x435>
    ad4f:	90                   	nop
    ad50:	83 ec 08             	sub    $0x8,%esp
    ad53:	83 c3 01             	add    $0x1,%ebx
    ad56:	68 18 c8 00 00       	push   $0xc818
    ad5b:	6a 01                	push   $0x1
    ad5d:	e8 3e 16 00 00       	call   c3a0 <printf>
    ad62:	83 c4 10             	add    $0x10,%esp
    ad65:	83 ec 0c             	sub    $0xc,%esp
    ad68:	68 24 19 01 00       	push   $0x11924
    ad6d:	e8 ee 10 00 00       	call   be60 <strlen>
    ad72:	89 c6                	mov    %eax,%esi
    ad74:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    ad7b:	e8 e0 10 00 00       	call   be60 <strlen>
    ad80:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    ad84:	83 c4 10             	add    $0x10,%esp
    ad87:	39 d8                	cmp    %ebx,%eax
    ad89:	77 c5                	ja     ad50 <main+0x420>
    ad8b:	50                   	push   %eax
    ad8c:	68 24 19 01 00       	push   $0x11924
    ad91:	68 d5 d0 00 00       	push   $0xd0d5
    ad96:	6a 01                	push   $0x1
    ad98:	e8 03 16 00 00       	call   c3a0 <printf>
    run_test(test_limiting_pids);
    ad9d:	83 c4 10             	add    $0x10,%esp
    ada0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ada7:	0f 85 a7 fb ff ff    	jne    a954 <main+0x24>
    adad:	50                   	push   %eax
    adae:	68 5c d1 00 00       	push   $0xd15c
    adb3:	68 c8 d0 00 00       	push   $0xd0c8
    adb8:	6a 01                	push   $0x1
    adba:	e8 e1 15 00 00       	call   c3a0 <printf>
    adbf:	c7 04 24 5c d1 00 00 	movl   $0xd15c,(%esp)
    adc6:	e8 25 7a ff ff       	call   27f0 <test_limiting_pids>
    adcb:	83 c4 10             	add    $0x10,%esp
    adce:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    add5:	0f 85 13 01 00 00    	jne    aeee <main+0x5be>
    addb:	31 db                	xor    %ebx,%ebx
    addd:	eb 16                	jmp    adf5 <main+0x4c5>
    addf:	90                   	nop
    ade0:	83 ec 08             	sub    $0x8,%esp
    ade3:	83 c3 01             	add    $0x1,%ebx
    ade6:	68 18 c8 00 00       	push   $0xc818
    adeb:	6a 01                	push   $0x1
    aded:	e8 ae 15 00 00       	call   c3a0 <printf>
    adf2:	83 c4 10             	add    $0x10,%esp
    adf5:	83 ec 0c             	sub    $0xc,%esp
    adf8:	68 5c d1 00 00       	push   $0xd15c
    adfd:	e8 5e 10 00 00       	call   be60 <strlen>
    ae02:	89 c6                	mov    %eax,%esi
    ae04:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    ae0b:	e8 50 10 00 00       	call   be60 <strlen>
    ae10:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    ae14:	83 c4 10             	add    $0x10,%esp
    ae17:	39 d8                	cmp    %ebx,%eax
    ae19:	77 c5                	ja     ade0 <main+0x4b0>
    ae1b:	50                   	push   %eax
    ae1c:	68 5c d1 00 00       	push   $0xd15c
    ae21:	68 d5 d0 00 00       	push   $0xd0d5
    ae26:	6a 01                	push   $0x1
    ae28:	e8 73 15 00 00       	call   c3a0 <printf>
    run_test(test_move_failure);
    ae2d:	83 c4 10             	add    $0x10,%esp
    ae30:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ae37:	0f 85 17 fb ff ff    	jne    a954 <main+0x24>
    ae3d:	50                   	push   %eax
    ae3e:	68 6f d1 00 00       	push   $0xd16f
    ae43:	68 c8 d0 00 00       	push   $0xd0c8
    ae48:	6a 01                	push   $0x1
    ae4a:	e8 51 15 00 00       	call   c3a0 <printf>
    ae4f:	c7 04 24 6f d1 00 00 	movl   $0xd16f,(%esp)
    ae56:	e8 85 7c ff ff       	call   2ae0 <test_move_failure>
    ae5b:	83 c4 10             	add    $0x10,%esp
    ae5e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ae65:	0f 85 13 01 00 00    	jne    af7e <main+0x64e>
    ae6b:	31 db                	xor    %ebx,%ebx
    ae6d:	eb 16                	jmp    ae85 <main+0x555>
    ae6f:	90                   	nop
    ae70:	83 ec 08             	sub    $0x8,%esp
    ae73:	83 c3 01             	add    $0x1,%ebx
    ae76:	68 18 c8 00 00       	push   $0xc818
    ae7b:	6a 01                	push   $0x1
    ae7d:	e8 1e 15 00 00       	call   c3a0 <printf>
    ae82:	83 c4 10             	add    $0x10,%esp
    ae85:	83 ec 0c             	sub    $0xc,%esp
    ae88:	68 6f d1 00 00       	push   $0xd16f
    ae8d:	e8 ce 0f 00 00       	call   be60 <strlen>
    ae92:	89 c6                	mov    %eax,%esi
    ae94:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    ae9b:	e8 c0 0f 00 00       	call   be60 <strlen>
    aea0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    aea4:	83 c4 10             	add    $0x10,%esp
    aea7:	39 d8                	cmp    %ebx,%eax
    aea9:	77 c5                	ja     ae70 <main+0x540>
    aeab:	56                   	push   %esi
    aeac:	68 6f d1 00 00       	push   $0xd16f
    aeb1:	68 d5 d0 00 00       	push   $0xd0d5
    aeb6:	6a 01                	push   $0x1
    aeb8:	e8 e3 14 00 00       	call   c3a0 <printf>
    run_test(test_fork_failure);
    aebd:	83 c4 10             	add    $0x10,%esp
    aec0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    aec7:	0f 85 87 fa ff ff    	jne    a954 <main+0x24>
    aecd:	53                   	push   %ebx
    aece:	68 81 d1 00 00       	push   $0xd181
    aed3:	68 c8 d0 00 00       	push   $0xd0c8
    aed8:	6a 01                	push   $0x1
    aeda:	e8 c1 14 00 00       	call   c3a0 <printf>
    aedf:	c7 04 24 81 d1 00 00 	movl   $0xd181,(%esp)
    aee6:	e8 35 7f ff ff       	call   2e20 <test_fork_failure>
    aeeb:	83 c4 10             	add    $0x10,%esp
    aeee:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    aef5:	0f 85 13 01 00 00    	jne    b00e <main+0x6de>
    aefb:	31 db                	xor    %ebx,%ebx
    aefd:	eb 16                	jmp    af15 <main+0x5e5>
    aeff:	90                   	nop
    af00:	83 ec 08             	sub    $0x8,%esp
    af03:	83 c3 01             	add    $0x1,%ebx
    af06:	68 18 c8 00 00       	push   $0xc818
    af0b:	6a 01                	push   $0x1
    af0d:	e8 8e 14 00 00       	call   c3a0 <printf>
    af12:	83 c4 10             	add    $0x10,%esp
    af15:	83 ec 0c             	sub    $0xc,%esp
    af18:	68 81 d1 00 00       	push   $0xd181
    af1d:	e8 3e 0f 00 00       	call   be60 <strlen>
    af22:	89 c6                	mov    %eax,%esi
    af24:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    af2b:	e8 30 0f 00 00       	call   be60 <strlen>
    af30:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    af34:	83 c4 10             	add    $0x10,%esp
    af37:	39 d8                	cmp    %ebx,%eax
    af39:	77 c5                	ja     af00 <main+0x5d0>
    af3b:	51                   	push   %ecx
    af3c:	68 81 d1 00 00       	push   $0xd181
    af41:	68 d5 d0 00 00       	push   $0xd0d5
    af46:	6a 01                	push   $0x1
    af48:	e8 53 14 00 00       	call   c3a0 <printf>
    run_test(test_cpu_stat);
    af4d:	83 c4 10             	add    $0x10,%esp
    af50:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    af57:	0f 85 f7 f9 ff ff    	jne    a954 <main+0x24>
    af5d:	52                   	push   %edx
    af5e:	68 93 d1 00 00       	push   $0xd193
    af63:	68 c8 d0 00 00       	push   $0xd0c8
    af68:	6a 01                	push   $0x1
    af6a:	e8 31 14 00 00       	call   c3a0 <printf>
    af6f:	c7 04 24 93 d1 00 00 	movl   $0xd193,(%esp)
    af76:	e8 55 e3 ff ff       	call   92d0 <test_cpu_stat>
    af7b:	83 c4 10             	add    $0x10,%esp
    af7e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    af85:	0f 85 13 01 00 00    	jne    b09e <main+0x76e>
    af8b:	31 db                	xor    %ebx,%ebx
    af8d:	eb 16                	jmp    afa5 <main+0x675>
    af8f:	90                   	nop
    af90:	83 ec 08             	sub    $0x8,%esp
    af93:	83 c3 01             	add    $0x1,%ebx
    af96:	68 18 c8 00 00       	push   $0xc818
    af9b:	6a 01                	push   $0x1
    af9d:	e8 fe 13 00 00       	call   c3a0 <printf>
    afa2:	83 c4 10             	add    $0x10,%esp
    afa5:	83 ec 0c             	sub    $0xc,%esp
    afa8:	68 93 d1 00 00       	push   $0xd193
    afad:	e8 ae 0e 00 00       	call   be60 <strlen>
    afb2:	89 c6                	mov    %eax,%esi
    afb4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    afbb:	e8 a0 0e 00 00       	call   be60 <strlen>
    afc0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    afc4:	83 c4 10             	add    $0x10,%esp
    afc7:	39 d8                	cmp    %ebx,%eax
    afc9:	77 c5                	ja     af90 <main+0x660>
    afcb:	50                   	push   %eax
    afcc:	68 93 d1 00 00       	push   $0xd193
    afd1:	68 d5 d0 00 00       	push   $0xd0d5
    afd6:	6a 01                	push   $0x1
    afd8:	e8 c3 13 00 00       	call   c3a0 <printf>
    run_test(test_pid_current);
    afdd:	83 c4 10             	add    $0x10,%esp
    afe0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    afe7:	0f 85 67 f9 ff ff    	jne    a954 <main+0x24>
    afed:	50                   	push   %eax
    afee:	68 a1 d1 00 00       	push   $0xd1a1
    aff3:	68 c8 d0 00 00       	push   $0xd0c8
    aff8:	6a 01                	push   $0x1
    affa:	e8 a1 13 00 00       	call   c3a0 <printf>
    afff:	c7 04 24 a1 d1 00 00 	movl   $0xd1a1,(%esp)
    b006:	e8 15 82 ff ff       	call   3220 <test_pid_current>
    b00b:	83 c4 10             	add    $0x10,%esp
    b00e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b015:	0f 85 13 01 00 00    	jne    b12e <main+0x7fe>
    b01b:	31 db                	xor    %ebx,%ebx
    b01d:	eb 16                	jmp    b035 <main+0x705>
    b01f:	90                   	nop
    b020:	83 ec 08             	sub    $0x8,%esp
    b023:	83 c3 01             	add    $0x1,%ebx
    b026:	68 18 c8 00 00       	push   $0xc818
    b02b:	6a 01                	push   $0x1
    b02d:	e8 6e 13 00 00       	call   c3a0 <printf>
    b032:	83 c4 10             	add    $0x10,%esp
    b035:	83 ec 0c             	sub    $0xc,%esp
    b038:	68 a1 d1 00 00       	push   $0xd1a1
    b03d:	e8 1e 0e 00 00       	call   be60 <strlen>
    b042:	89 c6                	mov    %eax,%esi
    b044:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b04b:	e8 10 0e 00 00       	call   be60 <strlen>
    b050:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b054:	83 c4 10             	add    $0x10,%esp
    b057:	39 d8                	cmp    %ebx,%eax
    b059:	77 c5                	ja     b020 <main+0x6f0>
    b05b:	50                   	push   %eax
    b05c:	68 a1 d1 00 00       	push   $0xd1a1
    b061:	68 d5 d0 00 00       	push   $0xd0d5
    b066:	6a 01                	push   $0x1
    b068:	e8 33 13 00 00       	call   c3a0 <printf>
    run_test(test_setting_cpu_id);
    b06d:	83 c4 10             	add    $0x10,%esp
    b070:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b077:	0f 85 d7 f8 ff ff    	jne    a954 <main+0x24>
    b07d:	50                   	push   %eax
    b07e:	68 b2 d1 00 00       	push   $0xd1b2
    b083:	68 c8 d0 00 00       	push   $0xd0c8
    b088:	6a 01                	push   $0x1
    b08a:	e8 11 13 00 00       	call   c3a0 <printf>
    b08f:	c7 04 24 b2 d1 00 00 	movl   $0xd1b2,(%esp)
    b096:	e8 f5 8b ff ff       	call   3c90 <test_setting_cpu_id>
    b09b:	83 c4 10             	add    $0x10,%esp
    b09e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b0a5:	0f 85 13 01 00 00    	jne    b1be <main+0x88e>
    b0ab:	31 db                	xor    %ebx,%ebx
    b0ad:	eb 16                	jmp    b0c5 <main+0x795>
    b0af:	90                   	nop
    b0b0:	83 ec 08             	sub    $0x8,%esp
    b0b3:	83 c3 01             	add    $0x1,%ebx
    b0b6:	68 18 c8 00 00       	push   $0xc818
    b0bb:	6a 01                	push   $0x1
    b0bd:	e8 de 12 00 00       	call   c3a0 <printf>
    b0c2:	83 c4 10             	add    $0x10,%esp
    b0c5:	83 ec 0c             	sub    $0xc,%esp
    b0c8:	68 b2 d1 00 00       	push   $0xd1b2
    b0cd:	e8 8e 0d 00 00       	call   be60 <strlen>
    b0d2:	89 c6                	mov    %eax,%esi
    b0d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b0db:	e8 80 0d 00 00       	call   be60 <strlen>
    b0e0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b0e4:	83 c4 10             	add    $0x10,%esp
    b0e7:	39 d8                	cmp    %ebx,%eax
    b0e9:	77 c5                	ja     b0b0 <main+0x780>
    b0eb:	50                   	push   %eax
    b0ec:	68 b2 d1 00 00       	push   $0xd1b2
    b0f1:	68 d5 d0 00 00       	push   $0xd0d5
    b0f6:	6a 01                	push   $0x1
    b0f8:	e8 a3 12 00 00       	call   c3a0 <printf>
    run_test(test_correct_cpu_running);
    b0fd:	83 c4 10             	add    $0x10,%esp
    b100:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b107:	0f 85 47 f8 ff ff    	jne    a954 <main+0x24>
    b10d:	50                   	push   %eax
    b10e:	68 c6 d1 00 00       	push   $0xd1c6
    b113:	68 c8 d0 00 00       	push   $0xd0c8
    b118:	6a 01                	push   $0x1
    b11a:	e8 81 12 00 00       	call   c3a0 <printf>
    b11f:	c7 04 24 c6 d1 00 00 	movl   $0xd1c6,(%esp)
    b126:	e8 c5 8e ff ff       	call   3ff0 <test_correct_cpu_running>
    b12b:	83 c4 10             	add    $0x10,%esp
    b12e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b135:	0f 85 13 01 00 00    	jne    b24e <main+0x91e>
    b13b:	31 db                	xor    %ebx,%ebx
    b13d:	eb 16                	jmp    b155 <main+0x825>
    b13f:	90                   	nop
    b140:	83 ec 08             	sub    $0x8,%esp
    b143:	83 c3 01             	add    $0x1,%ebx
    b146:	68 18 c8 00 00       	push   $0xc818
    b14b:	6a 01                	push   $0x1
    b14d:	e8 4e 12 00 00       	call   c3a0 <printf>
    b152:	83 c4 10             	add    $0x10,%esp
    b155:	83 ec 0c             	sub    $0xc,%esp
    b158:	68 c6 d1 00 00       	push   $0xd1c6
    b15d:	e8 fe 0c 00 00       	call   be60 <strlen>
    b162:	89 c6                	mov    %eax,%esi
    b164:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b16b:	e8 f0 0c 00 00       	call   be60 <strlen>
    b170:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b174:	83 c4 10             	add    $0x10,%esp
    b177:	39 d8                	cmp    %ebx,%eax
    b179:	77 c5                	ja     b140 <main+0x810>
    b17b:	56                   	push   %esi
    b17c:	68 c6 d1 00 00       	push   $0xd1c6
    b181:	68 d5 d0 00 00       	push   $0xd0d5
    b186:	6a 01                	push   $0x1
    b188:	e8 13 12 00 00       	call   c3a0 <printf>
    run_test(test_no_run);
    b18d:	83 c4 10             	add    $0x10,%esp
    b190:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b197:	0f 85 b7 f7 ff ff    	jne    a954 <main+0x24>
    b19d:	53                   	push   %ebx
    b19e:	68 df d1 00 00       	push   $0xd1df
    b1a3:	68 c8 d0 00 00       	push   $0xd0c8
    b1a8:	6a 01                	push   $0x1
    b1aa:	e8 f1 11 00 00       	call   c3a0 <printf>
    b1af:	c7 04 24 df d1 00 00 	movl   $0xd1df,(%esp)
    b1b6:	e8 f5 93 ff ff       	call   45b0 <test_no_run>
    b1bb:	83 c4 10             	add    $0x10,%esp
    b1be:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b1c5:	0f 85 13 01 00 00    	jne    b2de <main+0x9ae>
    b1cb:	31 db                	xor    %ebx,%ebx
    b1cd:	eb 16                	jmp    b1e5 <main+0x8b5>
    b1cf:	90                   	nop
    b1d0:	83 ec 08             	sub    $0x8,%esp
    b1d3:	83 c3 01             	add    $0x1,%ebx
    b1d6:	68 18 c8 00 00       	push   $0xc818
    b1db:	6a 01                	push   $0x1
    b1dd:	e8 be 11 00 00       	call   c3a0 <printf>
    b1e2:	83 c4 10             	add    $0x10,%esp
    b1e5:	83 ec 0c             	sub    $0xc,%esp
    b1e8:	68 df d1 00 00       	push   $0xd1df
    b1ed:	e8 6e 0c 00 00       	call   be60 <strlen>
    b1f2:	89 c6                	mov    %eax,%esi
    b1f4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b1fb:	e8 60 0c 00 00       	call   be60 <strlen>
    b200:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b204:	83 c4 10             	add    $0x10,%esp
    b207:	39 d8                	cmp    %ebx,%eax
    b209:	77 c5                	ja     b1d0 <main+0x8a0>
    b20b:	51                   	push   %ecx
    b20c:	68 df d1 00 00       	push   $0xd1df
    b211:	68 d5 d0 00 00       	push   $0xd0d5
    b216:	6a 01                	push   $0x1
    b218:	e8 83 11 00 00       	call   c3a0 <printf>
    run_test(test_mem_stat);
    b21d:	83 c4 10             	add    $0x10,%esp
    b220:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b227:	0f 85 27 f7 ff ff    	jne    a954 <main+0x24>
    b22d:	52                   	push   %edx
    b22e:	68 eb d1 00 00       	push   $0xd1eb
    b233:	68 c8 d0 00 00       	push   $0xd0c8
    b238:	6a 01                	push   $0x1
    b23a:	e8 61 11 00 00       	call   c3a0 <printf>
    b23f:	c7 04 24 eb d1 00 00 	movl   $0xd1eb,(%esp)
    b246:	e8 65 e6 ff ff       	call   98b0 <test_mem_stat>
    b24b:	83 c4 10             	add    $0x10,%esp
    b24e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b255:	0f 85 13 01 00 00    	jne    b36e <main+0xa3e>
    b25b:	31 db                	xor    %ebx,%ebx
    b25d:	eb 16                	jmp    b275 <main+0x945>
    b25f:	90                   	nop
    b260:	83 ec 08             	sub    $0x8,%esp
    b263:	83 c3 01             	add    $0x1,%ebx
    b266:	68 18 c8 00 00       	push   $0xc818
    b26b:	6a 01                	push   $0x1
    b26d:	e8 2e 11 00 00       	call   c3a0 <printf>
    b272:	83 c4 10             	add    $0x10,%esp
    b275:	83 ec 0c             	sub    $0xc,%esp
    b278:	68 eb d1 00 00       	push   $0xd1eb
    b27d:	e8 de 0b 00 00       	call   be60 <strlen>
    b282:	89 c6                	mov    %eax,%esi
    b284:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b28b:	e8 d0 0b 00 00       	call   be60 <strlen>
    b290:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b294:	83 c4 10             	add    $0x10,%esp
    b297:	39 d8                	cmp    %ebx,%eax
    b299:	77 c5                	ja     b260 <main+0x930>
    b29b:	50                   	push   %eax
    b29c:	68 eb d1 00 00       	push   $0xd1eb
    b2a1:	68 d5 d0 00 00       	push   $0xd0d5
    b2a6:	6a 01                	push   $0x1
    b2a8:	e8 f3 10 00 00       	call   c3a0 <printf>
    run_test(test_setting_freeze);
    b2ad:	83 c4 10             	add    $0x10,%esp
    b2b0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b2b7:	0f 85 97 f6 ff ff    	jne    a954 <main+0x24>
    b2bd:	50                   	push   %eax
    b2be:	68 f9 d1 00 00       	push   $0xd1f9
    b2c3:	68 c8 d0 00 00       	push   $0xd0c8
    b2c8:	6a 01                	push   $0x1
    b2ca:	e8 d1 10 00 00       	call   c3a0 <printf>
    b2cf:	c7 04 24 f9 d1 00 00 	movl   $0xd1f9,(%esp)
    b2d6:	e8 e5 98 ff ff       	call   4bc0 <test_setting_freeze>
    b2db:	83 c4 10             	add    $0x10,%esp
    b2de:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b2e5:	0f 85 13 01 00 00    	jne    b3fe <main+0xace>
    b2eb:	31 db                	xor    %ebx,%ebx
    b2ed:	eb 16                	jmp    b305 <main+0x9d5>
    b2ef:	90                   	nop
    b2f0:	83 ec 08             	sub    $0x8,%esp
    b2f3:	83 c3 01             	add    $0x1,%ebx
    b2f6:	68 18 c8 00 00       	push   $0xc818
    b2fb:	6a 01                	push   $0x1
    b2fd:	e8 9e 10 00 00       	call   c3a0 <printf>
    b302:	83 c4 10             	add    $0x10,%esp
    b305:	83 ec 0c             	sub    $0xc,%esp
    b308:	68 f9 d1 00 00       	push   $0xd1f9
    b30d:	e8 4e 0b 00 00       	call   be60 <strlen>
    b312:	89 c6                	mov    %eax,%esi
    b314:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b31b:	e8 40 0b 00 00       	call   be60 <strlen>
    b320:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b324:	83 c4 10             	add    $0x10,%esp
    b327:	39 d8                	cmp    %ebx,%eax
    b329:	77 c5                	ja     b2f0 <main+0x9c0>
    b32b:	50                   	push   %eax
    b32c:	68 f9 d1 00 00       	push   $0xd1f9
    b331:	68 d5 d0 00 00       	push   $0xd0d5
    b336:	6a 01                	push   $0x1
    b338:	e8 63 10 00 00       	call   c3a0 <printf>
    run_test(test_frozen_not_running);
    b33d:	83 c4 10             	add    $0x10,%esp
    b340:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b347:	0f 85 07 f6 ff ff    	jne    a954 <main+0x24>
    b34d:	50                   	push   %eax
    b34e:	68 0d d2 00 00       	push   $0xd20d
    b353:	68 c8 d0 00 00       	push   $0xd0c8
    b358:	6a 01                	push   $0x1
    b35a:	e8 41 10 00 00       	call   c3a0 <printf>
    b35f:	c7 04 24 0d d2 00 00 	movl   $0xd20d,(%esp)
    b366:	e8 45 9c ff ff       	call   4fb0 <test_frozen_not_running>
    b36b:	83 c4 10             	add    $0x10,%esp
    b36e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b375:	0f 85 13 01 00 00    	jne    b48e <main+0xb5e>
    b37b:	31 db                	xor    %ebx,%ebx
    b37d:	eb 16                	jmp    b395 <main+0xa65>
    b37f:	90                   	nop
    b380:	83 ec 08             	sub    $0x8,%esp
    b383:	83 c3 01             	add    $0x1,%ebx
    b386:	68 18 c8 00 00       	push   $0xc818
    b38b:	6a 01                	push   $0x1
    b38d:	e8 0e 10 00 00       	call   c3a0 <printf>
    b392:	83 c4 10             	add    $0x10,%esp
    b395:	83 ec 0c             	sub    $0xc,%esp
    b398:	68 0d d2 00 00       	push   $0xd20d
    b39d:	e8 be 0a 00 00       	call   be60 <strlen>
    b3a2:	89 c6                	mov    %eax,%esi
    b3a4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b3ab:	e8 b0 0a 00 00       	call   be60 <strlen>
    b3b0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b3b4:	83 c4 10             	add    $0x10,%esp
    b3b7:	39 d8                	cmp    %ebx,%eax
    b3b9:	77 c5                	ja     b380 <main+0xa50>
    b3bb:	50                   	push   %eax
    b3bc:	68 0d d2 00 00       	push   $0xd20d
    b3c1:	68 d5 d0 00 00       	push   $0xd0d5
    b3c6:	6a 01                	push   $0x1
    b3c8:	e8 d3 0f 00 00       	call   c3a0 <printf>
    run_test(test_mem_current);
    b3cd:	83 c4 10             	add    $0x10,%esp
    b3d0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b3d7:	0f 85 77 f5 ff ff    	jne    a954 <main+0x24>
    b3dd:	50                   	push   %eax
    b3de:	68 25 d2 00 00       	push   $0xd225
    b3e3:	68 c8 d0 00 00       	push   $0xd0c8
    b3e8:	6a 01                	push   $0x1
    b3ea:	e8 b1 0f 00 00       	call   c3a0 <printf>
    b3ef:	c7 04 24 25 d2 00 00 	movl   $0xd225,(%esp)
    b3f6:	e8 55 a2 ff ff       	call   5650 <test_mem_current>
    b3fb:	83 c4 10             	add    $0x10,%esp
    b3fe:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b405:	0f 85 13 01 00 00    	jne    b51e <main+0xbee>
    b40b:	31 db                	xor    %ebx,%ebx
    b40d:	eb 16                	jmp    b425 <main+0xaf5>
    b40f:	90                   	nop
    b410:	83 ec 08             	sub    $0x8,%esp
    b413:	83 c3 01             	add    $0x1,%ebx
    b416:	68 18 c8 00 00       	push   $0xc818
    b41b:	6a 01                	push   $0x1
    b41d:	e8 7e 0f 00 00       	call   c3a0 <printf>
    b422:	83 c4 10             	add    $0x10,%esp
    b425:	83 ec 0c             	sub    $0xc,%esp
    b428:	68 25 d2 00 00       	push   $0xd225
    b42d:	e8 2e 0a 00 00       	call   be60 <strlen>
    b432:	89 c6                	mov    %eax,%esi
    b434:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b43b:	e8 20 0a 00 00       	call   be60 <strlen>
    b440:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b444:	83 c4 10             	add    $0x10,%esp
    b447:	39 d8                	cmp    %ebx,%eax
    b449:	77 c5                	ja     b410 <main+0xae0>
    b44b:	56                   	push   %esi
    b44c:	68 25 d2 00 00       	push   $0xd225
    b451:	68 d5 d0 00 00       	push   $0xd0d5
    b456:	6a 01                	push   $0x1
    b458:	e8 43 0f 00 00       	call   c3a0 <printf>
    run_test(test_correct_mem_account_of_growth_and_shrink);
    b45d:	83 c4 10             	add    $0x10,%esp
    b460:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b467:	0f 85 e7 f4 ff ff    	jne    a954 <main+0x24>
    b46d:	53                   	push   %ebx
    b46e:	68 4c 19 01 00       	push   $0x1194c
    b473:	68 c8 d0 00 00       	push   $0xd0c8
    b478:	6a 01                	push   $0x1
    b47a:	e8 21 0f 00 00       	call   c3a0 <printf>
    b47f:	c7 04 24 4c 19 01 00 	movl   $0x1194c,(%esp)
    b486:	e8 d5 a4 ff ff       	call   5960 <test_correct_mem_account_of_growth_and_shrink>
    b48b:	83 c4 10             	add    $0x10,%esp
    b48e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b495:	0f 85 13 01 00 00    	jne    b5ae <main+0xc7e>
    b49b:	31 db                	xor    %ebx,%ebx
    b49d:	eb 16                	jmp    b4b5 <main+0xb85>
    b49f:	90                   	nop
    b4a0:	83 ec 08             	sub    $0x8,%esp
    b4a3:	83 c3 01             	add    $0x1,%ebx
    b4a6:	68 18 c8 00 00       	push   $0xc818
    b4ab:	6a 01                	push   $0x1
    b4ad:	e8 ee 0e 00 00       	call   c3a0 <printf>
    b4b2:	83 c4 10             	add    $0x10,%esp
    b4b5:	83 ec 0c             	sub    $0xc,%esp
    b4b8:	68 4c 19 01 00       	push   $0x1194c
    b4bd:	e8 9e 09 00 00       	call   be60 <strlen>
    b4c2:	89 c6                	mov    %eax,%esi
    b4c4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b4cb:	e8 90 09 00 00       	call   be60 <strlen>
    b4d0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b4d4:	83 c4 10             	add    $0x10,%esp
    b4d7:	39 d8                	cmp    %ebx,%eax
    b4d9:	77 c5                	ja     b4a0 <main+0xb70>
    b4db:	51                   	push   %ecx
    b4dc:	68 4c 19 01 00       	push   $0x1194c
    b4e1:	68 d5 d0 00 00       	push   $0xd0d5
    b4e6:	6a 01                	push   $0x1
    b4e8:	e8 b3 0e 00 00       	call   c3a0 <printf>
    run_test(test_limiting_mem);
    b4ed:	83 c4 10             	add    $0x10,%esp
    b4f0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b4f7:	0f 85 57 f4 ff ff    	jne    a954 <main+0x24>
    b4fd:	52                   	push   %edx
    b4fe:	68 36 d2 00 00       	push   $0xd236
    b503:	68 c8 d0 00 00       	push   $0xd0c8
    b508:	6a 01                	push   $0x1
    b50a:	e8 91 0e 00 00       	call   c3a0 <printf>
    b50f:	c7 04 24 36 d2 00 00 	movl   $0xd236,(%esp)
    b516:	e8 25 a8 ff ff       	call   5d40 <test_limiting_mem>
    b51b:	83 c4 10             	add    $0x10,%esp
    b51e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b525:	0f 85 13 01 00 00    	jne    b63e <main+0xd0e>
    b52b:	31 db                	xor    %ebx,%ebx
    b52d:	eb 16                	jmp    b545 <main+0xc15>
    b52f:	90                   	nop
    b530:	83 ec 08             	sub    $0x8,%esp
    b533:	83 c3 01             	add    $0x1,%ebx
    b536:	68 18 c8 00 00       	push   $0xc818
    b53b:	6a 01                	push   $0x1
    b53d:	e8 5e 0e 00 00       	call   c3a0 <printf>
    b542:	83 c4 10             	add    $0x10,%esp
    b545:	83 ec 0c             	sub    $0xc,%esp
    b548:	68 36 d2 00 00       	push   $0xd236
    b54d:	e8 0e 09 00 00       	call   be60 <strlen>
    b552:	89 c6                	mov    %eax,%esi
    b554:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b55b:	e8 00 09 00 00       	call   be60 <strlen>
    b560:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b564:	83 c4 10             	add    $0x10,%esp
    b567:	39 d8                	cmp    %ebx,%eax
    b569:	77 c5                	ja     b530 <main+0xc00>
    b56b:	50                   	push   %eax
    b56c:	68 36 d2 00 00       	push   $0xd236
    b571:	68 d5 d0 00 00       	push   $0xd0d5
    b576:	6a 01                	push   $0x1
    b578:	e8 23 0e 00 00       	call   c3a0 <printf>
    run_test(test_ensure_mem_min_is_less_then_mem_max);
    b57d:	83 c4 10             	add    $0x10,%esp
    b580:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b587:	0f 85 c7 f3 ff ff    	jne    a954 <main+0x24>
    b58d:	50                   	push   %eax
    b58e:	68 7c 19 01 00       	push   $0x1197c
    b593:	68 c8 d0 00 00       	push   $0xd0c8
    b598:	6a 01                	push   $0x1
    b59a:	e8 01 0e 00 00       	call   c3a0 <printf>
    b59f:	c7 04 24 7c 19 01 00 	movl   $0x1197c,(%esp)
    b5a6:	e8 15 ae ff ff       	call   63c0 <test_ensure_mem_min_is_less_then_mem_max>
    b5ab:	83 c4 10             	add    $0x10,%esp
    b5ae:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b5b5:	0f 85 13 01 00 00    	jne    b6ce <main+0xd9e>
    b5bb:	31 db                	xor    %ebx,%ebx
    b5bd:	eb 16                	jmp    b5d5 <main+0xca5>
    b5bf:	90                   	nop
    b5c0:	83 ec 08             	sub    $0x8,%esp
    b5c3:	83 c3 01             	add    $0x1,%ebx
    b5c6:	68 18 c8 00 00       	push   $0xc818
    b5cb:	6a 01                	push   $0x1
    b5cd:	e8 ce 0d 00 00       	call   c3a0 <printf>
    b5d2:	83 c4 10             	add    $0x10,%esp
    b5d5:	83 ec 0c             	sub    $0xc,%esp
    b5d8:	68 7c 19 01 00       	push   $0x1197c
    b5dd:	e8 7e 08 00 00       	call   be60 <strlen>
    b5e2:	89 c6                	mov    %eax,%esi
    b5e4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b5eb:	e8 70 08 00 00       	call   be60 <strlen>
    b5f0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b5f4:	83 c4 10             	add    $0x10,%esp
    b5f7:	39 d8                	cmp    %ebx,%eax
    b5f9:	77 c5                	ja     b5c0 <main+0xc90>
    b5fb:	50                   	push   %eax
    b5fc:	68 7c 19 01 00       	push   $0x1197c
    b601:	68 d5 d0 00 00       	push   $0xd0d5
    b606:	6a 01                	push   $0x1
    b608:	e8 93 0d 00 00       	call   c3a0 <printf>
    run_test(test_cant_use_protected_memory);
    b60d:	83 c4 10             	add    $0x10,%esp
    b610:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b617:	0f 85 37 f3 ff ff    	jne    a954 <main+0x24>
    b61d:	50                   	push   %eax
    b61e:	68 a8 19 01 00       	push   $0x119a8
    b623:	68 c8 d0 00 00       	push   $0xd0c8
    b628:	6a 01                	push   $0x1
    b62a:	e8 71 0d 00 00       	call   c3a0 <printf>
    b62f:	c7 04 24 a8 19 01 00 	movl   $0x119a8,(%esp)
    b636:	e8 f5 b1 ff ff       	call   6830 <test_cant_use_protected_memory>
    b63b:	83 c4 10             	add    $0x10,%esp
    b63e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b645:	0f 85 13 01 00 00    	jne    b75e <main+0xe2e>
    b64b:	31 db                	xor    %ebx,%ebx
    b64d:	eb 16                	jmp    b665 <main+0xd35>
    b64f:	90                   	nop
    b650:	83 ec 08             	sub    $0x8,%esp
    b653:	83 c3 01             	add    $0x1,%ebx
    b656:	68 18 c8 00 00       	push   $0xc818
    b65b:	6a 01                	push   $0x1
    b65d:	e8 3e 0d 00 00       	call   c3a0 <printf>
    b662:	83 c4 10             	add    $0x10,%esp
    b665:	83 ec 0c             	sub    $0xc,%esp
    b668:	68 a8 19 01 00       	push   $0x119a8
    b66d:	e8 ee 07 00 00       	call   be60 <strlen>
    b672:	89 c6                	mov    %eax,%esi
    b674:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b67b:	e8 e0 07 00 00       	call   be60 <strlen>
    b680:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b684:	83 c4 10             	add    $0x10,%esp
    b687:	39 d8                	cmp    %ebx,%eax
    b689:	77 c5                	ja     b650 <main+0xd20>
    b68b:	50                   	push   %eax
    b68c:	68 a8 19 01 00       	push   $0x119a8
    b691:	68 d5 d0 00 00       	push   $0xd0d5
    b696:	6a 01                	push   $0x1
    b698:	e8 03 0d 00 00       	call   c3a0 <printf>
    run_test(test_release_protected_memory_after_delete_cgroup);
    b69d:	83 c4 10             	add    $0x10,%esp
    b6a0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b6a7:	0f 85 a7 f2 ff ff    	jne    a954 <main+0x24>
    b6ad:	50                   	push   %eax
    b6ae:	68 c8 19 01 00       	push   $0x119c8
    b6b3:	68 c8 d0 00 00       	push   $0xd0c8
    b6b8:	6a 01                	push   $0x1
    b6ba:	e8 e1 0c 00 00       	call   c3a0 <printf>
    b6bf:	c7 04 24 c8 19 01 00 	movl   $0x119c8,(%esp)
    b6c6:	e8 45 b9 ff ff       	call   7010 <test_release_protected_memory_after_delete_cgroup>
    b6cb:	83 c4 10             	add    $0x10,%esp
    b6ce:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b6d5:	0f 85 13 01 00 00    	jne    b7ee <main+0xebe>
    b6db:	31 db                	xor    %ebx,%ebx
    b6dd:	eb 16                	jmp    b6f5 <main+0xdc5>
    b6df:	90                   	nop
    b6e0:	83 ec 08             	sub    $0x8,%esp
    b6e3:	83 c3 01             	add    $0x1,%ebx
    b6e6:	68 18 c8 00 00       	push   $0xc818
    b6eb:	6a 01                	push   $0x1
    b6ed:	e8 ae 0c 00 00       	call   c3a0 <printf>
    b6f2:	83 c4 10             	add    $0x10,%esp
    b6f5:	83 ec 0c             	sub    $0xc,%esp
    b6f8:	68 c8 19 01 00       	push   $0x119c8
    b6fd:	e8 5e 07 00 00       	call   be60 <strlen>
    b702:	89 c6                	mov    %eax,%esi
    b704:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b70b:	e8 50 07 00 00       	call   be60 <strlen>
    b710:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b714:	83 c4 10             	add    $0x10,%esp
    b717:	39 d8                	cmp    %ebx,%eax
    b719:	77 c5                	ja     b6e0 <main+0xdb0>
    b71b:	56                   	push   %esi
    b71c:	68 c8 19 01 00       	push   $0x119c8
    b721:	68 d5 d0 00 00       	push   $0xd0d5
    b726:	6a 01                	push   $0x1
    b728:	e8 73 0c 00 00       	call   c3a0 <printf>
    run_test(test_cant_move_under_mem_limit);
    b72d:	83 c4 10             	add    $0x10,%esp
    b730:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b737:	0f 85 17 f2 ff ff    	jne    a954 <main+0x24>
    b73d:	53                   	push   %ebx
    b73e:	68 fc 19 01 00       	push   $0x119fc
    b743:	68 c8 d0 00 00       	push   $0xd0c8
    b748:	6a 01                	push   $0x1
    b74a:	e8 51 0c 00 00       	call   c3a0 <printf>
    b74f:	c7 04 24 fc 19 01 00 	movl   $0x119fc,(%esp)
    b756:	e8 f5 be ff ff       	call   7650 <test_cant_move_under_mem_limit>
    b75b:	83 c4 10             	add    $0x10,%esp
    b75e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b765:	0f 85 13 01 00 00    	jne    b87e <main+0xf4e>
    b76b:	31 db                	xor    %ebx,%ebx
    b76d:	eb 16                	jmp    b785 <main+0xe55>
    b76f:	90                   	nop
    b770:	83 ec 08             	sub    $0x8,%esp
    b773:	83 c3 01             	add    $0x1,%ebx
    b776:	68 18 c8 00 00       	push   $0xc818
    b77b:	6a 01                	push   $0x1
    b77d:	e8 1e 0c 00 00       	call   c3a0 <printf>
    b782:	83 c4 10             	add    $0x10,%esp
    b785:	83 ec 0c             	sub    $0xc,%esp
    b788:	68 fc 19 01 00       	push   $0x119fc
    b78d:	e8 ce 06 00 00       	call   be60 <strlen>
    b792:	89 c6                	mov    %eax,%esi
    b794:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b79b:	e8 c0 06 00 00       	call   be60 <strlen>
    b7a0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b7a4:	83 c4 10             	add    $0x10,%esp
    b7a7:	39 d8                	cmp    %ebx,%eax
    b7a9:	77 c5                	ja     b770 <main+0xe40>
    b7ab:	51                   	push   %ecx
    b7ac:	68 fc 19 01 00       	push   $0x119fc
    b7b1:	68 d5 d0 00 00       	push   $0xd0d5
    b7b6:	6a 01                	push   $0x1
    b7b8:	e8 e3 0b 00 00       	call   c3a0 <printf>
    run_test(test_nested_cgroups);
    b7bd:	83 c4 10             	add    $0x10,%esp
    b7c0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b7c7:	0f 85 87 f1 ff ff    	jne    a954 <main+0x24>
    b7cd:	52                   	push   %edx
    b7ce:	68 48 d2 00 00       	push   $0xd248
    b7d3:	68 c8 d0 00 00       	push   $0xd0c8
    b7d8:	6a 01                	push   $0x1
    b7da:	e8 c1 0b 00 00       	call   c3a0 <printf>
    b7df:	c7 04 24 48 d2 00 00 	movl   $0xd248,(%esp)
    b7e6:	e8 85 ea ff ff       	call   a270 <test_nested_cgroups>
    b7eb:	83 c4 10             	add    $0x10,%esp
    b7ee:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b7f5:	0f 85 13 01 00 00    	jne    b90e <main+0xfde>
    b7fb:	31 db                	xor    %ebx,%ebx
    b7fd:	eb 16                	jmp    b815 <main+0xee5>
    b7ff:	90                   	nop
    b800:	83 ec 08             	sub    $0x8,%esp
    b803:	83 c3 01             	add    $0x1,%ebx
    b806:	68 18 c8 00 00       	push   $0xc818
    b80b:	6a 01                	push   $0x1
    b80d:	e8 8e 0b 00 00       	call   c3a0 <printf>
    b812:	83 c4 10             	add    $0x10,%esp
    b815:	83 ec 0c             	sub    $0xc,%esp
    b818:	68 48 d2 00 00       	push   $0xd248
    b81d:	e8 3e 06 00 00       	call   be60 <strlen>
    b822:	89 c6                	mov    %eax,%esi
    b824:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b82b:	e8 30 06 00 00       	call   be60 <strlen>
    b830:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b834:	83 c4 10             	add    $0x10,%esp
    b837:	39 d8                	cmp    %ebx,%eax
    b839:	77 c5                	ja     b800 <main+0xed0>
    b83b:	50                   	push   %eax
    b83c:	68 48 d2 00 00       	push   $0xd248
    b841:	68 d5 d0 00 00       	push   $0xd0d5
    b846:	6a 01                	push   $0x1
    b848:	e8 53 0b 00 00       	call   c3a0 <printf>
    run_test(test_mem_limit_negative_and_over_kernelbase);
    b84d:	83 c4 10             	add    $0x10,%esp
    b850:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b857:	0f 85 f7 f0 ff ff    	jne    a954 <main+0x24>
    b85d:	50                   	push   %eax
    b85e:	68 1c 1a 01 00       	push   $0x11a1c
    b863:	68 c8 d0 00 00       	push   $0xd0c8
    b868:	6a 01                	push   $0x1
    b86a:	e8 31 0b 00 00       	call   c3a0 <printf>
    b86f:	c7 04 24 1c 1a 01 00 	movl   $0x11a1c,(%esp)
    b876:	e8 e5 c2 ff ff       	call   7b60 <test_mem_limit_negative_and_over_kernelbase>
    b87b:	83 c4 10             	add    $0x10,%esp
    b87e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b885:	0f 85 13 01 00 00    	jne    b99e <main+0x106e>
    b88b:	31 db                	xor    %ebx,%ebx
    b88d:	eb 16                	jmp    b8a5 <main+0xf75>
    b88f:	90                   	nop
    b890:	83 ec 08             	sub    $0x8,%esp
    b893:	83 c3 01             	add    $0x1,%ebx
    b896:	68 18 c8 00 00       	push   $0xc818
    b89b:	6a 01                	push   $0x1
    b89d:	e8 fe 0a 00 00       	call   c3a0 <printf>
    b8a2:	83 c4 10             	add    $0x10,%esp
    b8a5:	83 ec 0c             	sub    $0xc,%esp
    b8a8:	68 1c 1a 01 00       	push   $0x11a1c
    b8ad:	e8 ae 05 00 00       	call   be60 <strlen>
    b8b2:	89 c6                	mov    %eax,%esi
    b8b4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b8bb:	e8 a0 05 00 00       	call   be60 <strlen>
    b8c0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b8c4:	83 c4 10             	add    $0x10,%esp
    b8c7:	39 d8                	cmp    %ebx,%eax
    b8c9:	77 c5                	ja     b890 <main+0xf60>
    b8cb:	50                   	push   %eax
    b8cc:	68 1c 1a 01 00       	push   $0x11a1c
    b8d1:	68 d5 d0 00 00       	push   $0xd0d5
    b8d6:	6a 01                	push   $0x1
    b8d8:	e8 c3 0a 00 00       	call   c3a0 <printf>
    run_test(test_cant_move_over_mem_limit);
    b8dd:	83 c4 10             	add    $0x10,%esp
    b8e0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b8e7:	0f 85 67 f0 ff ff    	jne    a954 <main+0x24>
    b8ed:	50                   	push   %eax
    b8ee:	68 5c d2 00 00       	push   $0xd25c
    b8f3:	68 c8 d0 00 00       	push   $0xd0c8
    b8f8:	6a 01                	push   $0x1
    b8fa:	e8 a1 0a 00 00       	call   c3a0 <printf>
    b8ff:	c7 04 24 5c d2 00 00 	movl   $0xd25c,(%esp)
    b906:	e8 a5 c9 ff ff       	call   82b0 <test_cant_move_over_mem_limit>
    b90b:	83 c4 10             	add    $0x10,%esp
    b90e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b915:	0f 85 13 01 00 00    	jne    ba2e <main+0x10fe>
    b91b:	31 db                	xor    %ebx,%ebx
    b91d:	eb 16                	jmp    b935 <main+0x1005>
    b91f:	90                   	nop
    b920:	83 ec 08             	sub    $0x8,%esp
    b923:	83 c3 01             	add    $0x1,%ebx
    b926:	68 18 c8 00 00       	push   $0xc818
    b92b:	6a 01                	push   $0x1
    b92d:	e8 6e 0a 00 00       	call   c3a0 <printf>
    b932:	83 c4 10             	add    $0x10,%esp
    b935:	83 ec 0c             	sub    $0xc,%esp
    b938:	68 5c d2 00 00       	push   $0xd25c
    b93d:	e8 1e 05 00 00       	call   be60 <strlen>
    b942:	89 c6                	mov    %eax,%esi
    b944:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b94b:	e8 10 05 00 00       	call   be60 <strlen>
    b950:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b954:	83 c4 10             	add    $0x10,%esp
    b957:	39 d8                	cmp    %ebx,%eax
    b959:	77 c5                	ja     b920 <main+0xff0>
    b95b:	50                   	push   %eax
    b95c:	68 5c d2 00 00       	push   $0xd25c
    b961:	68 d5 d0 00 00       	push   $0xd0d5
    b966:	6a 01                	push   $0x1
    b968:	e8 33 0a 00 00       	call   c3a0 <printf>
    run_test(test_cant_fork_over_mem_limit);
    b96d:	83 c4 10             	add    $0x10,%esp
    b970:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b977:	0f 85 d7 ef ff ff    	jne    a954 <main+0x24>
    b97d:	50                   	push   %eax
    b97e:	68 7a d2 00 00       	push   $0xd27a
    b983:	68 c8 d0 00 00       	push   $0xd0c8
    b988:	6a 01                	push   $0x1
    b98a:	e8 11 0a 00 00       	call   c3a0 <printf>
    b98f:	c7 04 24 7a d2 00 00 	movl   $0xd27a,(%esp)
    b996:	e8 25 ce ff ff       	call   87c0 <test_cant_fork_over_mem_limit>
    b99b:	83 c4 10             	add    $0x10,%esp
    b99e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    b9a5:	0f 85 13 01 00 00    	jne    babe <main+0x118e>
    b9ab:	31 db                	xor    %ebx,%ebx
    b9ad:	eb 16                	jmp    b9c5 <main+0x1095>
    b9af:	90                   	nop
    b9b0:	83 ec 08             	sub    $0x8,%esp
    b9b3:	83 c3 01             	add    $0x1,%ebx
    b9b6:	68 18 c8 00 00       	push   $0xc818
    b9bb:	6a 01                	push   $0x1
    b9bd:	e8 de 09 00 00       	call   c3a0 <printf>
    b9c2:	83 c4 10             	add    $0x10,%esp
    b9c5:	83 ec 0c             	sub    $0xc,%esp
    b9c8:	68 7a d2 00 00       	push   $0xd27a
    b9cd:	e8 8e 04 00 00       	call   be60 <strlen>
    b9d2:	89 c6                	mov    %eax,%esi
    b9d4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    b9db:	e8 80 04 00 00       	call   be60 <strlen>
    b9e0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    b9e4:	83 c4 10             	add    $0x10,%esp
    b9e7:	39 d8                	cmp    %ebx,%eax
    b9e9:	77 c5                	ja     b9b0 <main+0x1080>
    b9eb:	56                   	push   %esi
    b9ec:	68 7a d2 00 00       	push   $0xd27a
    b9f1:	68 d5 d0 00 00       	push   $0xd0d5
    b9f6:	6a 01                	push   $0x1
    b9f8:	e8 a3 09 00 00       	call   c3a0 <printf>
    run_test(test_cant_grow_over_mem_limit);
    b9fd:	83 c4 10             	add    $0x10,%esp
    ba00:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ba07:	0f 85 47 ef ff ff    	jne    a954 <main+0x24>
    ba0d:	53                   	push   %ebx
    ba0e:	68 98 d2 00 00       	push   $0xd298
    ba13:	68 c8 d0 00 00       	push   $0xd0c8
    ba18:	6a 01                	push   $0x1
    ba1a:	e8 81 09 00 00       	call   c3a0 <printf>
    ba1f:	c7 04 24 98 d2 00 00 	movl   $0xd298,(%esp)
    ba26:	e8 d5 d1 ff ff       	call   8c00 <test_cant_grow_over_mem_limit>
    ba2b:	83 c4 10             	add    $0x10,%esp
    ba2e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ba35:	0f 85 13 01 00 00    	jne    bb4e <main+0x121e>
    ba3b:	31 db                	xor    %ebx,%ebx
    ba3d:	eb 16                	jmp    ba55 <main+0x1125>
    ba3f:	90                   	nop
    ba40:	83 ec 08             	sub    $0x8,%esp
    ba43:	83 c3 01             	add    $0x1,%ebx
    ba46:	68 18 c8 00 00       	push   $0xc818
    ba4b:	6a 01                	push   $0x1
    ba4d:	e8 4e 09 00 00       	call   c3a0 <printf>
    ba52:	83 c4 10             	add    $0x10,%esp
    ba55:	83 ec 0c             	sub    $0xc,%esp
    ba58:	68 98 d2 00 00       	push   $0xd298
    ba5d:	e8 fe 03 00 00       	call   be60 <strlen>
    ba62:	89 c6                	mov    %eax,%esi
    ba64:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    ba6b:	e8 f0 03 00 00       	call   be60 <strlen>
    ba70:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    ba74:	83 c4 10             	add    $0x10,%esp
    ba77:	39 d8                	cmp    %ebx,%eax
    ba79:	77 c5                	ja     ba40 <main+0x1110>
    ba7b:	51                   	push   %ecx
    ba7c:	68 98 d2 00 00       	push   $0xd298
    ba81:	68 d5 d0 00 00       	push   $0xd0d5
    ba86:	6a 01                	push   $0x1
    ba88:	e8 13 09 00 00       	call   c3a0 <printf>
    run_test(test_limiting_cpu_max_and_period);
    ba8d:	83 c4 10             	add    $0x10,%esp
    ba90:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    ba97:	0f 85 b7 ee ff ff    	jne    a954 <main+0x24>
    ba9d:	52                   	push   %edx
    ba9e:	68 48 1a 01 00       	push   $0x11a48
    baa3:	68 c8 d0 00 00       	push   $0xd0c8
    baa8:	6a 01                	push   $0x1
    baaa:	e8 f1 08 00 00       	call   c3a0 <printf>
    baaf:	c7 04 24 48 1a 01 00 	movl   $0x11a48,(%esp)
    bab6:	e8 d5 69 ff ff       	call   2490 <test_limiting_cpu_max_and_period>
    babb:	83 c4 10             	add    $0x10,%esp
    babe:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bac5:	0f 85 13 01 00 00    	jne    bbde <main+0x12ae>
    bacb:	31 db                	xor    %ebx,%ebx
    bacd:	eb 16                	jmp    bae5 <main+0x11b5>
    bacf:	90                   	nop
    bad0:	83 ec 08             	sub    $0x8,%esp
    bad3:	83 c3 01             	add    $0x1,%ebx
    bad6:	68 18 c8 00 00       	push   $0xc818
    badb:	6a 01                	push   $0x1
    badd:	e8 be 08 00 00       	call   c3a0 <printf>
    bae2:	83 c4 10             	add    $0x10,%esp
    bae5:	83 ec 0c             	sub    $0xc,%esp
    bae8:	68 48 1a 01 00       	push   $0x11a48
    baed:	e8 6e 03 00 00       	call   be60 <strlen>
    baf2:	89 c6                	mov    %eax,%esi
    baf4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    bafb:	e8 60 03 00 00       	call   be60 <strlen>
    bb00:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    bb04:	83 c4 10             	add    $0x10,%esp
    bb07:	39 d8                	cmp    %ebx,%eax
    bb09:	77 c5                	ja     bad0 <main+0x11a0>
    bb0b:	50                   	push   %eax
    bb0c:	68 48 1a 01 00       	push   $0x11a48
    bb11:	68 d5 d0 00 00       	push   $0xd0d5
    bb16:	6a 01                	push   $0x1
    bb18:	e8 83 08 00 00       	call   c3a0 <printf>
    run_test(test_setting_max_descendants_and_max_depth);
    bb1d:	83 c4 10             	add    $0x10,%esp
    bb20:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bb27:	0f 85 27 ee ff ff    	jne    a954 <main+0x24>
    bb2d:	50                   	push   %eax
    bb2e:	68 6c 1a 01 00       	push   $0x11a6c
    bb33:	68 c8 d0 00 00       	push   $0xd0c8
    bb38:	6a 01                	push   $0x1
    bb3a:	e8 61 08 00 00       	call   c3a0 <printf>
    bb3f:	c7 04 24 6c 1a 01 00 	movl   $0x11a6c,(%esp)
    bb46:	e8 b5 7c ff ff       	call   3800 <test_setting_max_descendants_and_max_depth>
    bb4b:	83 c4 10             	add    $0x10,%esp
    bb4e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bb55:	0f 85 13 01 00 00    	jne    bc6e <main+0x133e>
    bb5b:	31 db                	xor    %ebx,%ebx
    bb5d:	eb 16                	jmp    bb75 <main+0x1245>
    bb5f:	90                   	nop
    bb60:	83 ec 08             	sub    $0x8,%esp
    bb63:	83 c3 01             	add    $0x1,%ebx
    bb66:	68 18 c8 00 00       	push   $0xc818
    bb6b:	6a 01                	push   $0x1
    bb6d:	e8 2e 08 00 00       	call   c3a0 <printf>
    bb72:	83 c4 10             	add    $0x10,%esp
    bb75:	83 ec 0c             	sub    $0xc,%esp
    bb78:	68 6c 1a 01 00       	push   $0x11a6c
    bb7d:	e8 de 02 00 00       	call   be60 <strlen>
    bb82:	89 c6                	mov    %eax,%esi
    bb84:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    bb8b:	e8 d0 02 00 00       	call   be60 <strlen>
    bb90:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    bb94:	83 c4 10             	add    $0x10,%esp
    bb97:	39 d8                	cmp    %ebx,%eax
    bb99:	77 c5                	ja     bb60 <main+0x1230>
    bb9b:	50                   	push   %eax
    bb9c:	68 6c 1a 01 00       	push   $0x11a6c
    bba1:	68 d5 d0 00 00       	push   $0xd0d5
    bba6:	6a 01                	push   $0x1
    bba8:	e8 f3 07 00 00       	call   c3a0 <printf>
    run_test(test_deleting_cgroups);
    bbad:	83 c4 10             	add    $0x10,%esp
    bbb0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bbb7:	0f 85 97 ed ff ff    	jne    a954 <main+0x24>
    bbbd:	50                   	push   %eax
    bbbe:	68 b6 d2 00 00       	push   $0xd2b6
    bbc3:	68 c8 d0 00 00       	push   $0xd0c8
    bbc8:	6a 01                	push   $0x1
    bbca:	e8 d1 07 00 00       	call   c3a0 <printf>
    bbcf:	c7 04 24 b6 d2 00 00 	movl   $0xd2b6,(%esp)
    bbd6:	e8 45 52 ff ff       	call   e20 <test_deleting_cgroups>
    bbdb:	83 c4 10             	add    $0x10,%esp
    bbde:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bbe5:	0f 85 10 01 00 00    	jne    bcfb <main+0x13cb>
    bbeb:	31 db                	xor    %ebx,%ebx
    bbed:	eb 16                	jmp    bc05 <main+0x12d5>
    bbef:	90                   	nop
    bbf0:	83 ec 08             	sub    $0x8,%esp
    bbf3:	83 c3 01             	add    $0x1,%ebx
    bbf6:	68 18 c8 00 00       	push   $0xc818
    bbfb:	6a 01                	push   $0x1
    bbfd:	e8 9e 07 00 00       	call   c3a0 <printf>
    bc02:	83 c4 10             	add    $0x10,%esp
    bc05:	83 ec 0c             	sub    $0xc,%esp
    bc08:	68 b6 d2 00 00       	push   $0xd2b6
    bc0d:	e8 4e 02 00 00       	call   be60 <strlen>
    bc12:	89 c6                	mov    %eax,%esi
    bc14:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    bc1b:	e8 40 02 00 00       	call   be60 <strlen>
    bc20:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    bc24:	83 c4 10             	add    $0x10,%esp
    bc27:	39 d8                	cmp    %ebx,%eax
    bc29:	77 c5                	ja     bbf0 <main+0x12c0>
    bc2b:	50                   	push   %eax
    bc2c:	68 b6 d2 00 00       	push   $0xd2b6
    bc31:	68 d5 d0 00 00       	push   $0xd0d5
    bc36:	6a 01                	push   $0x1
    bc38:	e8 63 07 00 00       	call   c3a0 <printf>
    run_test(test_umount_cgroup_fs);
    bc3d:	83 c4 10             	add    $0x10,%esp
    bc40:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bc47:	0f 85 07 ed ff ff    	jne    a954 <main+0x24>
    bc4d:	50                   	push   %eax
    bc4e:	68 cc d2 00 00       	push   $0xd2cc
    bc53:	68 c8 d0 00 00       	push   $0xd0c8
    bc58:	6a 01                	push   $0x1
    bc5a:	e8 41 07 00 00       	call   c3a0 <printf>
    bc5f:	c7 04 24 cc d2 00 00 	movl   $0xd2cc,(%esp)
    bc66:	e8 55 4e ff ff       	call   ac0 <test_umount_cgroup_fs>
    bc6b:	83 c4 10             	add    $0x10,%esp
    bc6e:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bc75:	0f 85 d9 ec ff ff    	jne    a954 <main+0x24>
    bc7b:	31 db                	xor    %ebx,%ebx
    bc7d:	eb 16                	jmp    bc95 <main+0x1365>
    bc7f:	90                   	nop
    bc80:	83 ec 08             	sub    $0x8,%esp
    bc83:	83 c3 01             	add    $0x1,%ebx
    bc86:	68 18 c8 00 00       	push   $0xc818
    bc8b:	6a 01                	push   $0x1
    bc8d:	e8 0e 07 00 00       	call   c3a0 <printf>
    bc92:	83 c4 10             	add    $0x10,%esp
    bc95:	83 ec 0c             	sub    $0xc,%esp
    bc98:	68 cc d2 00 00       	push   $0xd2cc
    bc9d:	e8 be 01 00 00       	call   be60 <strlen>
    bca2:	89 c6                	mov    %eax,%esi
    bca4:	c7 04 24 25 c8 00 00 	movl   $0xc825,(%esp)
    bcab:	e8 b0 01 00 00       	call   be60 <strlen>
    bcb0:	8d 44 06 02          	lea    0x2(%esi,%eax,1),%eax
    bcb4:	83 c4 10             	add    $0x10,%esp
    bcb7:	39 d8                	cmp    %ebx,%eax
    bcb9:	77 c5                	ja     bc80 <main+0x1350>
    bcbb:	56                   	push   %esi
    bcbc:	68 cc d2 00 00       	push   $0xd2cc
    bcc1:	68 d5 d0 00 00       	push   $0xd0d5
    bcc6:	6a 01                	push   $0x1
    bcc8:	e8 d3 06 00 00       	call   c3a0 <printf>
    run_test_break_msg(test_kernel_freem_mem);
    bccd:	83 c4 10             	add    $0x10,%esp
    bcd0:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bcd7:	0f 85 77 ec ff ff    	jne    a954 <main+0x24>
    bcdd:	53                   	push   %ebx
    bcde:	68 e2 d2 00 00       	push   $0xd2e2
    bce3:	68 13 d1 00 00       	push   $0xd113
    bce8:	6a 01                	push   $0x1
    bcea:	e8 b1 06 00 00       	call   c3a0 <printf>
    ASSERT_UINT_EQ(pgmajfault, 0);
}

TEST(test_kernel_freem_mem)
{
  ASSERT_FALSE(kmemtest());
    bcef:	e8 e4 05 00 00       	call   c2d8 <kmemtest>
    bcf4:	83 c4 10             	add    $0x10,%esp
    bcf7:	85 c0                	test   %eax,%eax
    bcf9:	75 49                	jne    bd44 <main+0x1414>
    run_test(test_cant_grow_over_mem_limit);
    run_test(test_limiting_cpu_max_and_period);
    run_test(test_setting_max_descendants_and_max_depth);
    run_test(test_deleting_cgroups);
    run_test(test_umount_cgroup_fs);
    run_test_break_msg(test_kernel_freem_mem);
    bcfb:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bd02:	0f 85 4c ec ff ff    	jne    a954 <main+0x24>
    bd08:	52                   	push   %edx
    bd09:	68 e2 d2 00 00       	push   $0xd2e2
    bd0e:	68 21 d1 00 00       	push   $0xd121
    bd13:	6a 01                	push   $0x1
    bd15:	e8 86 06 00 00       	call   c3a0 <printf>

    if (failed) {
    bd1a:	83 c4 10             	add    $0x10,%esp
    bd1d:	83 3d 40 42 01 00 00 	cmpl   $0x0,0x14240
    bd24:	0f 85 2a ec ff ff    	jne    a954 <main+0x24>
        printf(1, "[    CGROUPTESTS FAILED    ]\n");
        exit(1);
    } else {
        printf(1, "[    CGROUPTESTS PASSED    ]\n");
    bd2a:	50                   	push   %eax
    bd2b:	50                   	push   %eax
    bd2c:	68 16 d3 00 00       	push   $0xd316
    bd31:	6a 01                	push   $0x1
    bd33:	e8 68 06 00 00       	call   c3a0 <printf>
        exit(0);
    bd38:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    bd3f:	e8 a4 04 00 00       	call   c1e8 <exit>
    bd44:	b8 e2 d2 00 00       	mov    $0xd2e2,%eax
    bd49:	e8 b2 42 ff ff       	call   0 <test_kernel_freem_mem.part.23>
    bd4e:	eb ab                	jmp    bcfb <main+0x13cb>

0000bd50 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    bd50:	55                   	push   %ebp
    bd51:	89 e5                	mov    %esp,%ebp
    bd53:	53                   	push   %ebx
    bd54:	8b 45 08             	mov    0x8(%ebp),%eax
    bd57:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    bd5a:	89 c2                	mov    %eax,%edx
    bd5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bd60:	83 c1 01             	add    $0x1,%ecx
    bd63:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    bd67:	83 c2 01             	add    $0x1,%edx
    bd6a:	84 db                	test   %bl,%bl
    bd6c:	88 5a ff             	mov    %bl,-0x1(%edx)
    bd6f:	75 ef                	jne    bd60 <strcpy+0x10>
    ;
  return os;
}
    bd71:	5b                   	pop    %ebx
    bd72:	5d                   	pop    %ebp
    bd73:	c3                   	ret    
    bd74:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bd7a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

0000bd80 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    bd80:	55                   	push   %ebp
    bd81:	89 e5                	mov    %esp,%ebp
    bd83:	56                   	push   %esi
    bd84:	53                   	push   %ebx
    bd85:	8b 55 08             	mov    0x8(%ebp),%edx
    bd88:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    bd8b:	0f b6 02             	movzbl (%edx),%eax
    bd8e:	0f b6 19             	movzbl (%ecx),%ebx
    bd91:	84 c0                	test   %al,%al
    bd93:	75 1e                	jne    bdb3 <strcmp+0x33>
    bd95:	eb 29                	jmp    bdc0 <strcmp+0x40>
    bd97:	89 f6                	mov    %esi,%esi
    bd99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    bda0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    bda3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    bda6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    bda9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    bdad:	84 c0                	test   %al,%al
    bdaf:	74 0f                	je     bdc0 <strcmp+0x40>
    bdb1:	89 f1                	mov    %esi,%ecx
    bdb3:	38 d8                	cmp    %bl,%al
    bdb5:	74 e9                	je     bda0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    bdb7:	29 d8                	sub    %ebx,%eax
}
    bdb9:	5b                   	pop    %ebx
    bdba:	5e                   	pop    %esi
    bdbb:	5d                   	pop    %ebp
    bdbc:	c3                   	ret    
    bdbd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    bdc0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    bdc2:	29 d8                	sub    %ebx,%eax
}
    bdc4:	5b                   	pop    %ebx
    bdc5:	5e                   	pop    %esi
    bdc6:	5d                   	pop    %ebp
    bdc7:	c3                   	ret    
    bdc8:	90                   	nop
    bdc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0000bdd0 <strncmp>:

int
strncmp(const char *p, const char *q, int n)
{
    bdd0:	55                   	push   %ebp
    bdd1:	89 e5                	mov    %esp,%ebp
    bdd3:	57                   	push   %edi
    bdd4:	56                   	push   %esi
    bdd5:	8b 55 08             	mov    0x8(%ebp),%edx
    bdd8:	53                   	push   %ebx
    bdd9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q && --n)
    bddc:	0f b6 32             	movzbl (%edx),%esi
    bddf:	89 f0                	mov    %esi,%eax
    bde1:	84 c0                	test   %al,%al
    bde3:	74 67                	je     be4c <strncmp+0x7c>
    bde5:	0f b6 19             	movzbl (%ecx),%ebx
    bde8:	89 f0                	mov    %esi,%eax
    bdea:	38 d8                	cmp    %bl,%al
    bdec:	75 65                	jne    be53 <strncmp+0x83>
    bdee:	8b 5d 10             	mov    0x10(%ebp),%ebx
    bdf1:	89 f0                	mov    %esi,%eax
    bdf3:	0f b6 f0             	movzbl %al,%esi
    bdf6:	89 f0                	mov    %esi,%eax
    bdf8:	83 eb 01             	sub    $0x1,%ebx
    bdfb:	75 14                	jne    be11 <strncmp+0x41>
    bdfd:	eb 25                	jmp    be24 <strncmp+0x54>
    bdff:	90                   	nop
    be00:	0f b6 71 01          	movzbl 0x1(%ecx),%esi
    be04:	89 f1                	mov    %esi,%ecx
    be06:	38 c8                	cmp    %cl,%al
    be08:	75 26                	jne    be30 <strncmp+0x60>
    be0a:	83 eb 01             	sub    $0x1,%ebx
    be0d:	89 f9                	mov    %edi,%ecx
    be0f:	74 2f                	je     be40 <strncmp+0x70>
    p++, q++;
    be11:	83 c2 01             	add    $0x1,%edx
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    be14:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    be17:	8d 79 01             	lea    0x1(%ecx),%edi
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    be1a:	84 c0                	test   %al,%al
    be1c:	75 e2                	jne    be00 <strncmp+0x30>
    be1e:	0f b6 71 01          	movzbl 0x1(%ecx),%esi
    be22:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
}
    be24:	5b                   	pop    %ebx
int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    p++, q++;
  return (uchar)*p - (uchar)*q;
    be25:	29 f0                	sub    %esi,%eax
}
    be27:	5e                   	pop    %esi
    be28:	5f                   	pop    %edi
    be29:	5d                   	pop    %ebp
    be2a:	c3                   	ret    
    be2b:	90                   	nop
    be2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    be30:	0f b6 f1             	movzbl %cl,%esi
    be33:	5b                   	pop    %ebx
int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    p++, q++;
  return (uchar)*p - (uchar)*q;
    be34:	29 f0                	sub    %esi,%eax
}
    be36:	5e                   	pop    %esi
    be37:	5f                   	pop    %edi
    be38:	5d                   	pop    %ebp
    be39:	c3                   	ret    
    be3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    be40:	0f b6 f0             	movzbl %al,%esi
    be43:	89 f0                	mov    %esi,%eax
    be45:	5b                   	pop    %ebx
int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    p++, q++;
  return (uchar)*p - (uchar)*q;
    be46:	29 f0                	sub    %esi,%eax
}
    be48:	5e                   	pop    %esi
    be49:	5f                   	pop    %edi
    be4a:	5d                   	pop    %ebp
    be4b:	c3                   	ret    
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    be4c:	31 c0                	xor    %eax,%eax
    be4e:	0f b6 31             	movzbl (%ecx),%esi
    be51:	eb d1                	jmp    be24 <strncmp+0x54>
    be53:	0f b6 c0             	movzbl %al,%eax
    be56:	0f b6 f3             	movzbl %bl,%esi
    be59:	eb c9                	jmp    be24 <strncmp+0x54>
    be5b:	90                   	nop
    be5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0000be60 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(const char *s)
{
    be60:	55                   	push   %ebp
    be61:	89 e5                	mov    %esp,%ebp
    be63:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    be66:	80 39 00             	cmpb   $0x0,(%ecx)
    be69:	74 12                	je     be7d <strlen+0x1d>
    be6b:	31 d2                	xor    %edx,%edx
    be6d:	8d 76 00             	lea    0x0(%esi),%esi
    be70:	83 c2 01             	add    $0x1,%edx
    be73:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    be77:	89 d0                	mov    %edx,%eax
    be79:	75 f5                	jne    be70 <strlen+0x10>
    ;
  return n;
}
    be7b:	5d                   	pop    %ebp
    be7c:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    be7d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    be7f:	5d                   	pop    %ebp
    be80:	c3                   	ret    
    be81:	eb 0d                	jmp    be90 <memset>
    be83:	90                   	nop
    be84:	90                   	nop
    be85:	90                   	nop
    be86:	90                   	nop
    be87:	90                   	nop
    be88:	90                   	nop
    be89:	90                   	nop
    be8a:	90                   	nop
    be8b:	90                   	nop
    be8c:	90                   	nop
    be8d:	90                   	nop
    be8e:	90                   	nop
    be8f:	90                   	nop

0000be90 <memset>:

void*
memset(void *dst, int c, uint n)
{
    be90:	55                   	push   %ebp
    be91:	89 e5                	mov    %esp,%ebp
    be93:	57                   	push   %edi
    be94:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    be97:	8b 4d 10             	mov    0x10(%ebp),%ecx
    be9a:	8b 45 0c             	mov    0xc(%ebp),%eax
    be9d:	89 d7                	mov    %edx,%edi
    be9f:	fc                   	cld    
    bea0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    bea2:	89 d0                	mov    %edx,%eax
    bea4:	5f                   	pop    %edi
    bea5:	5d                   	pop    %ebp
    bea6:	c3                   	ret    
    bea7:	89 f6                	mov    %esi,%esi
    bea9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000beb0 <strchr>:

char*
strchr(const char *s, char c)
{
    beb0:	55                   	push   %ebp
    beb1:	89 e5                	mov    %esp,%ebp
    beb3:	53                   	push   %ebx
    beb4:	8b 45 08             	mov    0x8(%ebp),%eax
    beb7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    beba:	0f b6 10             	movzbl (%eax),%edx
    bebd:	84 d2                	test   %dl,%dl
    bebf:	74 1d                	je     bede <strchr+0x2e>
    if(*s == c)
    bec1:	38 d3                	cmp    %dl,%bl
    bec3:	89 d9                	mov    %ebx,%ecx
    bec5:	75 0d                	jne    bed4 <strchr+0x24>
    bec7:	eb 17                	jmp    bee0 <strchr+0x30>
    bec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    bed0:	38 ca                	cmp    %cl,%dl
    bed2:	74 0c                	je     bee0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    bed4:	83 c0 01             	add    $0x1,%eax
    bed7:	0f b6 10             	movzbl (%eax),%edx
    beda:	84 d2                	test   %dl,%dl
    bedc:	75 f2                	jne    bed0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    bede:	31 c0                	xor    %eax,%eax
}
    bee0:	5b                   	pop    %ebx
    bee1:	5d                   	pop    %ebp
    bee2:	c3                   	ret    
    bee3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000bef0 <gets>:

char*
gets(char *buf, int max)
{
    bef0:	55                   	push   %ebp
    bef1:	89 e5                	mov    %esp,%ebp
    bef3:	57                   	push   %edi
    bef4:	56                   	push   %esi
    bef5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    bef6:	8d 75 e7             	lea    -0x19(%ebp),%esi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    bef9:	31 db                	xor    %ebx,%ebx
    befb:	bf 01 00 00 00       	mov    $0x1,%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    bf00:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    bf03:	3b 7d 0c             	cmp    0xc(%ebp),%edi
    bf06:	7d 30                	jge    bf38 <gets+0x48>
    cc = read(0, &c, 1);
    bf08:	83 ec 04             	sub    $0x4,%esp
    bf0b:	6a 01                	push   $0x1
    bf0d:	56                   	push   %esi
    bf0e:	6a 00                	push   $0x0
    bf10:	e8 eb 02 00 00       	call   c200 <read>
    if(cc < 1)
    bf15:	83 c4 10             	add    $0x10,%esp
    bf18:	85 c0                	test   %eax,%eax
    bf1a:	7e e7                	jle    bf03 <gets+0x13>
      continue;
    buf[i++] = c;
    bf1c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    bf20:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    bf23:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      continue;
    buf[i++] = c;
    bf25:	88 04 1a             	mov    %al,(%edx,%ebx,1)
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    bf28:	89 fb                	mov    %edi,%ebx
    cc = read(0, &c, 1);
    if(cc < 1)
      continue;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
    bf2a:	74 0c                	je     bf38 <gets+0x48>
    bf2c:	3c 0d                	cmp    $0xd,%al
    bf2e:	74 08                	je     bf38 <gets+0x48>
    bf30:	83 c7 01             	add    $0x1,%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    bf33:	3b 7d 0c             	cmp    0xc(%ebp),%edi
    bf36:	7c d0                	jl     bf08 <gets+0x18>
      continue;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    bf38:	8b 45 08             	mov    0x8(%ebp),%eax
    bf3b:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
    bf3f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    bf42:	5b                   	pop    %ebx
    bf43:	5e                   	pop    %esi
    bf44:	5f                   	pop    %edi
    bf45:	5d                   	pop    %ebp
    bf46:	c3                   	ret    
    bf47:	89 f6                	mov    %esi,%esi
    bf49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000bf50 <stat>:

int
stat(const char *n, struct stat *st)
{
    bf50:	55                   	push   %ebp
    bf51:	89 e5                	mov    %esp,%ebp
    bf53:	56                   	push   %esi
    bf54:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    bf55:	83 ec 08             	sub    $0x8,%esp
    bf58:	6a 00                	push   $0x0
    bf5a:	ff 75 08             	pushl  0x8(%ebp)
    bf5d:	e8 c6 02 00 00       	call   c228 <open>
  if(fd < 0)
    bf62:	83 c4 10             	add    $0x10,%esp
    bf65:	85 c0                	test   %eax,%eax
    bf67:	78 27                	js     bf90 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    bf69:	83 ec 08             	sub    $0x8,%esp
    bf6c:	ff 75 0c             	pushl  0xc(%ebp)
    bf6f:	89 c3                	mov    %eax,%ebx
    bf71:	50                   	push   %eax
    bf72:	e8 c9 02 00 00       	call   c240 <fstat>
    bf77:	89 c6                	mov    %eax,%esi
  close(fd);
    bf79:	89 1c 24             	mov    %ebx,(%esp)
    bf7c:	e8 8f 02 00 00       	call   c210 <close>
  return r;
    bf81:	83 c4 10             	add    $0x10,%esp
    bf84:	89 f0                	mov    %esi,%eax
}
    bf86:	8d 65 f8             	lea    -0x8(%ebp),%esp
    bf89:	5b                   	pop    %ebx
    bf8a:	5e                   	pop    %esi
    bf8b:	5d                   	pop    %ebp
    bf8c:	c3                   	ret    
    bf8d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    bf90:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    bf95:	eb ef                	jmp    bf86 <stat+0x36>
    bf97:	89 f6                	mov    %esi,%esi
    bf99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000bfa0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    bfa0:	55                   	push   %ebp
    bfa1:	89 e5                	mov    %esp,%ebp
    bfa3:	53                   	push   %ebx
    bfa4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    bfa7:	0f be 11             	movsbl (%ecx),%edx
    bfaa:	8d 42 d0             	lea    -0x30(%edx),%eax
    bfad:	3c 09                	cmp    $0x9,%al
    bfaf:	b8 00 00 00 00       	mov    $0x0,%eax
    bfb4:	77 1f                	ja     bfd5 <atoi+0x35>
    bfb6:	8d 76 00             	lea    0x0(%esi),%esi
    bfb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    bfc0:	8d 04 80             	lea    (%eax,%eax,4),%eax
    bfc3:	83 c1 01             	add    $0x1,%ecx
    bfc6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    bfca:	0f be 11             	movsbl (%ecx),%edx
    bfcd:	8d 5a d0             	lea    -0x30(%edx),%ebx
    bfd0:	80 fb 09             	cmp    $0x9,%bl
    bfd3:	76 eb                	jbe    bfc0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    bfd5:	5b                   	pop    %ebx
    bfd6:	5d                   	pop    %ebp
    bfd7:	c3                   	ret    
    bfd8:	90                   	nop
    bfd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0000bfe0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    bfe0:	55                   	push   %ebp
    bfe1:	89 e5                	mov    %esp,%ebp
    bfe3:	56                   	push   %esi
    bfe4:	53                   	push   %ebx
    bfe5:	8b 5d 10             	mov    0x10(%ebp),%ebx
    bfe8:	8b 45 08             	mov    0x8(%ebp),%eax
    bfeb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    bfee:	85 db                	test   %ebx,%ebx
    bff0:	7e 14                	jle    c006 <memmove+0x26>
    bff2:	31 d2                	xor    %edx,%edx
    bff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    bff8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    bffc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    bfff:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    c002:	39 da                	cmp    %ebx,%edx
    c004:	75 f2                	jne    bff8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    c006:	5b                   	pop    %ebx
    c007:	5e                   	pop    %esi
    c008:	5d                   	pop    %ebp
    c009:	c3                   	ret    
    c00a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0000c010 <itoa>:

/*
 * Set buf to string representation of number in int.
 */
int itoa(char * buf, int n)
{
    c010:	55                   	push   %ebp
    c011:	89 e5                	mov    %esp,%ebp
    c013:	57                   	push   %edi
    c014:	56                   	push   %esi
    c015:	53                   	push   %ebx
    c016:	83 ec 04             	sub    $0x4,%esp
    c019:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    int i = n;
    int length = 0;

    while (i > 0) {
    c01c:	83 f9 00             	cmp    $0x0,%ecx
    c01f:	7e 76                	jle    c097 <itoa+0x87>
    c021:	89 cb                	mov    %ecx,%ebx
    c023:	31 f6                	xor    %esi,%esi
        length++;
        i /= 10;
    c025:	bf 67 66 66 66       	mov    $0x66666667,%edi
    c02a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    c030:	89 d8                	mov    %ebx,%eax
    c032:	c1 fb 1f             	sar    $0x1f,%ebx
{
    int i = n;
    int length = 0;

    while (i > 0) {
        length++;
    c035:	83 c6 01             	add    $0x1,%esi
        i /= 10;
    c038:	f7 ef                	imul   %edi
    c03a:	c1 fa 02             	sar    $0x2,%edx
int itoa(char * buf, int n)
{
    int i = n;
    int length = 0;

    while (i > 0) {
    c03d:	29 da                	sub    %ebx,%edx
    c03f:	89 d3                	mov    %edx,%ebx
    c041:	75 ed                	jne    c030 <itoa+0x20>
        length++;
    c043:	89 f3                	mov    %esi,%ebx
    c045:	89 75 f0             	mov    %esi,-0x10(%ebp)
    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
        buf[i - 1] = (n % 10) + '0';
    c048:	bf 67 66 66 66       	mov    $0x66666667,%edi
    c04d:	8b 75 08             	mov    0x8(%ebp),%esi
    c050:	eb 0a                	jmp    c05c <itoa+0x4c>
    c052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
    c058:	85 db                	test   %ebx,%ebx
    c05a:	7e 25                	jle    c081 <itoa+0x71>
        buf[i - 1] = (n % 10) + '0';
    c05c:	89 c8                	mov    %ecx,%eax
    c05e:	f7 ef                	imul   %edi
    c060:	89 c8                	mov    %ecx,%eax
    c062:	c1 f8 1f             	sar    $0x1f,%eax
    c065:	c1 fa 02             	sar    $0x2,%edx
    c068:	29 c2                	sub    %eax,%edx
    c06a:	8d 04 92             	lea    (%edx,%edx,4),%eax
    c06d:	01 c0                	add    %eax,%eax
    c06f:	29 c1                	sub    %eax,%ecx
    c071:	83 c1 30             	add    $0x30,%ecx
    c074:	88 4c 1e ff          	mov    %cl,-0x1(%esi,%ebx,1)

    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
    c078:	83 eb 01             	sub    $0x1,%ebx
    c07b:	85 d2                	test   %edx,%edx
        buf[i - 1] = (n % 10) + '0';
        n /= 10;
    c07d:	89 d1                	mov    %edx,%ecx

    if (n == 0) {
        buf[0] = '0';
        length++;
    }
    for (i = length; n > 0 && i > 0; i--) {
    c07f:	7f d7                	jg     c058 <itoa+0x48>
    c081:	8b 75 f0             	mov    -0x10(%ebp),%esi
    c084:	89 f0                	mov    %esi,%eax
        buf[i - 1] = (n % 10) + '0';
        n /= 10;
    }
    buf[length] = '\0';
    c086:	8b 7d 08             	mov    0x8(%ebp),%edi
    c089:	c6 04 07 00          	movb   $0x0,(%edi,%eax,1)
    return length;
}
    c08d:	83 c4 04             	add    $0x4,%esp
    c090:	89 f0                	mov    %esi,%eax
    c092:	5b                   	pop    %ebx
    c093:	5e                   	pop    %esi
    c094:	5f                   	pop    %edi
    c095:	5d                   	pop    %ebp
    c096:	c3                   	ret    
    while (i > 0) {
        length++;
        i /= 10;
    }

    if (n == 0) {
    c097:	75 12                	jne    c0ab <itoa+0x9b>
        buf[0] = '0';
    c099:	8b 45 08             	mov    0x8(%ebp),%eax
        length++;
    c09c:	be 01 00 00 00       	mov    $0x1,%esi
        length++;
        i /= 10;
    }

    if (n == 0) {
        buf[0] = '0';
    c0a1:	c6 00 30             	movb   $0x30,(%eax)
    c0a4:	b8 01 00 00 00       	mov    $0x1,%eax
    c0a9:	eb db                	jmp    c086 <itoa+0x76>
    while (i > 0) {
        length++;
        i /= 10;
    }

    if (n == 0) {
    c0ab:	31 c0                	xor    %eax,%eax
 * Set buf to string representation of number in int.
 */
int itoa(char * buf, int n)
{
    int i = n;
    int length = 0;
    c0ad:	31 f6                	xor    %esi,%esi
    c0af:	eb d5                	jmp    c086 <itoa+0x76>
    c0b1:	eb 0d                	jmp    c0c0 <strcat>
    c0b3:	90                   	nop
    c0b4:	90                   	nop
    c0b5:	90                   	nop
    c0b6:	90                   	nop
    c0b7:	90                   	nop
    c0b8:	90                   	nop
    c0b9:	90                   	nop
    c0ba:	90                   	nop
    c0bb:	90                   	nop
    c0bc:	90                   	nop
    c0bd:	90                   	nop
    c0be:	90                   	nop
    c0bf:	90                   	nop

0000c0c0 <strcat>:
    buf[length] = '\0';
    return length;
}

char* strcat(char* dest, const char* source)
{
    c0c0:	55                   	push   %ebp
    c0c1:	89 e5                	mov    %esp,%ebp
    c0c3:	57                   	push   %edi
    c0c4:	56                   	push   %esi
    c0c5:	8b 45 08             	mov    0x8(%ebp),%eax
    c0c8:	53                   	push   %ebx
    c0c9:	8b 75 0c             	mov    0xc(%ebp),%esi
        int i, j;

        for (i = 0; dest[i] != '\0'; i++);
    c0cc:	80 38 00             	cmpb   $0x0,(%eax)
    c0cf:	74 38                	je     c109 <strcat+0x49>
    c0d1:	31 c9                	xor    %ecx,%ecx
    c0d3:	90                   	nop
    c0d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c0d8:	83 c1 01             	add    $0x1,%ecx
    c0db:	80 3c 08 00          	cmpb   $0x0,(%eax,%ecx,1)
    c0df:	89 ca                	mov    %ecx,%edx
    c0e1:	75 f5                	jne    c0d8 <strcat+0x18>

        for (j = 0; source[j] != '\0'; j++)
    c0e3:	0f b6 1e             	movzbl (%esi),%ebx
    c0e6:	84 db                	test   %bl,%bl
    c0e8:	74 16                	je     c100 <strcat+0x40>
    c0ea:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
    c0ed:	31 d2                	xor    %edx,%edx
    c0ef:	90                   	nop
                dest[i + j] = source[j];
    c0f0:	88 1c 17             	mov    %bl,(%edi,%edx,1)
{
        int i, j;

        for (i = 0; dest[i] != '\0'; i++);

        for (j = 0; source[j] != '\0'; j++)
    c0f3:	83 c2 01             	add    $0x1,%edx
    c0f6:	0f b6 1c 16          	movzbl (%esi,%edx,1),%ebx
    c0fa:	84 db                	test   %bl,%bl
    c0fc:	75 f2                	jne    c0f0 <strcat+0x30>
    c0fe:	01 ca                	add    %ecx,%edx
                dest[i + j] = source[j];

        dest[i + j] = '\0';
    c100:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)

        return dest;
}
    c104:	5b                   	pop    %ebx
    c105:	5e                   	pop    %esi
    c106:	5f                   	pop    %edi
    c107:	5d                   	pop    %ebp
    c108:	c3                   	ret    

char* strcat(char* dest, const char* source)
{
        int i, j;

        for (i = 0; dest[i] != '\0'; i++);
    c109:	31 d2                	xor    %edx,%edx
    c10b:	31 c9                	xor    %ecx,%ecx
    c10d:	eb d4                	jmp    c0e3 <strcat+0x23>
    c10f:	90                   	nop

0000c110 <strstr>:

        return dest;
}

char * strstr(char * src, char * needle)
{
    c110:	55                   	push   %ebp
    c111:	89 e5                	mov    %esp,%ebp
    c113:	57                   	push   %edi
    c114:	56                   	push   %esi
    c115:	53                   	push   %ebx
    c116:	83 ec 10             	sub    $0x10,%esp
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    c119:	8b 45 0c             	mov    0xc(%ebp),%eax

        return dest;
}

char * strstr(char * src, char * needle)
{
    c11c:	8b 7d 08             	mov    0x8(%ebp),%edi
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    c11f:	0f b6 00             	movzbl (%eax),%eax
    c122:	84 c0                	test   %al,%al
    c124:	88 45 f3             	mov    %al,-0xd(%ebp)
    c127:	0f 84 a0 00 00 00    	je     c1cd <strstr+0xbd>
    c12d:	8b 55 0c             	mov    0xc(%ebp),%edx
    c130:	31 c0                	xor    %eax,%eax
    c132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    c138:	83 c0 01             	add    $0x1,%eax
    c13b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    c13f:	75 f7                	jne    c138 <strstr+0x28>
    c141:	89 45 e8             	mov    %eax,-0x18(%ebp)
    c144:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    c147:	0f b6 07             	movzbl (%edi),%eax
    c14a:	84 c0                	test   %al,%al
    c14c:	74 68                	je     c1b6 <strstr+0xa6>
    c14e:	31 d2                	xor    %edx,%edx
    c150:	83 c2 01             	add    $0x1,%edx
    c153:	80 3c 17 00          	cmpb   $0x0,(%edi,%edx,1)
    c157:	75 f7                	jne    c150 <strstr+0x40>
    c159:	8d 1c 17             	lea    (%edi,%edx,1),%ebx
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    c15c:	84 c0                	test   %al,%al
    c15e:	89 5d ec             	mov    %ebx,-0x14(%ebp)
    c161:	74 4d                	je     c1b0 <strstr+0xa0>
    c163:	90                   	nop
    c164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c168:	38 45 f3             	cmp    %al,-0xd(%ebp)
    c16b:	75 34                	jne    c1a1 <strstr+0x91>
    c16d:	8b 5d e8             	mov    -0x18(%ebp),%ebx
    c170:	83 eb 01             	sub    $0x1,%ebx
    c173:	74 4b                	je     c1c0 <strstr+0xb0>
    c175:	8b 55 0c             	mov    0xc(%ebp),%edx
    c178:	89 f8                	mov    %edi,%eax
    c17a:	eb 10                	jmp    c18c <strstr+0x7c>
    c17c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c180:	3a 4a 01             	cmp    0x1(%edx),%cl
    c183:	75 1c                	jne    c1a1 <strstr+0x91>
    c185:	83 eb 01             	sub    $0x1,%ebx
    c188:	89 f2                	mov    %esi,%edx
    c18a:	74 34                	je     c1c0 <strstr+0xb0>
    p++, q++;
    c18c:	83 c0 01             	add    $0x1,%eax
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    c18f:	0f b6 08             	movzbl (%eax),%ecx
    p++, q++;
    c192:	8d 72 01             	lea    0x1(%edx),%esi
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    c195:	84 c9                	test   %cl,%cl
    c197:	75 e7                	jne    c180 <strstr+0x70>
    c199:	0f b6 42 01          	movzbl 0x1(%edx),%eax
  uint needle_size = strlen(needle);
  uint src_len = strlen(src);

  for(i = 0; i < src_len; i++)
  {
    if(0 == strncmp(src, needle, needle_size))
    c19d:	84 c0                	test   %al,%al
    c19f:	74 1f                	je     c1c0 <strstr+0xb0>
    {
      return src + needle_size;
    }
    src++;
    c1a1:	83 c7 01             	add    $0x1,%edi
{
  uint i = 0;
  uint needle_size = strlen(needle);
  uint src_len = strlen(src);

  for(i = 0; i < src_len; i++)
    c1a4:	3b 7d ec             	cmp    -0x14(%ebp),%edi
    c1a7:	74 0d                	je     c1b6 <strstr+0xa6>
    c1a9:	0f b6 07             	movzbl (%edi),%eax
}

int
strncmp(const char *p, const char *q, int n)
{
  while(*p && *p == *q && --n)
    c1ac:	84 c0                	test   %al,%al
    c1ae:	75 b8                	jne    c168 <strstr+0x58>
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    c1b0:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    c1b4:	eb e7                	jmp    c19d <strstr+0x8d>
      return src + needle_size;
    }
    src++;
  }
  return 0;
}
    c1b6:	83 c4 10             	add    $0x10,%esp
    {
      return src + needle_size;
    }
    src++;
  }
  return 0;
    c1b9:	31 c0                	xor    %eax,%eax
}
    c1bb:	5b                   	pop    %ebx
    c1bc:	5e                   	pop    %esi
    c1bd:	5f                   	pop    %edi
    c1be:	5d                   	pop    %ebp
    c1bf:	c3                   	ret    

  for(i = 0; i < src_len; i++)
  {
    if(0 == strncmp(src, needle, needle_size))
    {
      return src + needle_size;
    c1c0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    }
    src++;
  }
  return 0;
}
    c1c3:	83 c4 10             	add    $0x10,%esp
    c1c6:	5b                   	pop    %ebx
    c1c7:	5e                   	pop    %esi

  for(i = 0; i < src_len; i++)
  {
    if(0 == strncmp(src, needle, needle_size))
    {
      return src + needle_size;
    c1c8:	01 f8                	add    %edi,%eax
    }
    src++;
  }
  return 0;
}
    c1ca:	5f                   	pop    %edi
    c1cb:	5d                   	pop    %ebp
    c1cc:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    c1cd:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    c1d4:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    c1db:	e9 67 ff ff ff       	jmp    c147 <strstr+0x37>

0000c1e0 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    c1e0:	b8 01 00 00 00       	mov    $0x1,%eax
    c1e5:	cd 40                	int    $0x40
    c1e7:	c3                   	ret    

0000c1e8 <exit>:
SYSCALL(exit)
    c1e8:	b8 02 00 00 00       	mov    $0x2,%eax
    c1ed:	cd 40                	int    $0x40
    c1ef:	c3                   	ret    

0000c1f0 <wait>:
SYSCALL(wait)
    c1f0:	b8 03 00 00 00       	mov    $0x3,%eax
    c1f5:	cd 40                	int    $0x40
    c1f7:	c3                   	ret    

0000c1f8 <pipe>:
SYSCALL(pipe)
    c1f8:	b8 04 00 00 00       	mov    $0x4,%eax
    c1fd:	cd 40                	int    $0x40
    c1ff:	c3                   	ret    

0000c200 <read>:
SYSCALL(read)
    c200:	b8 05 00 00 00       	mov    $0x5,%eax
    c205:	cd 40                	int    $0x40
    c207:	c3                   	ret    

0000c208 <write>:
SYSCALL(write)
    c208:	b8 10 00 00 00       	mov    $0x10,%eax
    c20d:	cd 40                	int    $0x40
    c20f:	c3                   	ret    

0000c210 <close>:
SYSCALL(close)
    c210:	b8 15 00 00 00       	mov    $0x15,%eax
    c215:	cd 40                	int    $0x40
    c217:	c3                   	ret    

0000c218 <kill>:
SYSCALL(kill)
    c218:	b8 06 00 00 00       	mov    $0x6,%eax
    c21d:	cd 40                	int    $0x40
    c21f:	c3                   	ret    

0000c220 <exec>:
SYSCALL(exec)
    c220:	b8 07 00 00 00       	mov    $0x7,%eax
    c225:	cd 40                	int    $0x40
    c227:	c3                   	ret    

0000c228 <open>:
SYSCALL(open)
    c228:	b8 0f 00 00 00       	mov    $0xf,%eax
    c22d:	cd 40                	int    $0x40
    c22f:	c3                   	ret    

0000c230 <mknod>:
SYSCALL(mknod)
    c230:	b8 11 00 00 00       	mov    $0x11,%eax
    c235:	cd 40                	int    $0x40
    c237:	c3                   	ret    

0000c238 <unlink>:
SYSCALL(unlink)
    c238:	b8 12 00 00 00       	mov    $0x12,%eax
    c23d:	cd 40                	int    $0x40
    c23f:	c3                   	ret    

0000c240 <fstat>:
SYSCALL(fstat)
    c240:	b8 08 00 00 00       	mov    $0x8,%eax
    c245:	cd 40                	int    $0x40
    c247:	c3                   	ret    

0000c248 <link>:
SYSCALL(link)
    c248:	b8 13 00 00 00       	mov    $0x13,%eax
    c24d:	cd 40                	int    $0x40
    c24f:	c3                   	ret    

0000c250 <mkdir>:
SYSCALL(mkdir)
    c250:	b8 14 00 00 00       	mov    $0x14,%eax
    c255:	cd 40                	int    $0x40
    c257:	c3                   	ret    

0000c258 <chdir>:
SYSCALL(chdir)
    c258:	b8 09 00 00 00       	mov    $0x9,%eax
    c25d:	cd 40                	int    $0x40
    c25f:	c3                   	ret    

0000c260 <dup>:
SYSCALL(dup)
    c260:	b8 0a 00 00 00       	mov    $0xa,%eax
    c265:	cd 40                	int    $0x40
    c267:	c3                   	ret    

0000c268 <getpid>:
SYSCALL(getpid)
    c268:	b8 0b 00 00 00       	mov    $0xb,%eax
    c26d:	cd 40                	int    $0x40
    c26f:	c3                   	ret    

0000c270 <sbrk>:
SYSCALL(sbrk)
    c270:	b8 0c 00 00 00       	mov    $0xc,%eax
    c275:	cd 40                	int    $0x40
    c277:	c3                   	ret    

0000c278 <sleep>:
SYSCALL(sleep)
    c278:	b8 0d 00 00 00       	mov    $0xd,%eax
    c27d:	cd 40                	int    $0x40
    c27f:	c3                   	ret    

0000c280 <uptime>:
SYSCALL(uptime)
    c280:	b8 0e 00 00 00       	mov    $0xe,%eax
    c285:	cd 40                	int    $0x40
    c287:	c3                   	ret    

0000c288 <mount>:
SYSCALL(mount)
    c288:	b8 16 00 00 00       	mov    $0x16,%eax
    c28d:	cd 40                	int    $0x40
    c28f:	c3                   	ret    

0000c290 <umount>:
SYSCALL(umount)
    c290:	b8 17 00 00 00       	mov    $0x17,%eax
    c295:	cd 40                	int    $0x40
    c297:	c3                   	ret    

0000c298 <printmounts>:
SYSCALL(printmounts)
    c298:	b8 18 00 00 00       	mov    $0x18,%eax
    c29d:	cd 40                	int    $0x40
    c29f:	c3                   	ret    

0000c2a0 <printdevices>:
SYSCALL(printdevices)
    c2a0:	b8 19 00 00 00       	mov    $0x19,%eax
    c2a5:	cd 40                	int    $0x40
    c2a7:	c3                   	ret    

0000c2a8 <unshare>:
SYSCALL(unshare)
    c2a8:	b8 1a 00 00 00       	mov    $0x1a,%eax
    c2ad:	cd 40                	int    $0x40
    c2af:	c3                   	ret    

0000c2b0 <usleep>:
SYSCALL(usleep)
    c2b0:	b8 1b 00 00 00       	mov    $0x1b,%eax
    c2b5:	cd 40                	int    $0x40
    c2b7:	c3                   	ret    

0000c2b8 <ioctl>:
SYSCALL(ioctl)
    c2b8:	b8 1c 00 00 00       	mov    $0x1c,%eax
    c2bd:	cd 40                	int    $0x40
    c2bf:	c3                   	ret    

0000c2c0 <getppid>:
SYSCALL(getppid)
    c2c0:	b8 1d 00 00 00       	mov    $0x1d,%eax
    c2c5:	cd 40                	int    $0x40
    c2c7:	c3                   	ret    

0000c2c8 <getcpu>:
SYSCALL(getcpu)
    c2c8:	b8 1e 00 00 00       	mov    $0x1e,%eax
    c2cd:	cd 40                	int    $0x40
    c2cf:	c3                   	ret    

0000c2d0 <getmem>:
SYSCALL(getmem)
    c2d0:	b8 1f 00 00 00       	mov    $0x1f,%eax
    c2d5:	cd 40                	int    $0x40
    c2d7:	c3                   	ret    

0000c2d8 <kmemtest>:
SYSCALL(kmemtest)
    c2d8:	b8 20 00 00 00       	mov    $0x20,%eax
    c2dd:	cd 40                	int    $0x40
    c2df:	c3                   	ret    

0000c2e0 <printint>:
  return write(fd, &c, 1);
}

static int
printint(int fd, int xx, int base, int sgn)
{
    c2e0:	55                   	push   %ebp
    c2e1:	89 e5                	mov    %esp,%ebp
    c2e3:	57                   	push   %edi
    c2e4:	56                   	push   %esi
    c2e5:	53                   	push   %ebx
    c2e6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    c2e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  return write(fd, &c, 1);
}

static int
printint(int fd, int xx, int base, int sgn)
{
    c2ec:	89 45 c0             	mov    %eax,-0x40(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    c2ef:	85 db                	test   %ebx,%ebx
    c2f1:	0f 84 91 00 00 00    	je     c388 <printint+0xa8>
    c2f7:	89 d0                	mov    %edx,%eax
    c2f9:	c1 e8 1f             	shr    $0x1f,%eax
    c2fc:	84 c0                	test   %al,%al
    c2fe:	0f 84 84 00 00 00    	je     c388 <printint+0xa8>
    neg = 1;
    x = -xx;
    c304:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    c306:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    c30d:	f7 d8                	neg    %eax
  } else {
    x = xx;
  }

  i = 0;
    c30f:	31 ff                	xor    %edi,%edi
    c311:	8d 75 c7             	lea    -0x39(%ebp),%esi
    c314:	eb 0c                	jmp    c322 <printint+0x42>
    c316:	8d 76 00             	lea    0x0(%esi),%esi
    c319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  do{
    buf[i++] = digits[x % base];
    c320:	89 df                	mov    %ebx,%edi
    c322:	31 d2                	xor    %edx,%edx
    c324:	8d 5f 01             	lea    0x1(%edi),%ebx
    c327:	f7 f1                	div    %ecx
    c329:	0f b6 92 a8 1a 01 00 	movzbl 0x11aa8(%edx),%edx
  }while((x /= base) != 0);
    c330:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    c332:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    c335:	75 e9                	jne    c320 <printint+0x40>
  if(neg)
    c337:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    c33a:	85 c0                	test   %eax,%eax
    c33c:	74 08                	je     c346 <printint+0x66>
    buf[i++] = '-';
    c33e:	c6 44 1d c8 2d       	movb   $0x2d,-0x38(%ebp,%ebx,1)
    c343:	8d 5f 02             	lea    0x2(%edi),%ebx
    c346:	8d 7d d8             	lea    -0x28(%ebp),%edi
    c349:	8d 44 1d c7          	lea    -0x39(%ebp,%ebx,1),%eax
    c34d:	89 fa                	mov    %edi,%edx
    c34f:	90                   	nop

  char str[16];
  int j = 0;
  while(--i >= 0) {
      str[j++] = buf[i];
    c350:	0f b6 08             	movzbl (%eax),%ecx
    c353:	83 e8 01             	sub    $0x1,%eax
    c356:	83 c2 01             	add    $0x1,%edx
    c359:	88 4a ff             	mov    %cl,-0x1(%edx)
  if(neg)
    buf[i++] = '-';

  char str[16];
  int j = 0;
  while(--i >= 0) {
    c35c:	39 f0                	cmp    %esi,%eax
    c35e:	75 f0                	jne    c350 <printint+0x70>
      str[j++] = buf[i];
  }
  str[j] = '\0';
  
  return write(fd, str, strlen(str));
    c360:	83 ec 0c             	sub    $0xc,%esp
  char str[16];
  int j = 0;
  while(--i >= 0) {
      str[j++] = buf[i];
  }
  str[j] = '\0';
    c363:	c6 44 1d d8 00       	movb   $0x0,-0x28(%ebp,%ebx,1)
  
  return write(fd, str, strlen(str));
    c368:	57                   	push   %edi
    c369:	e8 f2 fa ff ff       	call   be60 <strlen>
    c36e:	83 c4 0c             	add    $0xc,%esp
    c371:	50                   	push   %eax
    c372:	57                   	push   %edi
    c373:	ff 75 c0             	pushl  -0x40(%ebp)
    c376:	e8 8d fe ff ff       	call   c208 <write>
}
    c37b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    c37e:	5b                   	pop    %ebx
    c37f:	5e                   	pop    %esi
    c380:	5f                   	pop    %edi
    c381:	5d                   	pop    %ebp
    c382:	c3                   	ret    
    c383:	90                   	nop
    c384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    c388:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    c38a:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    c391:	e9 79 ff ff ff       	jmp    c30f <printint+0x2f>
    c396:	8d 76 00             	lea    0x0(%esi),%esi
    c399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000c3a0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
int
printf(int fd, const char *fmt, ...)
{
    c3a0:	55                   	push   %ebp
    c3a1:	89 e5                	mov    %esp,%ebp
    c3a3:	57                   	push   %edi
    c3a4:	56                   	push   %esi
    c3a5:	53                   	push   %ebx
    c3a6:	83 ec 2c             	sub    $0x2c,%esp
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c3a9:	8b 75 0c             	mov    0xc(%ebp),%esi
    c3ac:	0f b6 06             	movzbl (%esi),%eax
    c3af:	84 c0                	test   %al,%al
    c3b1:	0f 84 90 01 00 00    	je     c547 <printf+0x1a7>
    c3b7:	8d 5d 10             	lea    0x10(%ebp),%ebx
    c3ba:	31 ff                	xor    %edi,%edi
    c3bc:	31 d2                	xor    %edx,%edx
    c3be:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    c3c1:	31 db                	xor    %ebx,%ebx
    c3c3:	eb 39                	jmp    c3fe <printf+0x5e>
    c3c5:	8d 76 00             	lea    0x0(%esi),%esi
    num_chars = 0;
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    c3c8:	83 f9 25             	cmp    $0x25,%ecx
    c3cb:	0f 84 af 00 00 00    	je     c480 <printf+0xe0>
    c3d1:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    c3d4:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    c3d7:	83 ec 04             	sub    $0x4,%esp
    c3da:	6a 01                	push   $0x1
    c3dc:	50                   	push   %eax
    c3dd:	ff 75 08             	pushl  0x8(%ebp)
    c3e0:	e8 23 fe ff ff       	call   c208 <write>
    c3e5:	83 c4 10             	add    $0x10,%esp
        // Unknown % sequence.  Print it to draw attention.
        num_chars = printunknown(fd, c);
      }
      state = 0;
    }
    if (num_chars < 0) {
    c3e8:	85 c0                	test   %eax,%eax
    c3ea:	78 35                	js     c421 <printf+0x81>
    c3ec:	8b 75 0c             	mov    0xc(%ebp),%esi
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c3ef:	83 c3 01             	add    $0x1,%ebx
      state = 0;
    }
    if (num_chars < 0) {
      return num_chars;
    }
    retval += num_chars;
    c3f2:	01 c7                	add    %eax,%edi
    c3f4:	31 d2                	xor    %edx,%edx
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c3f6:	0f b6 04 1e          	movzbl (%esi,%ebx,1),%eax
    c3fa:	84 c0                	test   %al,%al
    c3fc:	74 21                	je     c41f <printf+0x7f>
    num_chars = 0;
    c = fmt[i] & 0xff;
    c3fe:	0f be c8             	movsbl %al,%ecx
    if(state == 0){
    c401:	85 d2                	test   %edx,%edx

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    num_chars = 0;
    c = fmt[i] & 0xff;
    c403:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c406:	0f b6 c8             	movzbl %al,%ecx
    if(state == 0){
    c409:	74 bd                	je     c3c8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        num_chars = putc(fd, c);
      }
    } else if(state == '%'){
    c40b:	83 fa 25             	cmp    $0x25,%edx
    c40e:	74 20                	je     c430 <printf+0x90>
    c410:	31 c0                	xor    %eax,%eax
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c412:	83 c3 01             	add    $0x1,%ebx
      state = 0;
    }
    if (num_chars < 0) {
      return num_chars;
    }
    retval += num_chars;
    c415:	01 c7                	add    %eax,%edi
  int num_chars = 0;
  int retval = 0;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c417:	0f b6 04 1e          	movzbl (%esi,%ebx,1),%eax
    c41b:	84 c0                	test   %al,%al
    c41d:	75 df                	jne    c3fe <printf+0x5e>
      state = 0;
    }
    if (num_chars < 0) {
      return num_chars;
    }
    retval += num_chars;
    c41f:	89 f8                	mov    %edi,%eax
  }
  return retval;
}
    c421:	8d 65 f4             	lea    -0xc(%ebp),%esp
    c424:	5b                   	pop    %ebx
    c425:	5e                   	pop    %esi
    c426:	5f                   	pop    %edi
    c427:	5d                   	pop    %ebp
    c428:	c3                   	ret    
    c429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        state = '%';
      } else {
        num_chars = putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    c430:	83 f9 64             	cmp    $0x64,%ecx
    c433:	0f 84 7f 00 00 00    	je     c4b8 <printf+0x118>
        num_chars = printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    c439:	0f be d0             	movsbl %al,%edx
    c43c:	81 e2 f7 00 00 00    	and    $0xf7,%edx
    c442:	83 fa 70             	cmp    $0x70,%edx
    c445:	74 49                	je     c490 <printf+0xf0>
        num_chars = printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    c447:	83 f9 73             	cmp    $0x73,%ecx
    c44a:	0f 84 98 00 00 00    	je     c4e8 <printf+0x148>
        s = (char*)*ap;
        ap++;
        num_chars = printstr(fd, s);
      } else if(c == 'c'){
    c450:	83 f9 63             	cmp    $0x63,%ecx
    c453:	0f 84 c7 00 00 00    	je     c520 <printf+0x180>
        num_chars = putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    c459:	83 f9 25             	cmp    $0x25,%ecx
    c45c:	74 6a                	je     c4c8 <printf+0x128>
static int
printunknown(int fd, char c)
{
    char str[2];
    str[0] = '%';
    str[1] = c;
    c45e:	88 45 e7             	mov    %al,-0x19(%ebp)
 
    return write(fd, str, 2);
    c461:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    c464:	83 ec 04             	sub    $0x4,%esp
    c467:	6a 02                	push   $0x2

static int
printunknown(int fd, char c)
{
    char str[2];
    str[0] = '%';
    c469:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    str[1] = c;
 
    return write(fd, str, 2);
    c46d:	50                   	push   %eax
    c46e:	ff 75 08             	pushl  0x8(%ebp)
    c471:	e8 92 fd ff ff       	call   c208 <write>
    c476:	83 c4 10             	add    $0x10,%esp
    c479:	e9 6a ff ff ff       	jmp    c3e8 <printf+0x48>
    c47e:	66 90                	xchg   %ax,%ax
  for(i = 0; fmt[i]; i++){
    num_chars = 0;
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    c480:	ba 25 00 00 00       	mov    $0x25,%edx
    c485:	31 c0                	xor    %eax,%eax
    c487:	eb 89                	jmp    c412 <printf+0x72>
    c489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        num_chars = printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        num_chars = printint(fd, *ap, 16, 0);
    c490:	83 ec 0c             	sub    $0xc,%esp
    c493:	b9 10 00 00 00       	mov    $0x10,%ecx
    c498:	6a 00                	push   $0x0
    c49a:	8b 75 d0             	mov    -0x30(%ebp),%esi
    c49d:	8b 45 08             	mov    0x8(%ebp),%eax
    c4a0:	8b 16                	mov    (%esi),%edx
        ap++;
    c4a2:	83 c6 04             	add    $0x4,%esi
    } else if(state == '%'){
      if(c == 'd'){
        num_chars = printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        num_chars = printint(fd, *ap, 16, 0);
    c4a5:	e8 36 fe ff ff       	call   c2e0 <printint>
        ap++;
    c4aa:	89 75 d0             	mov    %esi,-0x30(%ebp)
    c4ad:	83 c4 10             	add    $0x10,%esp
    c4b0:	e9 33 ff ff ff       	jmp    c3e8 <printf+0x48>
    c4b5:	8d 76 00             	lea    0x0(%esi),%esi
      } else {
        num_chars = putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        num_chars = printint(fd, *ap, 10, 1);
    c4b8:	83 ec 0c             	sub    $0xc,%esp
    c4bb:	b9 0a 00 00 00       	mov    $0xa,%ecx
    c4c0:	6a 01                	push   $0x1
    c4c2:	eb d6                	jmp    c49a <printf+0xfa>
    c4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c4c8:	88 45 e5             	mov    %al,-0x1b(%ebp)
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    c4cb:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    c4ce:	83 ec 04             	sub    $0x4,%esp
    c4d1:	6a 01                	push   $0x1
    c4d3:	50                   	push   %eax
    c4d4:	ff 75 08             	pushl  0x8(%ebp)
    c4d7:	e8 2c fd ff ff       	call   c208 <write>
    c4dc:	83 c4 10             	add    $0x10,%esp
    c4df:	e9 04 ff ff ff       	jmp    c3e8 <printf+0x48>
    c4e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        ap++;
      } else if(c == 'x' || c == 'p'){
        num_chars = printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    c4e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c4eb:	8b 30                	mov    (%eax),%esi
        ap++;
    c4ed:	83 c0 04             	add    $0x4,%eax
    c4f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
static int
printstr(int fd, char *str)
{

  if (str == 0)
    str = "(null)";
    c4f3:	b8 a0 1a 01 00       	mov    $0x11aa0,%eax
    c4f8:	85 f6                	test   %esi,%esi
    c4fa:	0f 44 f0             	cmove  %eax,%esi

  return write(fd , str, strlen(str));
    c4fd:	83 ec 0c             	sub    $0xc,%esp
    c500:	56                   	push   %esi
    c501:	e8 5a f9 ff ff       	call   be60 <strlen>
    c506:	83 c4 0c             	add    $0xc,%esp
    c509:	50                   	push   %eax
    c50a:	56                   	push   %esi
    c50b:	ff 75 08             	pushl  0x8(%ebp)
    c50e:	e8 f5 fc ff ff       	call   c208 <write>
    c513:	83 c4 10             	add    $0x10,%esp
    c516:	e9 cd fe ff ff       	jmp    c3e8 <printf+0x48>
    c51b:	90                   	nop
    c51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c520:	8b 75 d0             	mov    -0x30(%ebp),%esi
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    c523:	83 ec 04             	sub    $0x4,%esp
    c526:	8b 06                	mov    (%esi),%eax
    c528:	6a 01                	push   $0x1
        s = (char*)*ap;
        ap++;
        num_chars = printstr(fd, s);
      } else if(c == 'c'){
        num_chars = putc(fd, *ap);
        ap++;
    c52a:	83 c6 04             	add    $0x4,%esi
    c52d:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static int
putc(int fd, char c)
{
  return write(fd, &c, 1);
    c530:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    c533:	50                   	push   %eax
    c534:	ff 75 08             	pushl  0x8(%ebp)
    c537:	e8 cc fc ff ff       	call   c208 <write>
        s = (char*)*ap;
        ap++;
        num_chars = printstr(fd, s);
      } else if(c == 'c'){
        num_chars = putc(fd, *ap);
        ap++;
    c53c:	89 75 d0             	mov    %esi,-0x30(%ebp)
    c53f:	83 c4 10             	add    $0x10,%esp
    c542:	e9 a1 fe ff ff       	jmp    c3e8 <printf+0x48>
{
  char *s;
  int c, i, state;
  uint *ap;
  int num_chars = 0;
  int retval = 0;
    c547:	31 c0                	xor    %eax,%eax
    c549:	e9 d3 fe ff ff       	jmp    c421 <printf+0x81>
    c54e:	66 90                	xchg   %ax,%ax

0000c550 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    c550:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    c551:	a1 60 43 01 00       	mov    0x14360,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    c556:	89 e5                	mov    %esp,%ebp
    c558:	57                   	push   %edi
    c559:	56                   	push   %esi
    c55a:	53                   	push   %ebx
    c55b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    c55e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    c560:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    c563:	39 c8                	cmp    %ecx,%eax
    c565:	73 19                	jae    c580 <free+0x30>
    c567:	89 f6                	mov    %esi,%esi
    c569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c570:	39 d1                	cmp    %edx,%ecx
    c572:	72 1c                	jb     c590 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    c574:	39 d0                	cmp    %edx,%eax
    c576:	73 18                	jae    c590 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    c578:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    c57a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    c57c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    c57e:	72 f0                	jb     c570 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    c580:	39 d0                	cmp    %edx,%eax
    c582:	72 f4                	jb     c578 <free+0x28>
    c584:	39 d1                	cmp    %edx,%ecx
    c586:	73 f0                	jae    c578 <free+0x28>
    c588:	90                   	nop
    c589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    c590:	8b 73 fc             	mov    -0x4(%ebx),%esi
    c593:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    c596:	39 d7                	cmp    %edx,%edi
    c598:	74 19                	je     c5b3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    c59a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    c59d:	8b 50 04             	mov    0x4(%eax),%edx
    c5a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    c5a3:	39 f1                	cmp    %esi,%ecx
    c5a5:	74 23                	je     c5ca <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    c5a7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    c5a9:	a3 60 43 01 00       	mov    %eax,0x14360
}
    c5ae:	5b                   	pop    %ebx
    c5af:	5e                   	pop    %esi
    c5b0:	5f                   	pop    %edi
    c5b1:	5d                   	pop    %ebp
    c5b2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    c5b3:	03 72 04             	add    0x4(%edx),%esi
    c5b6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    c5b9:	8b 10                	mov    (%eax),%edx
    c5bb:	8b 12                	mov    (%edx),%edx
    c5bd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    c5c0:	8b 50 04             	mov    0x4(%eax),%edx
    c5c3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    c5c6:	39 f1                	cmp    %esi,%ecx
    c5c8:	75 dd                	jne    c5a7 <free+0x57>
    p->s.size += bp->s.size;
    c5ca:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    c5cd:	a3 60 43 01 00       	mov    %eax,0x14360
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    c5d2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    c5d5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    c5d8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    c5da:	5b                   	pop    %ebx
    c5db:	5e                   	pop    %esi
    c5dc:	5f                   	pop    %edi
    c5dd:	5d                   	pop    %ebp
    c5de:	c3                   	ret    
    c5df:	90                   	nop

0000c5e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    c5e0:	55                   	push   %ebp
    c5e1:	89 e5                	mov    %esp,%ebp
    c5e3:	57                   	push   %edi
    c5e4:	56                   	push   %esi
    c5e5:	53                   	push   %ebx
    c5e6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    c5e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    c5ec:	8b 15 60 43 01 00    	mov    0x14360,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    c5f2:	8d 78 07             	lea    0x7(%eax),%edi
    c5f5:	c1 ef 03             	shr    $0x3,%edi
    c5f8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    c5fb:	85 d2                	test   %edx,%edx
    c5fd:	0f 84 a3 00 00 00    	je     c6a6 <malloc+0xc6>
    c603:	8b 02                	mov    (%edx),%eax
    c605:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    c608:	39 cf                	cmp    %ecx,%edi
    c60a:	76 74                	jbe    c680 <malloc+0xa0>
    c60c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    c612:	be 00 10 00 00       	mov    $0x1000,%esi
    c617:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    c61e:	0f 43 f7             	cmovae %edi,%esi
    c621:	ba 00 80 00 00       	mov    $0x8000,%edx
    c626:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    c62c:	0f 46 da             	cmovbe %edx,%ebx
    c62f:	eb 10                	jmp    c641 <malloc+0x61>
    c631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    c638:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    c63a:	8b 48 04             	mov    0x4(%eax),%ecx
    c63d:	39 cf                	cmp    %ecx,%edi
    c63f:	76 3f                	jbe    c680 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    c641:	39 05 60 43 01 00    	cmp    %eax,0x14360
    c647:	89 c2                	mov    %eax,%edx
    c649:	75 ed                	jne    c638 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    c64b:	83 ec 0c             	sub    $0xc,%esp
    c64e:	53                   	push   %ebx
    c64f:	e8 1c fc ff ff       	call   c270 <sbrk>
  if(p == (char*)-1)
    c654:	83 c4 10             	add    $0x10,%esp
    c657:	83 f8 ff             	cmp    $0xffffffff,%eax
    c65a:	74 1c                	je     c678 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    c65c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    c65f:	83 ec 0c             	sub    $0xc,%esp
    c662:	83 c0 08             	add    $0x8,%eax
    c665:	50                   	push   %eax
    c666:	e8 e5 fe ff ff       	call   c550 <free>
  return freep;
    c66b:	8b 15 60 43 01 00    	mov    0x14360,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    c671:	83 c4 10             	add    $0x10,%esp
    c674:	85 d2                	test   %edx,%edx
    c676:	75 c0                	jne    c638 <malloc+0x58>
        return 0;
    c678:	31 c0                	xor    %eax,%eax
    c67a:	eb 1c                	jmp    c698 <malloc+0xb8>
    c67c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    c680:	39 cf                	cmp    %ecx,%edi
    c682:	74 1c                	je     c6a0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    c684:	29 f9                	sub    %edi,%ecx
    c686:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    c689:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    c68c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    c68f:	89 15 60 43 01 00    	mov    %edx,0x14360
      return (void*)(p + 1);
    c695:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    c698:	8d 65 f4             	lea    -0xc(%ebp),%esp
    c69b:	5b                   	pop    %ebx
    c69c:	5e                   	pop    %esi
    c69d:	5f                   	pop    %edi
    c69e:	5d                   	pop    %ebp
    c69f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    c6a0:	8b 08                	mov    (%eax),%ecx
    c6a2:	89 0a                	mov    %ecx,(%edx)
    c6a4:	eb e9                	jmp    c68f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    c6a6:	c7 05 60 43 01 00 64 	movl   $0x14364,0x14360
    c6ad:	43 01 00 
    c6b0:	c7 05 64 43 01 00 64 	movl   $0x14364,0x14364
    c6b7:	43 01 00 
    base.s.size = 0;
    c6ba:	b8 64 43 01 00       	mov    $0x14364,%eax
    c6bf:	c7 05 68 43 01 00 00 	movl   $0x0,0x14368
    c6c6:	00 00 00 
    c6c9:	e9 3e ff ff ff       	jmp    c60c <malloc+0x2c>
    c6ce:	66 90                	xchg   %ax,%ax

0000c6d0 <is_attached_tty>:
#include "fcntl.h"
#include "user.h"
#include "x86.h"

int
is_attached_tty(int tty_fd){
    c6d0:	55                   	push   %ebp
    c6d1:	89 e5                	mov    %esp,%ebp
    c6d3:	83 ec 0c             	sub    $0xc,%esp
    return ioctl(tty_fd, TTYGETS, DEV_ATTACH);
    c6d6:	6a 10                	push   $0x10
    c6d8:	6a 02                	push   $0x2
    c6da:	ff 75 08             	pushl  0x8(%ebp)
    c6dd:	e8 d6 fb ff ff       	call   c2b8 <ioctl>
}
    c6e2:	c9                   	leave  
    c6e3:	c3                   	ret    
    c6e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    c6ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

0000c6f0 <is_connected_tty>:

int
is_connected_tty(int tty_fd){
    c6f0:	55                   	push   %ebp
    c6f1:	89 e5                	mov    %esp,%ebp
    c6f3:	83 ec 0c             	sub    $0xc,%esp
    return ioctl(tty_fd, TTYGETS, DEV_CONNECT);
    c6f6:	68 00 10 00 00       	push   $0x1000
    c6fb:	6a 02                	push   $0x2
    c6fd:	ff 75 08             	pushl  0x8(%ebp)
    c700:	e8 b3 fb ff ff       	call   c2b8 <ioctl>
}
    c705:	c9                   	leave  
    c706:	c3                   	ret    
    c707:	89 f6                	mov    %esi,%esi
    c709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000c710 <attach_tty>:

int
attach_tty(int tty_fd)
{
    c710:	55                   	push   %ebp
    c711:	89 e5                	mov    %esp,%ebp
    c713:	53                   	push   %ebx
    c714:	83 ec 08             	sub    $0x8,%esp
    c717:	8b 5d 08             	mov    0x8(%ebp),%ebx
   if(ioctl(tty_fd, TTYSETS, DEV_ATTACH) < 0)
    c71a:	6a 10                	push   $0x10
    c71c:	6a 01                	push   $0x1
    c71e:	53                   	push   %ebx
    c71f:	e8 94 fb ff ff       	call   c2b8 <ioctl>
    c724:	83 c4 10             	add    $0x10,%esp
    c727:	85 c0                	test   %eax,%eax
    c729:	78 55                	js     c780 <attach_tty+0x70>
     return -1;

    close(0);
    c72b:	83 ec 0c             	sub    $0xc,%esp
    c72e:	6a 00                	push   $0x0
    c730:	e8 db fa ff ff       	call   c210 <close>
    close(1);
    c735:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    c73c:	e8 cf fa ff ff       	call   c210 <close>
    close(2);
    c741:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    c748:	e8 c3 fa ff ff       	call   c210 <close>
    if(dup(tty_fd) < 0)
    c74d:	89 1c 24             	mov    %ebx,(%esp)
    c750:	e8 0b fb ff ff       	call   c260 <dup>
    c755:	83 c4 10             	add    $0x10,%esp
    c758:	85 c0                	test   %eax,%eax
    c75a:	78 24                	js     c780 <attach_tty+0x70>
      return -1;

    if(dup(tty_fd) < 0)
    c75c:	83 ec 0c             	sub    $0xc,%esp
    c75f:	53                   	push   %ebx
    c760:	e8 fb fa ff ff       	call   c260 <dup>
    c765:	83 c4 10             	add    $0x10,%esp
    c768:	85 c0                	test   %eax,%eax
    c76a:	78 14                	js     c780 <attach_tty+0x70>
      return -1;

    if(dup(tty_fd) < 0)
    c76c:	83 ec 0c             	sub    $0xc,%esp
    c76f:	53                   	push   %ebx
    c770:	e8 eb fa ff ff       	call   c260 <dup>
    c775:	83 c4 10             	add    $0x10,%esp
    c778:	c1 f8 1f             	sar    $0x1f,%eax
      return -1;

     return 0;
}
    c77b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    c77e:	c9                   	leave  
    c77f:	c3                   	ret    

int
attach_tty(int tty_fd)
{
   if(ioctl(tty_fd, TTYSETS, DEV_ATTACH) < 0)
     return -1;
    c780:	b8 ff ff ff ff       	mov    $0xffffffff,%eax

    if(dup(tty_fd) < 0)
      return -1;

     return 0;
}
    c785:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    c788:	c9                   	leave  
    c789:	c3                   	ret    
    c78a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0000c790 <detach_tty>:

int
detach_tty(int tty_fd)
{
    c790:	55                   	push   %ebp
    c791:	89 e5                	mov    %esp,%ebp
    c793:	83 ec 0c             	sub    $0xc,%esp
    ioctl(tty_fd, TTYSETS, DEV_DETACH);
    c796:	6a 20                	push   $0x20
    c798:	6a 01                	push   $0x1
    c79a:	ff 75 08             	pushl  0x8(%ebp)
    c79d:	e8 16 fb ff ff       	call   c2b8 <ioctl>
    return 0;
}
    c7a2:	31 c0                	xor    %eax,%eax
    c7a4:	c9                   	leave  
    c7a5:	c3                   	ret    
    c7a6:	8d 76 00             	lea    0x0(%esi),%esi
    c7a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0000c7b0 <connect_tty>:


int
connect_tty(int tty_fd)
{
    c7b0:	55                   	push   %ebp
    c7b1:	89 e5                	mov    %esp,%ebp
    c7b3:	53                   	push   %ebx
    c7b4:	83 ec 08             	sub    $0x8,%esp
    c7b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
#include "user.h"
#include "x86.h"

int
is_attached_tty(int tty_fd){
    return ioctl(tty_fd, TTYGETS, DEV_ATTACH);
    c7ba:	6a 10                	push   $0x10
    c7bc:	6a 02                	push   $0x2
    c7be:	53                   	push   %ebx
    c7bf:	e8 f4 fa ff ff       	call   c2b8 <ioctl>


int
connect_tty(int tty_fd)
{
    if(!is_attached_tty(tty_fd)){
    c7c4:	83 c4 10             	add    $0x10,%esp
    c7c7:	85 c0                	test   %eax,%eax
    c7c9:	74 1d                	je     c7e8 <connect_tty+0x38>
      close(tty_fd);
       return -1;
     }

     ioctl(tty_fd, TTYSETS, DEV_CONNECT);
    c7cb:	83 ec 04             	sub    $0x4,%esp
    c7ce:	68 00 10 00 00       	push   $0x1000
    c7d3:	6a 01                	push   $0x1
    c7d5:	53                   	push   %ebx
    c7d6:	e8 dd fa ff ff       	call   c2b8 <ioctl>
     return tty_fd;
    c7db:	83 c4 10             	add    $0x10,%esp
    c7de:	89 d8                	mov    %ebx,%eax
}
    c7e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    c7e3:	c9                   	leave  
    c7e4:	c3                   	ret    
    c7e5:	8d 76 00             	lea    0x0(%esi),%esi

int
connect_tty(int tty_fd)
{
    if(!is_attached_tty(tty_fd)){
      close(tty_fd);
    c7e8:	83 ec 0c             	sub    $0xc,%esp
    c7eb:	53                   	push   %ebx
    c7ec:	e8 1f fa ff ff       	call   c210 <close>
       return -1;
    c7f1:	83 c4 10             	add    $0x10,%esp
    c7f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c7f9:	eb e5                	jmp    c7e0 <connect_tty+0x30>
    c7fb:	90                   	nop
    c7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0000c800 <disconnect_tty>:
     return tty_fd;
}

int
disconnect_tty(int tty_fd)
{
    c800:	55                   	push   %ebp
    c801:	89 e5                	mov    %esp,%ebp
    c803:	83 ec 0c             	sub    $0xc,%esp
    return ioctl(tty_fd, TTYSETS, DEV_DISCONNECT);
    c806:	68 00 20 00 00       	push   $0x2000
    c80b:	6a 01                	push   $0x1
    c80d:	ff 75 08             	pushl  0x8(%ebp)
    c810:	e8 a3 fa ff ff       	call   c2b8 <ioctl>
}
    c815:	c9                   	leave  
    c816:	c3                   	ret    
