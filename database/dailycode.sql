SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `tokens` int(11) NOT NULL,
  `last_reset` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id`, `api_key`, `tokens`, `last_reset`) VALUES
(1, 'a6d3b618daab8c71', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `language` varchar(15) NOT NULL,
  `code` text NOT NULL,
  `output` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `language`, `code`, `output`, `date`) VALUES
(1, 'JavaScript', 'const val1 = \"5\" - 3;\nconst val2 = \"5\" + 3;\nconst val3 = val1 + val2;\n\nconsole.log(val3);', '253', '2026-02-03'),
(2, 'Python', 'def add_to(item, count=0, list_data=[]):\n    list_data.append(item)\n    return len(list_data) + count\n\nprint(add_to(10, 2))\nprint(add_to(20, 3))', '35', '2026-02-04'),
(3, 'Ruby', 'a = nil\nb = 20\nc = 10\n\na ||= b\na += c\nb = nil\n\nputs a', '30', '2026-02-05'),
(6, 'Python', 'value = 1\r\nfor i in range(3):\r\n    value += i * value\r\nprint(value)\r\n', '6', '2026-02-06'),
(7, 'JavaScript', 'let a = \"2\";\r\nlet b = a + 3;\r\nlet c = b - 1;\r\nconsole.log(c);\r\n', '22', '2026-02-07'),
(8, 'C++', '#include <stdio.h>\r\n\r\nint main() {\r\n    int x = 5;\r\n\r\n    int a = x++;\r\n    int b = ++x;\r\n\r\n    x = a + b;\r\n\r\n    printf(\"%d\\n\", x);\r\n\r\n    return 0;\r\n}', '12', '2026-02-08'),
(9, 'Ruby', 'text = \"Hi\"\r\n3.times do |i|\r\n  text = text + i.to_s\r\nend\r\nputs text.length\r\n', '5', '2026-02-09'),
(10, 'Php', '<?php\r\n$x = \"5\";\r\n$y = $x + 2;\r\n$z = $x . 2;\r\necho $y + strlen($z);\r\n?>\r\n', '9', '2026-02-10'),
(11, 'Java', 'public class Main {\r\n    public static void main(String[] args) {\r\n        int a = 4;\r\n        int b = a++ + ++a;\r\n        System.out.print(b);\r\n    }\r\n}\r\n', '10', '2026-02-11'),
(12, 'C#', 'using System;\r\n\r\nclass Program {\r\n    static void Main() {\r\n        int x = 3;\r\n        int y = x * x++;\r\n        Console.Write(y);\r\n    }\r\n}\r\n', '9', '2026-02-12'),
(13, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc main() {\r\n    x := 2\r\n    for i := 0; i < 3; i++ {\r\n        x += i + x\r\n    }\r\n    fmt.Println(x)\r\n}\r\n', '20', '2026-02-13'),
(14, 'Python', 'nums = [1, 2, 3]\r\nresult = nums[0]\r\nnums[0] = nums[1]\r\nresult += nums[0]\r\nprint(result)\r\n', '3', '2026-02-14'),
(15, 'JavaScript', 'let str = \"Hi\";\r\nstr += 3 + 2;\r\nconsole.log(str);\r\n', 'Hi5', '2026-02-15'),
(16, 'Go', 'text = \"Go\"\r\n3.times { |i| text += (i+1).to_s }\r\nputs text\r\n', 'Go123', '2026-02-16'),
(17, 'C++', '#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n    int a = 6;\r\n    int b = 2;\r\n    a += b++ * a;\r\n    cout << a;\r\n}\r\n', '18', '2026-02-17'),
(18, 'Java', 'public class Main {\r\n    public static void main(String[] args) {\r\n        String s = \"3\";\r\n        int x = Integer.parseInt(s) + s.length();\r\n        System.out.print(x);\r\n    }\r\n}\r\n', '4', '2026-02-18'),
(20, 'C++', '#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n    int x = 4;\r\n    int y = ++x * 2;\r\n    cout << y;\r\n}\r\n', '10', '2026-02-19'),
(21, 'C#', 'using System;\r\n\r\nclass Program {\r\n    static void Main() {\r\n        int x = 2;\r\n        int y = x++ + 5;\r\n        Console.Write(y + x);\r\n    }\r\n}\r\n', '10', '2026-02-20'),
(22, 'Ruby', 'x = 1\r\n3.times do |i|\r\n  x += i + 1\r\nend\r\nputs x\r\n', '7', '2026-02-21'),
(23, 'Php', '<?php\r\n$x = 4;\r\n$y = $x++ + 2;\r\necho $y * $x;\r\n?>\r\n', '30', '2026-02-22'),
(24, 'Java', 'public class Main {\r\n    public static void main(String[] args) {\r\n        int x = 5;\r\n        int y = x++ + 3;\r\n        int z = ++x + y;\r\n        System.out.print(z);\r\n    }\r\n}\r\n', '15', '2026-02-23'),
(25, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc main() {\r\n    x := 3\r\n    for i := 1; i <= 2; i++ {\r\n        x += i * 2\r\n    }\r\n    fmt.Println(x)\r\n}\r\n', '9', '2026-02-24'),
(32, 'JavaScript', 'let x = 5;\r\nlet y = x++ * 2;\r\nlet z = ++x + y;\r\nconsole.log(z);\r\n', '17', '2026-02-25'),
(33, 'Python', 'x = 10\r\ny = 3\r\n\r\nx = x + y\r\ny = x - y\r\nx = x - y\r\n\r\nprint(x * y - x)\r\n', '27', '2026-02-26'),
(34, 'Python', 'a = 2\r\nb = 3\r\nc = 4\r\n\r\na = a ** b\r\nb = c - a // 2\r\nc = (a + b) % c\r\n\r\nprint(a + b * c)\r\n', '8', '2026-02-27'),
(35, 'Ruby', 'x = 5\r\n\r\n3.times do |x|\r\n  x = x + 2\r\nend\r\n\r\nputs x', '5', '2026-02-28'),
(36, 'C#', 'using System;\r\n\r\nclass Program\r\n{\r\n    static void Change(int x)\r\n    {\r\n        x += 10;\r\n    }\r\n\r\n    static void Main()\r\n    {\r\n        int a = 5;\r\n        Change(a);\r\n        Console.WriteLine(a);\r\n    }\r\n}', '5', '2026-03-01'),
(37, 'Ruby', 'def change(n)\r\n  n += 5\r\nend\r\n\r\na = 10\r\nchange(a)\r\nputs a', '10', '2026-03-02'),
(38, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc change(x int) {\r\n    x += 20\r\n}\r\n\r\nfunc main() {\r\n    a := 7\r\n    change(a)\r\n    fmt.Println(a)\r\n}', '7', '2026-03-03'),
(39, 'C#', 'using System;\r\n\r\nclass Program\r\n{\r\n    static int Test(int x)\r\n    {\r\n        if (x > 0)\r\n            return x * Test(x - 1);\r\n        return 1;\r\n    }\r\n\r\n    static void Main()\r\n    {\r\n        Console.WriteLine(Test(4));\r\n    }\r\n}', '24', '2026-03-04'),
(40, 'C++', '#include <iostream>\r\nusing namespace std;\r\n\r\nvoid change(int x) {\r\n    x += 15;\r\n}\r\n\r\nint main() {\r\n    int a = 3;\r\n    change(a);\r\n    cout << a;\r\n}', '3', '2026-03-05'),
(41, 'C++', '#include <iostream>\r\nusing namespace std;\r\n\r\nint test(int x) {\r\n    if (x == 0)\r\n        return 2;\r\n    return x + test(x - 1);\r\n}\r\n\r\nint main() {\r\n    cout << test(3);\r\n}', '8', '2026-03-06'),
(42, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc test(x int) int {\r\n    if x <= 1 {\r\n        return 1\r\n    }\r\n    return x * test(x-1)\r\n}\r\n\r\nfunc main() {\r\n    fmt.Println(test(5))\r\n}', '120', '2026-03-07'),
(43, 'Php', 'function modify($value) {\r\n    $value += 5;\r\n}\r\n\r\nfunction modifyRef(&$value) {\r\n    $value += 5;\r\n}\r\n\r\n$a = 10;\r\n\r\nmodify($a);\r\nmodifyRef($a);\r\n\r\necho $a;', '15', '2026-03-08'),
(44, 'Php', '$x = \"10\";\r\n$y = 5;\r\n\r\n$result = $x + $y * 2;\r\n\r\n$x .= $y;\r\n\r\necho $result + $x;', '125', '2026-03-09'),
(45, 'Java', 'static int value = 5;\r\n\r\npublic static void change(int value) {\r\n    value = value * 3;\r\n}\r\n\r\npublic static void main(String[] args) {\r\n    change(value);\r\n    value += 2;\r\n    System.out.println(value);\r\n}', '7', '2026-03-10'),
(46, 'Php', 'function counter() {\r\n    static $value = 3;\r\n    $value *= 2;\r\n    return $value;\r\n}\r\n\r\necho counter();\r\necho counter();\r\necho counter();', '61224', '2026-03-11'),
(47, 'Python', 'def process(x, y=2):\r\n    x += y\r\n    y *= 3\r\n    return x * y\r\n\r\na = 4\r\nb = 3\r\n\r\nprint(process(a, b) + process(a))', '99', '2026-03-12'),
(48, 'JavaScript', 'function f(n){\r\n    let s = \"\";\r\n    for(let i=1;i<=n;i++){\r\n        s += String.fromCharCode(64+i);\r\n    }\r\n    return s.split(\"\").reverse().join(\"\");\r\n}\r\n\r\nconsole.log(f(5));', 'EDCBA', '2026-03-13'),
(49, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc f(n int) string {\r\n    s := \"\"\r\n    for i := 0; i < n; i++ {\r\n        s += fmt.Sprint(i*i)\r\n    }\r\n    return s\r\n}\r\n\r\nfunc main(){\r\n    fmt.Println(f(5))\r\n}', '014916', '2026-03-14'),
(50, 'Python', 'def f(n):\r\n    s = \"\"\r\n    for i in range(n):\r\n        s += chr(97 + (i*2)%26)\r\n    return s\r\n\r\nprint(f(6))', 'acegik', '2026-03-15'),
(51, 'C#', 'using System;\r\n\r\nclass Program\r\n{\r\n    static string f(int n){\r\n        string s=\"\";\r\n        for(int i=1;i<=n;i++){\r\n            s += i%2==0 ? \"#\" : \"@\";\r\n        }\r\n        return s;\r\n    }\r\n\r\n    static void Main(){\r\n        Console.WriteLine(f(7));\r\n    }\r\n}', '@#@#@#@', '2026-03-16'),
(52, 'Php', '<?php function f($n){ $s=\"\"; for($i=1;$i<=$n;$i++){ $s .= chr(64 + ($i*$i)%26); } return $s; } echo f(5);', 'BEJQZ', '2026-03-17'),
(53, 'Ruby', 'def f(n)\r\n  s=\"\"\r\n  (1..n).each do |i|\r\n    s += (i*i).to_s(16)\r\n  end\r\n  s\r\nend\r\n\r\nputs f(4)', '14910', '2026-03-18'),
(54, 'Java', 'public class Main {\r\n    static String f(int n){\r\n        String s=\"\";\r\n        for(int i=0;i<n;i++){\r\n            s += (char)(\'a\'+(i*i)%26);\r\n        }\r\n        return s;\r\n    }\r\n\r\n    public static void main(String[] args){\r\n        System.out.println(f(6));\r\n    }\r\n}', 'abejqz', '2026-03-19'),
(55, 'C++', '#include <iostream>\r\nusing namespace std;\r\n\r\nstring f(int n){\r\n    string s=\"\";\r\n    for(int i=1;i<=n;i++){\r\n        if(i%3==0) s+=\"*\";\r\n        else s+=to_string(i);\r\n    }\r\n    return s;\r\n}\r\n\r\nint main(){\r\n    cout<<f(7);\r\n}', '12*45*7', '2026-03-20'),
(56, 'Python', 'def f(n):\r\n    s=\"\"\r\n    for i in range(n):\r\n        s += str((i+1)%3)\r\n    return s\r\n\r\nprint(f(8))', '12012012', '2026-03-21'),
(57, 'JavaScript', 'function f(n){\r\n    let s=\"\";\r\n    for(let i=0;i<n;i++){\r\n        s += String.fromCharCode(65+(n-i));\r\n    }\r\n    return s;\r\n}\r\n\r\nconsole.log(f(4));', 'EDCB', '2026-03-22'),
(58, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc f(n int) string{\r\n    s:=\"\"\r\n    for i:=1;i<=n;i++{\r\n        s += fmt.Sprintf(\"%X\", i*i)\r\n    }\r\n    return s\r\n}\r\n\r\nfunc main(){\r\n    fmt.Println(f(5))\r\n}', '1491019', '2026-03-23'),
(59, 'Ruby', 'def f(n)\r\n  s=\"\"\r\n  (0...n).each do |i|\r\n    s += (97 + i%5).chr\r\n  end\r\n  s.reverse\r\nend\r\n\r\nputs f(7)', 'cbadecb', '2026-03-24'),
(60, 'Java', 'public class Main {\r\n    static String f(int n){\r\n        String s=\"\";\r\n        for(int i=1;i<=n;i++){\r\n            s += Integer.toString(i*i,36);\r\n        }\r\n        return s;\r\n    }\r\n\r\n    public static void main(String[] args){\r\n        System.out.println(f(5));\r\n    }\r\n}', '149gp', '2026-03-25'),
(61, 'C++', '#include <iostream>\r\nusing namespace std;\r\n\r\nstring f(int n){\r\n    string s=\"\";\r\n    for(int i=0;i<n;i++){\r\n        s += (i%2==0)?\"+\":\"-\";\r\n    }\r\n    return s;\r\n}\r\n\r\nint main(){\r\n    cout<<f(9);\r\n}', '+-+-+-+-+', '2026-03-26'),
(62, 'C#', 'using System;\r\n\r\nclass Program\r\n{\r\n    static string f(int n){\r\n        string s=\"\";\r\n        for(int i=0;i<n;i++){\r\n            s += (char)(\'A\'+(i*3)%26);\r\n        }\r\n        return s;\r\n    }\r\n\r\n    static void Main(){\r\n        Console.WriteLine(f(6));\r\n    }\r\n}', 'ADGJMP', '2026-03-27'),
(63, 'Go', 'package main\r\nimport \"fmt\"\r\n\r\nfunc f(n int) string{\r\n    s:=\"\"\r\n    for i:=0;i<n;i++{\r\n        if i%2==0 { s+=\"X\" } else { s+=\"0\" }\r\n    }\r\n    return s\r\n}\r\n\r\nfunc main(){\r\n    fmt.Println(f(8))\r\n}', 'X0X0X0X0', '2026-03-28'),
(64, 'Ruby', 'def f(n)\r\n  s=\"\"\r\n  (1..n).each do |i|\r\n    s += (i+64).chr if i%2==1\r\n  end\r\n  s\r\nend\r\n\r\nputs f(7)', 'ACEG', '2026-03-29'),
(65, 'Python', 'def f(n):\r\n    s=\"\"\r\n    for i in range(1,n+1):\r\n        s += str(i*i*i)\r\n    return s\r\n\r\nprint(f(4))', '182764', '2026-03-30'),
(66, 'JavaScript', 'function f(n){\r\n    let s=\"\";\r\n    for(let i=0;i<n;i++){\r\n        s += (i%4);\r\n    }\r\n    return s.toUpperCase();\r\n}\r\n\r\nconsole.log(f(9));', '012301230', '2026-03-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_key` (`api_key`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;