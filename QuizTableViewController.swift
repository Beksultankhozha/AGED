//
//  QuizTableViewController.swift
//  Restaraunts
//
//  Created by Бексултанхожа on 3/26/17.
//  Copyright © 2017 Бексултанхожа. All rights reserved.
//

import UIKit

class QuizTableViewController: UITableViewController {
    
        
    
      var tests:[Quiz] = [ Quiz(name: "Test №1", q1: "1. Команда перехода в папку выше:" , q1a1: "cd", q1a2: "cd..", q1a3: "cd /", q1a4: "cd ~/", q1id: "0" ,q2: "2. Команда вывода имени текущей папки:", q2a1: "ls", q2a2: "pwd", q2a3: "printf",   q2a4: "look",q2id: "0" ,q3: "3. Команда, показывающая список файлов в текущей папке: ", q3a1: "lpr", q3a2: "rs", q3a3: "ls",q3a4: "screen",q3id: "0" ,q4: "4. Команда создания новой папки:", q4a1: "mkdir", q4a2: "ls", q4a3: "cut",q4a4: "complete",q4id: "0" ,
                            q5: "5. Команда удаления файла:", q5a1: "cut", q5a2: "ls-r", q5a3: "select",q5a4: "rm",q5id: "0" ,q6: "6. Команда удаления папки:", q6a1: "rmdir", q6a2: "select", q6a3: "remove",q6a4: "unset",q6id: "0" , q7: "7. Команда изменения права доступа к файлам и папкам", q7a1: "chmod", q7a2: "clear", q7a3: "cal",q7a4: "break",q7id: "0" ,
                            q8: "8. Команда очищения экрана:", q8a1: "alias", q8a2: "time", q8a3: "clear",q8a4: "join",q8id: "0" ,
                            q9: "9. Команда просмотра и настройка IP-адреса и сетевого подключения:", q9a1: "ping", q9a2: "cmp", q9a3: "env",q9a4: "ipconfig",q9id: "0" ,
                           q10: "10. Команда просмотра маршрута и состояния сетевых соединений:", q10a1: "netstat", q10a2: "command", q10a3: "bash",q10a4: "let",q10id: "0" ,q11: "11. Команда выполнения команд от имени другого пользователя:", q11a1: "sudo", q11a2: "test", q11a3: "ipconfig",q11a4: "dc",q11id: "0" ,q12: "12. Команда вывода всех зарегистрированных пользователей:", q12a1: "show", q12a2: "who", q12a3: "fold",q12a4: "cmp",q12id: "0" ,q13: "13. Команда вывода имени компьютера и узла сети:", q13a1: "find", q13a2: " netstat", q13a3: "hostname",q13a4: "info",q13id: "0" ,q14: "14. Команда тестирования сетевого соединения:", q14a1: "ping", q14a2: "echo", q14a3: "cp",q14a4: "pushd",q14id: "0" ,
                           q15: "15. Команда смены пароля пользователя:", q15a1: "open", q15a2: "passwd", q15a3: "goto",q15a4: "bind", q15id: "0"),Quiz(name: "Test №2",
                      q1: "1.Какое максимальное количество активных сетевых интерфейсов или служб может содержать сетевое размещение:",q1a1: "100",q1a2: "80",q1a3: "любое",         q1a4: "ограниченное",         q1id: "2",q2: "2.Кто имеет доступ к настройкам сети:",         q2a1: "администратор",q2a2: "все пользователи",         q2a3: "гость",q2a4: "стандартный пользователь",         q2id: "-1",                  q3: "3.Сетевое размещение содержит:",         q3a1: "сетевые интерфейсы",         q3a2: "настройки служб",         q3a3: "настройки протоколов",
         q3a4: "все выше перечисленное",         q3id: "1",         q4: "4.Сетевое размещение по умолчанию называется:",q4a1: "automatic",q4a2: "standard",q4a3: "first",         q4a4: "setauto",         q4id: "1",q5: "5.Процесс подключения Bluetooth-устройства известен как:",         q5a1: "pairing",q5a2: "bonding",
         q5a3: "joining",q5a4: "linking",         q5id: "-3",q6: "6.Как можно изменить порядок служб:",q6a1: "щелкнуть на значок звездочки под списком сетевых служб и выбрать команд Порядок служб (Set Service Order)",q6a2: "выбрать службу из списка и перетащить",         q6a3: "список изменить нельзя",q6a4: "щелкнуть на значок звездочки и выбрать команду Создать",q6id: "0",q7: "7.Какую команду необходимо выбрать для деактивации службы:",         q7a1: "interface",q7a2: "duplicate service",q7a3: "make service inactive",         q7a4: "advanced",q7id: "2",q8: "8.Команда для дублирования существующей сетевой службы:",q8a1: "create",         q8a2: "set service order",         q8a3: "duplicate service",         q8a4: "apply",         q8id: "0",
         q9: "9.Как можно удалить существующую сетевую службу:",         q9a1: "выбрать службу из списка и щелкнуть кнопку минус под списком",         q9a2: "правой кнопкой мышки кликнуть на службу из списка, выбрать команду удалить",
         q9a3: "щелкнуть на значок звездочки и выбрать команду удалить",         q9a4: "удалить службу нельзя",         q9id: "-3",q10: "10.Когда на компьютере активны два интерфейса – проводной Ethernet и Wi-Fi, у какого приоритет выше?",         q10a1: "активным может быть только одно соединение",q10a2: "Ethernet",q10a3: "Wi-Fi",         q10a4: "одинаково",         q10id: "1",q11: "11.Сетевые службы с красным индикатором:",
         q11a1: "не правильно сконфигурированы",q11a2: "активны",
         q11a3: "подключены",q11a4: "не подключены",q11id: "3",q12: "12.Сетевые службы с желтым индикатором:",q12a1: "подключены, но не правильно сконфигурированы",q12a2: "подключены и сконфигурированы",q12a3: "не правильно сконфигурированы",         q12a4: "активны",q12id: "-1",q13: "13.Сетевые службы с зеленым индикатором:",
         q13a1: "не подключены",q13a2: "подключены, но не правильно сконфигурированы",
         q13a3: "подключены и сконфигурированы",         q13a4: "не правильно сконфигурированы",
         q13id: "0",q14: "14.Как создать новый экземпляр сетевого интерфейса",
         q14a1: "щелкнуть на кнопку со знаком плюс внизу списка, в новом открывшемся окне выбрать интерфейс, назначить уникальное имя и щелкнуть на кнопку Создать",
         q14a2: "вызвать диалоговое окно двойным щелчком левой кнопки мыши",q14a3: "щелкнуть на кнопку со знаком плюс внизу списка",q14a4: "нельзя создавать новый экземпляр",
         q14id: "-3",q15: "15.Функция кнопки Вернуть (Revert):",q15a1: "при ошибке в настройках Сети (Network) возвращает к активной сетевой конфигурации",
         q15a2: "дублирование существующую службу",q15a3: "создание новой службы",q15a4: "переименование существующей службы",q15id: "-1" ),Quiz(name: "Test №3",
              q1: "1. Во время установки, по какой причине вы не можете выбрать диск для установки? ",
              q1a1: "все нижеперечисленное",q1a2: "в настоящее время другие пользователи вошли в систему через быстрое переключение пользователей ",              q1a3: "OS X не может создать раздел для восстановления",q1a4: "объем должен быть Mac OS Extended (Journaled)",q1id: "0",q2: "2. Какие дополнительные опции предлагаются вам во время установки:",q2a1: "выберите, какие драйверы принтера устанавливать",              q2a2: "установите OS X Server одновременно",q2a3: "выберите диск для установки",              q2a4: "выберите языки для установки",q2id: "1",q3: "3. Что происходит с несовместимым программным обеспечением на жестком диске во время установки:",              q3a1: "OS X не может обнаружить несовместимое программное обеспечение ",q3a2: "они удалены",q3a3: "они архивируются в zip-файл",              q3a4: "они перемещаются в папку с именем Incompatible Software",q3id: "1",q4: "4. Какую минимальную версию OS X вы можете обновить:",q4a1: "10.4.11",q4a2: "10.6.8",q4a3: "10.5.8",q4a4: "10.7.5",q4id: "3",q5: "5. Вы хотите обновить Mac до OS X 10.12. Сколько оперативной памяти требуется:",q5a1: "10 MB",q5a2: "6 GB",q5a3: "8.8 GB",q5a4: "10 GB",q5id: "-1",q6: "6. Если установка не удалась, что было бы хорошим первоначальным шагом по устранению неполадок?",
              q6a1: "инициализировать Safe Boot",q6a2: "открыть Activity Monitor",              q6a3: "просмотреть журнал установщика",              q6a4: "переустановить, используя восстановление OS X",q6id: "2",q7: "7. Как вы можете просмотреть ранее установленные обновления программного обеспечения Apple?",
              q7a1: "использовать Spotlight для поиска файлов, обновляемых с помощью Software Update",
              q7a2: "консоль может отображать файл журнала установки",
              q7a3: "в системной информации, в разделе «Установки программного обеспечения»",
              q7a4: "Activity Monitor может просматривать обновленные файлы",
              q7id: "2",q8: "8. Что такое профиль?",q8a1: "домашняя папка пользователя",q8a2: "файл xml, предназначенный для автоматического управления различными настройками на вашем Mac",q8a3: "учетная запись пользователя",
              q8a4: "ограничение, применяемое к компьютеру для предотвращения использования любых модификаторов ключа автозагрузки",q8id: "-1",q9: "9. Как вы можете вручную установить обновление для MacOS, чтобы установить его позже?",q9a1: "выберите «Только загрузка» в Обновление программного обеспечения ",q9a2: "выберите« Установить и сохранить пакет »в Software Update",q9a3: "загрузите обновление с веб-сайта загрузки поддержки Apple",q9a4: "скопируйте обновление из /Library/Receipts",q9id: "-1",q10: "10. Как создать внешний установочный диск macOS?",q10a1: "вы не можете",q10a2: "использовать дисковую утилиту для восстановления файла InstallESD.dmg",q10a3: "использовать команду «createinstallmedia» в терминале",q10a4: "использовать Boot Camp Assistant",q10id: "2",q11: "11. Какая функция macos 10.12 помогает выбрать надежный и безопасный пароль: ",q11a1: "password helper",q11a2: "password assistant",q11a3: "keychain access",q11a4: "password integrity checker (PIC)",q11id: "1",q12: "12. Какие протоколы общего доступа к файлам поддерживаются через диалог подключения к серверу:",q12a1: "AFP, NFS, WebDAV, FTP и SSH",q12a2: "AFP, SMB, NFS, SMPT и FTP ",
              q12a3: "AFP, SMB, NFS, WebDAV и FTP ",q12a4: "AFP, SMB, AirDrop, WebDAV и FTP",              q12id: "1",q13: "13. Какой протокол общего доступа к файлам обычно используется для подключения Mac к клиенту Windows:",q13a1: "FTP",q13a2: "AFP",q13a3: "SMB",q13a4: "WebDAV",q13id: "0",q14: "14. Какую информацию можно получить, щелкнув номер версии системы в окне «Об этом Mac»? ",q14a1: "идентификатор модели",q14a2: "номер сборки системы ",q14a3: "Версия прошивки",q14a4: "общее количество ядер процессора ",              q14id: "-2",q15: "15. Какой тип учетной записи пользователя создает Setup Assistant:",q15a1: "стандарт",q15a2: "гость",q15a3: "администратор",q15a4: "root",
              q15id: "1" ),Quiz(name: "Test №4", q1: "1. Сколько бывает типов учетных записей пользователей:",q1a1: "6", q1a2: "3",q1a3: "5",q1a4: "4",q1id: "2",q2: "2. К каким файлам не имеют доступа администраторы:",q2a1: "к защищенным системным файлам и файлам других пользователей вне папок Общие(Public) и Сайты(Sites)",
             q2a2: "не ограниченный доступ",q2a3: "к защищенным системным файлам",             q2a4: "к папкам Общие (Public)",q2id: "-1", q3: "3. Тип учетной записи, использующийся по умолчанию для начальной учетной записи, которая создается при первичной настройке:",
             q3a1: "гость (guest)",q3a2: "администратор (administrator)",
             q3a3: "root",q3a4: "пользователи общего доступа",q3id: "-1",q4: "4. Членами какой группы являются учетные записи стандартных пользователей:",q4a1: "root",q4a2: "wheel",q4a3: "staff",q4a4: "users",q4id: "2",q5: "5. Как можно удалить учетную запись пользователя:",q5a1: "выбрать учетную запись из списка, затем щелкнуть по кнопке со знаком минус",q5a2: "нажать левой кнопкой по учетной записи, выбрать команду удалить из списка",q5a3: "установить галочку «Отключить учетную запись»",
             q5a4:"выбрать учетную запись из списка, затем щелкнуть по кнопке со знаком минус",
             q5id: "-3",q6: "6. Членами какой группы являются учетные записи администраторов пользователей:",q6a1: "admin",q6a2: "staff",q6a3: "root",q6a4:"wheel",q6id: "0",q7: "7. Членом какой группы является учетная запись пользователя root:",
             q7a1: "admin",q7a2: "staff",q7a3: "wheel",q7a4:"admin",q7id: "2",q8: "8. Какие существуют возможности управления через средства родительского контроля:",q8a1: "использование Simple Finder",q8a2: "ограничение доступа к принтеру",q8a3: "ограничение программ Mail и IChat",q8a4: "все выше перечисленное",q8id: "1",
             q9: "9. Группы в составе своих членов могут иметь другие группы, данная возможность называется:", q9a1: "вложенные группы (nested groups)",
                 q9a2: "учетные записи групп",q9a3: "данной возможности не существует",q9a4: "группы",q9id: "-3",q10: "10. При удалении группы:",q10a1: "члены группы не удаляются",q10a2: "созданную группу можно только деактивировать",q10a3: "группа удаляется вместе с членами",q10a4: "можно выбрать членов группы, которые удалятся вместе с группой",q10id: "0",q11: "11. При настройке совместного доступа к файлам группы, все члены группы имеют доступ к папке и могут:",q11a1: "скачивать файлы",q11a2: "удалять файлы",q11a3: "загружать файлы",q11a4: "все выше перечисленное",
             q11id: "3",q12: "12. Хранение административных данных в центральном репозитории имеет много преимуществ:",q12a1: "это упрощает администрирование пользователей и ресурсов",             q12a2: "это снижает затраты на ввод данных.",q12a3: "он обеспечивает идентификацию, аутентификацию и авторизацию для других сетевых сервисов.", q12a4: "все выше перечисленное",q12id: "2",q13: "13. Чтобы архивировать или восстановить копию данных Open Directory с помощью командной строки, необходимо использовать команду:",
             q13a1: "archive",q13a2: "slapconfig",q13a3: "restore",q13a4: "opendirectory",             q13id: "-1",q14: "14. Архивируются следующие файлы:",q14a1: "база данных каталога LDAP (включает данные пароля) и файлы конфигурации",q14a2: "файлы конфигурации Kerberos",q14a3: "данные Keychain, необходимые для Open Directory",q14a4: "все выше перечисленные",q14id: "0",q15: "15. Учетная запись пользователя root, называемого также Администратор Системы (System Administrator), по умолчанию:",q15a1: "отключена",q15a2: "отсутствует",q15a3: "включена",q15a4: "создается при начальной настройке компьютера",q15id: "-1"),Quiz(name: "Test №5", q1: "1. Какой порт используется для почтовой службы:",q1a1: "POP, IMAP",q1a2: "HTTP",q1a3: "TELNET",q1a4: "IP",q1id: "0",q2: "2. Служба «Контакты» - это решение для управления контактами на базе сервера OS X для вашей организации. Это обеспечивает:",q2a1: "доступ к контактам клиентов",q2a2: "совместимость с любыми приложениями, использующими стандартную инфраструктуру CardDAV",q2a3: "интеграция с контактами, почтой, календарем и сообщениями",q2a4: "все вышеперечисленное",q2id: "2",q3: "3. Если вам необходимо настроить Интернет или локальную службу, которая не указана в настройках учетных записей Интернета",q3a1: "нажмите добавить другую учетную запись на кнопку в списке услуг",q3a2: "установить почту, контакты и календари из магазина приложений Mac",q3a3: "используйте настройки почты, контактов и календарей и нажмите кнопку +",q3a4: "используйте сетевые настройки и нажмите +",q3id: "-2",q4: "4. Когда запускается сервис SMB, какой порт открыт в Firewall",q4a1: "139",q4a2: "80",             q4a3: "548",q4a4: "110",q4id: "0",q5: "5. Какой вариант Firewall вы можете использовать для того, чтобы запретить компьютерам проверять ваш компьютер",q5a1: "stealth mode",q5a2: "hide mode",q5a3: "filter mode",q5a4: "invisible mode",q5id: "-3",q6: "6. Когда в Finder выбрано «connect to server», что является протоколом по умолчанию, используемым полем “Server Address”:",q6a1: "FTP",q6a2: "SMB",q6a3: "NFS",q6a4: "AFP",q6id: "1",q7: "7. Какой протокол используется для функции совместного использования экрана Mac OS:",q7a1: "VPN",q7a2: "Timbuktu",q7a3: "ARD",q7a4: "VNC",q7id: "3",q8: "8. Какая вкладка в Network Utility позволяет проверить, запущена ли определенная служба",q8a1: "Ping",q8a2: "Port Scan",q8a3: "Lookup",q8a4: "Traceroute",             q8id: "-1",q9: "9. Почему вы не можете одновременно использовать совместное использование экрана и удаленное управление?",q9a1: "потому что оба они предоставляют службу VNC ",q9a2: "потому что для них требуются отдельные учетные записи администратора",q9a3: "поскольку они оба используют TCP-порт 22",q9a4: "потому что обе они предоставляют функцию сбора отчетов",q9id: "-3",q10: "10. Какую службу общего доступа следует включить для разрешения доступа ssh?",q10a1: "совместное использование файлов",q10a2: "удаленная регистрация",q10a3: "удаленное управление",q10a4: "удаленные события Apple",q10id: "1",q11: "11. Какую панель настроек системы можно использовать для настройки учетной записи Gmail? ", q11a1: "Google Mail",q11a2: "почта, контакты и сообщения",q11a3: "почтовое приложение",q11a4: "учетные записи  в Интернете",q11id: "3",q12: "12. Какая служба использует порт 443:",q12a1: "HTTP",q12a2: "VNC",q12a3: "HTTP5",q12a4: "AFP",q12id: "1",q13: "13. Наиболее распространенные сетевые порты TCP и UDP находятся между:",             q13a1: "0 и 65",q13a2: "0 и 1024",q13a3: "80 и 1000",q13a4: "80 и 65",q13id: "-1",q14: "14. Где вы настраиваете macOS для автоматического подключения к серверу при каждом входе в систему?",q14a1: "системные настройки>Родительский контроль",q14a2: "системные настройки >Пользователи и группы",q14a3: "системные настройки> iCloud> iCloud Drive",q14a4: "системные настройки>Расширения",q14id: "-2",q15: "15. Какую панель «Системные настройки» можно использовать для автоматической настройки вашего Mac с учетными записями электронной почты, учетными записями сообщений и т. д.",q15a1: "почта, контакты и сообщения",q15a2: "управление полетами",q15a3: "совместное использование",q15a4: "учетные записи Интернета",q15id: "2"),Quiz(name: "Test №6", q1: "1. Какой протокол (ы) VPN поддерживает OS X Server:",q1a1: "PPTP,L2TP",q1a2: "Cisco IPSec",q1a3: "SMTP",q1a4: "все вышеперечисленное",q1id: "0",q2: "2. Какой порт TCP является портом по умолчанию для http:", q2a1: "80",q2a2: "443",q2a3: "8080" ,q2a4: "548",q2id: "-1",q3: "3. Какой веб-сервер с открытым исходным кодом используется OS X Server:",
             q3a1: "Sun Java Web Server",q3a2: "IIS",q3a3: "Apache",q3a4: "Abyss",q3id: "-2",q4: "4. Номер порта по умолчанию для защищенного сайта",q4a1: "80",q4a2: "443",q4a3: "8080",q4a4: "500",q4id: "1",q5: "5. Пользователи, созданные с помощью приложения Server, автоматически имеют ссылки на домашние папки, расположенные:",             q5a1: "/группа",             q5a2: "не установлено местоположение домашней папки",q5a3: "/пользователи",q5a4: "/общие элементы ",q5id: "-1",q6: "6. Какая реализация службы каталога основана на OpenDirectory:",             q6a1: "Sun One",q6a2: "OpenLDAP",  q6a3: "Active Directory",q6a4: "Novell",q6id: "1",q7: "7. С помощью каких инструментов вы можете импортировать пользователей в OS X Server для Yosemite:",             q7a1: "системные настройки (System preferences)",             q7a2: "серверное приложение (Server App)",             q7a3: "утилита каталога  (Directory utility)",q7a4: "менеджер рабочей группы (Workgroup manager)",q7id: "1",q8: "8. Где находятся модули Apache:",q8a1: "/Library/WebServer/Modules",q8a2: "/etc/apache2",q8a3: "/Library/Server/Webserver/",q8a4: "/usr/libexec/apache2/",q8id: "1",q9: "9. Какие настройки доступны при настройке VPN-сервиса:",q9a1: "SSL",q9a2: "Shared Secret, IP Address Range",q9a3: "Novell",q9a4: "Port Numbers",q9id: "-2",q10: "10. Какой клиент не может использовать сохраненный профиль конфигурации VPN:",q10a1: "OS X 10.6",q10a2: "OS X 10.8",q10a3: "OS X 10.10",q10a4: "iOS",q10id: "0",q11: "11. Какие методы проверки подлинности необходимы для VPN-сервера?",q11a1: "Trusted certificate",q11a2: "Shared Secret, User level authentication",q11a3:"traceout",q11a4: "Client on a valid IP address ",q11id: "1",q12: "12. Что из перечисленного в Profile Manager поддерживает обновления программного обеспечения?",q12a1: "пользователь",q12a2: "группа",q12a3: "устройство, группы устройств",q12a4: "обновление происходит автоматически",q12id: "1",q13: "13. Какой инструмент вы можете использовать для настройки службы обновления программного обеспечения?",q13a1: "Profile Manager",q13a2: "App Store", q13a3: "Server Admin",q13a4: "Server App",q13id: "1",q14: "14. Какой сетевой порт используется по умолчанию при обновлении программного обеспечения:", q14a1: "443",q14a2: "8008",q14a3: "8080",q14a4: "80",q14id: "-1",q15: "15. Какие параметры доступны в Software Update Service, для загрузки обновлений с Apple:", q15a1: "все нижеперечисленное",q15a2: "автоматически, вручную",q15a3: "настроить", q15a4: "только вручную",q15id: "0") ,Quiz(name: "Test №7", q1: "1. Вы можете устанавливать приложения и книги на устройство, настроив Profile Manager с:",q1a1: "Device Enrolment Program (DEP) ",q1a2: "Volume Purchase Program (vPP)",q1a3: "Software Update Server Payload",q1a4: "Caching Service",q1id: "1",q2: "2. Что такое расширение файла для профиля конфигурации:",q2a1: "mobileconfig",q2a2: "plist",q2a3: "profile",q2a4: "XML",q2id: "-1", q3: "3. Что вы используете для создания и управления профилями конфигурации:",q3a1: "веб-браузер",q3a2: "Server app",q3a3: "Утилита профиля",q3a4: "Руководитель рабочей группы",q3id: "-2",q4: "4. Что такое формат файла профиля конфигурации:",q4a1: "HTML5",q4a2: "XML",q4a3: "Cocoa",q4a4: "Java",q4id: "1",q5: "5. Какие типы устройств могут управляться Profile Manager:",q5a1: "iOS, OS X устройства",q5a2: "windows устройства",q5a3: "все вышеперечисленные",q5a4: "android  устройства",q5id: "-3",q6: "6. Что вам нужно, чтобы использовать Profile Manager для управления устройством?", q6a1: "включить службу Profile Manager", q6a2: "ваш сервер должен Open Directory Master", q6a3: "получить push-сертификат уведомления от Apple", q6a4: "все вышеперечисленное",q6id: "3",q7: "7. Для того чтобы работали Push уведомления, какие порты должны быть подключены к apple серверам:", q7a1: "80 и 8088", q7a2: "5223,2195 и 2196", q7a3: "80,443 и 1640", q7a4: "548",q7id: "1",q8: "8. Какова минимальная версия OS X, поддерживающая профили конфигурации:", q8a1: "10.8", q8a2: "10.7", q8a3: "10.6", q8a4: "10.5",q8id: "-1", q9: "9. Какой из нижеперечисленных типов не является типом профиля:", q9a1: "регистрация", q9a2: "доверие", q9a3: "настройки", q9a4: "конфигурация",q9id: "-1",q10: "10. Какая информация обязательна в профиле конфигурации?", q10a1: "общие сведения ",    q10a2: "безопасность и конфиденциальность ", q10a3: "регистрация", q10a4: "код доступа",q10id: "1",q11: "11. Как вы можете удалить конфигурационный профиль с вашего устройства OS X?",q11a1: "утилита каталога",q11a2: "системные настройки > Пользователи и группы > элементы входа",q11a3: "системные настройки > профили",q11a4: "удаление файла профиля из / var / profiles /",q11id: "2",q12: "12. Когда вы блокируете компьютер OS X с Profile Manager, что происходит на компьютере?",q12a1: "он немедленно перезагружается на PIN-Pad",q12a2: "компьютер выключается",q12a3: "появляется заставка защищенная паролем ",q12a4: "изменен пароль пользователя",q12id: "-1",q13: "13. Что вы используете для настройки и включения службы Profile Manager?", q13a1: "веб-браузер",q13a2: "Server app",q13a3: "утилита профиля",q13a4: "руководитель рабочей группы", q13id: "-1",  q14: "14. Используя самозаверяющиеся сертификаты с Profile Manager, какой будет первый профиль, который вам потребуется установить?",q14a1: "профиль регистрации ",q14a2: "доверенный профиль",q14a3: "профиль конфигурации",q14a4: "общий профиль",q14id: "-2",q15: "15. Какой URL-адрес должен использовать администратор для создания профиля конфигурации на сервере mdm.amsys.com?", q15a1: "https://mdm.amsys.com/admin", q15a2: "https://mdm.amsys.com/", q15a3: "https://mdm.amsys.com/mydevices",q15a4: "https://mdm.amsys.com/profilemanager",q15id: "1")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor(colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)]
        
      //     self.navigationItem.backBarButtonItem?.tintColor = UIColor.orange
      //     self.navigationController?.navigationBar.tintColor = UIColor.orange
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tests.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testIdentifier", for: indexPath) as! QuizTableViewCell

        cell.quizNameLabel?.text = tests[indexPath.row].name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowQuizInformation" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! QuizInformtionViewController
               destinationController.quizblock = tests[indexPath.row]
                //   destinationController.restaurant = restaurants[indexPath.row]
            }
        }
    }
    
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}