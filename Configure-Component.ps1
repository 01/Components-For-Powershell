param($Component="All-Langs",$Preference,[Switch]$List,[Switch]$Silent,[Switch]$ThrowErrors,[Switch]$InRecurse,[Switch]$Debug,[Alias("Teardown")][Switch]$Remove)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.1] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gQWRkLVRvUGF0aCB7cGFyYW0oW1ZhbGlkYXRlUGF0dGVybigiLi4qIildW1N0cmluZ10kRm9sZGVyID0gJFBXRCwgW0FsaWFzKCJwIiwicHJlIiwiYmFjayIpXVtzd2l0Y2hdJFByZXBlbmQpDQoNCiAgICB0cnkgeyRGb2xkZXIgPSBSZXNvbHZlLVBhdGggJEZvbGRlciAtRXJyb3JBY3Rpb24gU3RvcH0gY2F0Y2gge1Rocm93ICJbQVAtUGF0aDpBZGRdIEZvbGRlciBbJEZvbGRlcl0gRG9lcyBub3QgRXhpc3QifQ0KICAgIGlmIChUZXN0LVBhdGggJGZvbGRlciAtdHlwZSBsZWFmKSB7VGhyb3cgIltBUC1QYXRoOkFkZF0gSW5wdXQgWyRGb2xkZXJdIG11c3QgYmUgYSBmb2xkZXIhIn0NCiAgICBpZiAoJEZvbGRlciAtaW4gKEdldC1QYXRoKSkge3JldHVybn0NCiAgICBpZiAoISRQcmVwZW5kKSB7JEVudjpQYXRoICs9ICI7JEZvbGRlciJ9IGVsc2UgeyRFbnY6UGF0aCA9ICIkRm9sZGVyOyQoJEVudjpQYXRoKSJ9DQp9CgpmdW5jdGlvbiBJbnB1dC1Qcm9tcHQge3BhcmFtKFtWYWxpZGF0ZU5vdE51bGxvckVtcHR5KCldW1N0cmluZ10kUHJvbXB0ID0gIkVudGVyIFRleHQgOiAiKQ0KDQogICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lICRQcm9tcHQNCiAgICAkUmVSZWdYID0gJ1teXHgwMS1ceDA4XHgxMC1ceDgwXSsnIydbXlx3XC5dJyBb0JAt0Y/QgdGRXQ0KICAgICRUclN0cmluZyA9ICIiDQogICAgJGlQb3N4ID0gW0NvbnNvbGVdOjpDdXJzb3JMZWZ0DQogICAgJGlQb3N5ID0gW0NvbnNvbGVdOjpDdXJzb3JUb3ANCiAgICAkQ3ZpcyA9IFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRGYWxzZQ0KICAgICRDb3VudCA9IDE7JFNsZWVwID0gMA0KICAgIFdoaWxlICgkVHJ1ZSkgew0KICAgICAgICBpZiAoJGNvdW50IC1ndCA1MDApIHskU2xlZXAgPSAxMDB9DQogICAgICAgIGlmICgkSG9zdC5VSS5SYXdVSS5LZXlBdmFpbGFibGUpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5RG93bixOb0VjaG8iKTskQ291bnQ9MDskU2xlZXA9MH0gZWxzZSB7JENvdW50Kys7U3RhcnQtU2xlZXAgLW0gJFNsZWVwO2NvbnRpbnVlfQ0KICAgICAgICBpZiAoS2V5UHJlc3NlZCAifn5CYWNrU3BhY2V+fiIgJFN0b3JlKSB7aWYgKCRzdG9yZS5Db250cm9sS2V5U3RhdGUgLW1hdGNoICJjdHJsIikgeyRUclN0cmluZz0iIn0gZWxzZSB7JFRyU3RyaW5nID0gPzogKCRUclN0cmluZy5MZW5ndGggLWVxIDApeyIifXskVHJTdHJpbmcuc3Vic3RyaW5nKDAsJFRyU3RyaW5nLkxlbmd0aC0xKX19fQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+U3BhY2V+fiIgJFN0b3JlKSB7JFRyU3RyaW5nICs9ICIgIn0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVzY2FwZX5+IiAkU3RvcmUpIHskVHJTdHJpbmc9IiI7YnJlYWt9DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5FTlRFUn5+IiAkU3RvcmUpIHtXcml0ZS1Ib3N0ICIiO2JyZWFrfSBlbHNlIA0KICAgICAgICB7JFRyU3RyaW5nICs9ICRTdG9yZS5DaGFyYWN0ZXIgLXJlcGxhY2UgKCRSZVJlZ1gsJycpfQ0KICAgICAgICAkd3QgPSBbQ29uc29sZV06OkJ1ZmZlcldpZHRoIC0gJFByb21wdC5sZW5ndGggLSAxDQogICAgICAgIFtDb25zb2xlXTo6Q3Vyc29ybGVmdCA9ICRpUG9zeA0KICAgICAgICBbQ29uc29sZV06OkN1cnNvclRvcCA9ICRpUG9zeQ0KICAgICAgICBpZiAoJHd0LSRUclN0cmluZy5MZW5ndGggLWx0IDApIHsNCiAgICAgICAgICAgICR0Yj0iIg0KICAgICAgICAgICAgJHR0PSIuLi4iKyRUclN0cmluZy5zdWJzdHJpbmcoJFRyU3RyaW5nLkxlbmd0aC0kd3QrMykNCiAgICAgICAgfSBlbHNlIHsNCiAgICAgICAgICAgICR0Yj0iICIqKCR3dC0kVHJTdHJpbmcuTGVuZ3RoKQ0KICAgICAgICAgICAgJHR0PSRUclN0cmluZw0KICAgICAgICB9DQogICAgICAgICRmY29sID0gW2NvbnNvbGVdOjpGb3JlZ3JvdW5kQ29sb3INCiAgICAgICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lIC1mICRmQ29sICR0dCRUYg0KICAgIH0NCiAgICBbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkQ3Zpcw0KICAgIHJldHVybiAkVFJTdHJpbmcNCn0KCmZ1bmN0aW9uIEpTLU9SIHtmb3JlYWNoICgkYSBpbiAkYXJncykge2lmICghJGEpIHtjb250aW51ZX07aWYgKCRhLkdldFR5cGUoKS5OYW1lIC1lcSAiU2NyaXB0QmxvY2siKSB7JGEgPSAkYS5pbnZva2UoKTtpZiAoISRhKXtjb250aW51ZX19O3JldHVybiAkYX19CgpmdW5jdGlvbiBHZXQtV2hlcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bc3RyaW5nXSRGaWxlLCBbU3dpdGNoXSRBbGwpDQoNCiAgICBBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHt0aHJvdyAiTmVlZCBTeXMzMlx3aGVyZSB0byB3b3JrISI7cmV0dXJufQ0KICAgICRPdXQgPSB3aGVyZS5leGUgJGZpbGUgMj4kbnVsbA0KICAgIGlmICghJE91dCkge3JldHVybn0NCiAgICBpZiAoJEFsbCkge3JldHVybiAkT3V0fQ0KICAgIHJldHVybiBAKCRPdXQpWzBdDQp9CgpmdW5jdGlvbiBQcmludC1MaXN0IHtwYXJhbSgkeCwgW1N3aXRjaF0kSW5SZWN1cnNlKQ0KDQogICAgaWYgKCR4LmNvdW50IC1sZSAxKSB7cmV0dXJuID86KCRJblJlY3Vyc2UpeyR4fXsiWyR4XSJ9fSBlbHNlIHsNCiAgICAgICAgcmV0dXJuICJbJCgoJHggfCAlIHtQcmludC1MaXN0ICRfIC1JblJlY3Vyc2V9KSAtam9pbiAnLCAnKV0iDQogICAgfQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnLCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSAtb3IgJHRleHQuR2V0VHlwZSgpLk5hbWUgLW1hdGNoICJcW1xdJCIpIHtyZXR1cm4gJFRleHQgfD97IiRfIn18ICUge1dyaXRlLUFQICRfIC1Ob1NpZ246JE5vU2lnbiAtUGxhaW5UZXh0OiRQbGFpblRleHQgLUFsaWduICRBbGlnbn19DQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW5vdG1hdGNoICJeKCg/PE5OTD54KXwoPzxOUz5ucz8pKXswLDJ9KD88dD5cPiopKD88cz5bK1wtIVwqXCNdKSg/PHc+LiopIikge1dyaXRlLUFQICRUZXh0OyRUZXh0fQ0KICAgICR0YiAgPSAiICAgICIqJE1hdGNoZXMudC5sZW5ndGg7DQogICAgJENvbCA9IEB7JysnPScyJzsnLSc9JzEyJzsnISc9JzE0JzsnKic9JzMnOycjJz0nRGFya0dyYXknfVsoJFNpZ24gPSAkTWF0Y2hlcy5TKV0NCiAgICBpZiAoISRDb2wpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICAkU2lnbiA9ICQoaWYgKCROb1NpZ24gLW9yICRNYXRjaGVzLk5TKSB7IiJ9IGVsc2UgeyJbJFNpZ25dICJ9KQ0KICAgIEFQLVJlcXVpcmUgImZ1bmN0aW9uOkFsaWduLVRleHQiIHtmdW5jdGlvbiBHbG9iYWw6QWxpZ24tVGV4dCgkYWxpZ24sJHRleHQpIHskdGV4dH19DQogICAgJERhdGEgPSAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIjtpZiAoISREYXRhKSB7cmV0dXJufQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiDQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiQoW2Jvb2xdJE1hdGNoZXMuTk5MKSAtZiAkQ29sICREYXRhDQogICAgaWYgKCRQYXNzVGhydSkgeyREYXRhfQ0KfQoKZnVuY3Rpb24gR2V0LVBhdGgge3BhcmFtKCRtYXRjaCkNCg0KICAgIGlmICghJEVudjpQYXRoKSB7cmV0dXJuIEAoKX0NCiAgICAkRW52OlBhdGggPSAoJEVudjpQYXRoIC1yZXBsYWNlKCI7KyIsIjsiKSAtcmVwbGFjZSgiXFw7fFxcJCIsIjsiKSkudHJpbSgiOyIpDQogICAgJEVudjpQYXRoID0gKCgkRW52OlBhdGgpLnNwbGl0KCI7IikgfCBzZWxlY3QgLXVuaXF1ZSkgLWpvaW4oIjsiKQ0KICAgICRkID0gKCRFbnY6UGF0aCkuc3BsaXQoIjsiKQ0KICAgIGlmICgkbWF0Y2gpIHskZCAtbWF0Y2ggJG1hdGNofSBlbHNlIHskZH0NCn0KCmZ1bmN0aW9uIFJlbW92ZS1Gcm9tUGF0aCB7cGFyYW0oW1N0cmluZ10kRm9sZGVyPSIiKQ0KDQogICAgaWYgKCEkRm9sZGVyKSB7cmV0dXJufQ0KICAgICRFbnY6UGF0aCA9IChHZXQtUGF0aCB8ID8geyRfIC1pbmUgJEZvbGRlcn0pIC1qb2luKCI7IikNCn0KCmZ1bmN0aW9uIElzLUFmZmlybWF0aXZlIHtwYXJhbSgkVGV4dCkNCiRlYWggPSAiW2V1YV0qW3Boc10qIjtyZXR1cm4gJFRleHQgLW1hdGNoICJeKD8hPW5vK3QgKikoKD8hPW4ke2VhaH0pYSp5KyR7ZWFofXxhZmZpcnxwb3NpdGl2ZXxvZmY/IGNvdXJzZSkifQoKZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KClNldC1BbGlhcyBpbnYgUHJvY2Vzcy1UcmFuc3BhcmVuY3kKU2V0LUFsaWFzIEEyUGF0aCBBZGQtVG9QYXRoClNldC1BbGlhcyBSRlAgUmVtb3ZlLUZyb21QYXRo")))
# ========================================END=OF=COMPILER===========================================================|

AP-Require "function:Get-Path" {Write-AP "!Get-Path needs to be configured to use this command";exit}
function Recurse-Me($arr) {$arr | % {& $PSCommandPath $_ $Preference -List:$List -Silent:$Silent -ThrowErrors:$ThrowErrors -Debug:$Debug -InRecurse}}
function Process-Throw($s,$l=1) {if(!$s.Exception.WasThrownFromThrowStatement){JS-OR $s.Exception.InnerException.Message $s.Exception.message}else{$s=$s.Exception;if ($l -eq 2) {$s = $s.message};$s}}
function Process-Invoke($c,$s,$l=1) {if(!$ThrowErrors){Write-AP "x!Could not attach component ","nx+$c","xn! [","xn#$(Process-Throw $s $l)","n!]"}else{Throw (Process-Throw $S)}}
function Component-Alias($al) {JS-OR $Script:AliasDB.$al $al}
function Component-Version($v) {if ($v) {"[$v]"}}
function Get-CC-TearDown {
    return @{
        removeFuncs={param($RGX);ls FUnction:|? Name -Match $RGX | Remove-Item}
    }
}
function Get-Prefs($Pref,$Me) {if (!$Pref) {return};if ($Pref.GetType().name -eq "Hashtable") {JS-OR $Pref.$Me $Pref."$($AliasDBRev.$Me)"} else {$Pref}}
function Negate-Path($Namespace,$Filter) {Get-Path $Namespace | ? {$_ -match [Regex]::escape($Filter)} | % {RFP $_}}
$Script:AliasDB = @{
    "DrRacket"="Racket"
    "RB"="Ruby"
    "PY"="Python"
    "Mongo"="MongoDB"
}
$Script:AliasDBRev = @{};@($AliasDB.Keys) | % {$Script:AliasDBRev.($AliasDB.$_) = $_}
$Components = @{
    C = {
        param($NoPrepend)
        $NoPrepend = !!$NoPrepend
        $PyD = "C:\AP-Langs\Cygwin\bin"
        if (!(test-path $Pyd)) {Throw "AP-Langs\CYGWIN Does not Exist on System!";exit}
        A2Path $Pyd -Prepend:(!$NoPrepend)
        AP-Require "dep:gcc" {Write-AP "!Seems like your cygwin/path directory does not have GCC please fetch.";exit}
        $Env:TERM="cygwin";$Env:ANSICON="true";$Env:CYGWIN = "nodosfilewarning notitle glob"
        $Env:CygFolder = Split-Path "$PyD"
        if (!$Silent) {Write-AP "+Configured C for AP-PShell Management Console!"}
        function Global:Compile-C ($Programs, $As) {
            if (!$Programs) {
                $t = @(ls *.c | Select Name,Length,LastWriteTime)
                $Programs = $(if ($t.length -eq 1) {
                    $t.name
                    Write-AP "*Found only 1 C File, will compile!"
                } else {
                    Write-AP "!Please Select programs to Compile"
                    ($t | Out-GridView -PassThru -Title "Select Program to Compile").Name
                })
            }
            if (!$Programs) {Write-AP "!None, Selected, Quit";return}
            foreach ($p in $Programs) {
                if ($p.substring($p.length-2) -ne ".c") {$p = "$p.c"}
                if (!(Test-Path $p)) {Write-AP "!Program [$p] Does Not Exist"}
                if (!$As) {$As = $p -replace ".c"}
                if ($As -notMatch "\.exe") {$As = "$As.exe"}
                $Compile = @{}
                Write-AP "*Compiling [$p]"
                $Compile.Output = gcc -Wall -g -I "$($Env:CygFolder)\usr\x86_64-w64-mingw32\sys-root\mingw\include" -o $As $P 2>&1 | ? {"$_" -and "$_".trim() -and $_ -notMatch "find_fast_cwd|public mailing"} | % {
                    if ($_ -is [System.Management.Automation.ErrorRecord]) {"$_".split("`n") | % {if ($_) {$_}} | % {$Compile.Errors += ,"$_"}} else {"$_".split("`n") | % {if ($_) {$_}}}
                }
                $global:c = $compile
                if ($Compile.Output) {Write-AP ">+Output:";$Compile.Output | % {Write-AP ">>*$_"}}
                function FormatError($msg) {
                    if ($Global:Foliate) {$tt = ">"} else {$tt = ""}
                    if ($msg -notmatch "[^\:]\.c+\:((?<Ln>\d+)\:(?<Char>\d+)\:)?( ?)+((?<type>(error|warning|note))\: ?)?(?<msg>.+)( ?)+$") {return}
                    if ($Matches.ln) {$Ret = "On Ln {0} Chr {1} | {2}" -f $Matches["Ln","Char","msg"]}
                    else {$Ret = $Matches["msg"]}
                    $Sign = "-"
                    if ($Matches["msg"] -like "In function*") {$Sign = "*";$tt = "";$Global:Foliate = $true}
                    if ($Matches.type -eq "warning") {$Sign = "!"}
                    if ($Matches.type -eq "note") {$Sign = "*"}
                    return "$tt$Sign$Ret" -replace "G�[��]","'"
                }
                if ($Compile.Errors) {Write-AP ">!Errors:";$Compile.Errors | % {Write-AP (">>{0}" -f (FormatError $_))}}
                rv Foliate -scope Global -ea SilentlyContinue;del "Function:\FormatError"
            }
        }rv PYD}
    Racket = {
        $PyD = @((item C:\Program*\Racket,C:\AP-Langs\Racket-Scheme).FullName)[-1]
        if (!$PyD) {Throw "Dr. Racket Does not Exist on System!";exit}
        A2Path $PyD
        if (!$Silent) {Write-AP "+Configured Dr. Racket for AP-PShell Management Console!"}
        rv PYD}
    Git = {
        $PyD = "$Home\AppData\Local\GitHub\shell.ps1"
        if (!(test-path $Pyd)) {Throw "Git Does not Exist on System!";exit}
        & $PyD
        function Global:Git-Rebase ([Switch]$Silent) {
            pushd (cmd /c where msys-1.0.dll)
            $addr = "0x$(3..7 | Get-Random)0000000"
            rebase.exe -b $addr msys-1.0.dll
            if (!$Silent) {Write-AP "+Rebased DLL to address [$addr]"}
            popd
        }
        function Global:branches{git branch | % {$_.substring(2)}}
        function Global:master{branches | ? {$_ -eq "master"} | % {git checkout $_}}
        function Global:gh-pages{branches | ? {$_ -eq "gh-pages"} | % {git checkout $_}}
        function Global:Git-NextVersion([Parameter(Mandatory=$True)]$Message) {
            $Version = "v0.0.1"
            if (@(git tag)[-1] -match "^(?<pre>\w+)(?<Major>\d)+\.(?<Minor>\d)+\.(?<Version>\d)+") {
                if ([int32]$Matches.Version -lt 9) {$Matches.Version=[int32]$Matches.Version+1}
                elseif ([int32]$Matches.Minor -lt 9) {$Matches.Minor=[int32]$Matches.Minor+1;$Matches.Version=0}
                else {$Matches.Major=[int32]$Matches.Major+1;$Matches.Minor=$Matches.Version=0}
                $Version = "{0}{1}.{2}.{3}" -f $Matches["pre","Major","Minor","Version"]
            }
            Write-AP -n "x!Confirm Upgrade to Version [";Write-AP -n "x*$Version";Write-AP -n "!]:"
            if (Is-Affirmative (Input-Prompt "[y/N]:: ")) {Git-SetTag $Version $Message}
        }
        function Global:Git-SetTag([Parameter(Mandatory=$True)]$Version,[Parameter(Mandatory=$True)]$Message,[switch]$Force) {
            if ($Version -in (git tag)) {
                if(!$Force) {Write-AP "!Tag [$version] already created, user -force to re-version.";return}
                git tag -d $Version;git push origin :refs/tags/$Version
            }
            git tag -a $Version -m $Message;git push --tags
        }
        if (!$Silent) {Write-AP "+Configured Git Console for AP-PShell Management Console!"}
        rv PYD}
    Go = {
        $PyD = @((item C:\Go*,C:\AP-Langs\Go*).FullName)[-1]
        if (!$PyD) {Throw "Go-Lang Does not Exist on System!";exit}
        A2Path $PyD\bin
        if (!$Silent) {Write-AP "+Configured Go-Lang for AP-PShell Management Console!"}
        $env:GOPATH = ($env:GOROOT = $PyD)+"\bin"
        rv PYD}
    Java = {
        $x86 = Test-Path "C:\Program Files (x86)"
        $PF = "C:\Program Files$(if ($x86) {' (x86)'})"
        $JavaD = @((item "$PF\Java\jre*").Name)[-1]
        if (!$JavaD) {Throw "Java Does not Exist on System!";exit}
        $AndroidSDK = @((item "$Env:AppData\..\Local\Android\sdk","$PF\Android\android-sdk",C:\AP-Langs\Android*SDK -ea SilentlyContinue).FullName)[-1]
        if ($AndroidSDK) {
            $SubMsg = "x>*Extra Plugin [","nsx+AndroidSDK","ns*] connected."
            $env:ANDROID_HOME = $AndroidSDK
            "","platform-" | % {A2Path "$AndroidSDK\${_}tools"}
        }
        A2Path "$PF\Java\$JavaD\bin"
        if (!$Silent) {Write-AP "+Configured Java [$($JavaD.substring(3)) $(if($x86){'32'}else{'64'})-bit] for AP-PShell Management Console!",$SubMsg}
        rv JavaD}
    MongoDB = {
        $PyD = @((item C:\Mongo*,C:\AP-Langs\MongoDB*).FullName)[-1]
        if (!$PyD) {Throw "MongoDB Does not Exist on System!";exit}
        A2Path "$PyD\bin"
        if ($a = (Split-Path -leaf $PyD).substring(7)) {$a="[$a]"}
        if (!$Silent) {Write-AP "+Configured MongoDB$a for AP-PShell Management Console!"}
        rv PYD}
    PHP = {param([ValidateSet("5.4","5.6")]$Version="5.6")
        $PyD = Resolve-Path "C:\AP-Langs\PHP-$Version.*" -ea SilentlyContinue
        if (!$PyD -or !(test-path $Pyd)) {Throw "PHP Does not Exist on System [Must be in C:\AP-Langs\PHP-*]!";exit}
        function PHP-Not($ver) {if ([int]$ver -gt 5.5) {return "5.4"} else {return "5.6"}}
        Get-Path "PHP.+$(PHP-Not $Version)" | % {RFP $_}
        A2Path "$PyD";$Vers=""
        if ($PyD -match "PHP-(?<vers>5\..+)\\?$") {$Vers = " [$($Matches.vers)]"}
        if (!$Silent) {Write-AP "+Configured PHP$vers for AP-PShell Management Console!"}
        if (!(Test-Path -type leaf "$PyD\composer.phar")) {
            Write-AP "!Composer missing, installing..."
            pushd $PyD
            php -r "readfile('http://getcomposer.org/installer');" | php -- --disable-tls
            popd
            if ($?) {Write-AP "+Installed..."}
        }
        function Global:Composer {php "$PyD\composer.phar"}
        rv PYD}
    Python = {param([string]$Version=2)
        $PyDs = @((item C:\Python*,C:\AP-Langs\Python*).FullName)
        if (!($PyD = ($PyDs -match $Version)[0])) {$PyD = $PyDs[-1]}
        else {Negate-Path python @($PyDs -notmatch $Version)[0]}
        if (!$PyD) {Throw "Python Does not Exist on System!";exit}
        try {A2Path (Split-Path (Resolve-Path "~\AppData\Local\Programs\Common\Microsoft\Visual C++ for Python\*\VC\bin\*\vcbuild.exe"))} catch {Write-AP "!This happened: [$_]"}
        "","Scripts" | % {A2Path $PyD\$_}
        "" | % {A2Path (AP-ConvertPath "<Components>\Python-Components\$_")}
        $env:PYTHON = "$PyD\python.exe"
        iex "Function Global:Idle {& '$PyD\Lib\idlelib\idle.pyw' @Args}"
        if (!$Silent) {Write-AP "+Configured Python$(Component-Version (Split-Path -leaf $PyD).substring(6)) for AP-PShell Management Console!"}
        rv PYD}
    R = {param([ValidateSet(32,64)]$bit=32)
        $x64 = $Bit -eq 64
        $PyD = Resolve-Path "C:\AP-Langs\R-*\bin" -ea SilentlyContinue
        if (!$PyD -or !(test-path $Pyd)) {Throw "R-Lang Does not Exist on System [Must be in C:\AP-Langs\R-*]!";exit}
        $BitF = 'x64','i386';if (!$x64) {[Array]::Reverse($BitF)}
        $Fo,$Fn = $BitF
        RFP "$PyD\$Fn"
        A2Path "$PyD\$Fo"
        if (!$Silent) {Write-AP "+Configured R-Lang[$Fo] for AP-PShell Management Console!"}
        rv PYD}
    Ruby = {param([string]$Version=2)
        $PyDs = @((item C:\Ruby*,C:\AP-Langs\Ruby* -ea stop).Fullname)
        $V = $Version -replace "\D"
        if (!($PyD = ($PyDs -match $V)[0])) {$PyD = $PyDs[-1]}
        else {Negate-Path Ruby @($PyDs -notmatch $Version)[0]}
        if (!$PyD) {Throw "Ruby Does not Exist on System!";exit}
        A2Path $PyD\bin;$N = Split-Path -leaf $PyD
        if (!$Silent) {Write-AP "+Configured Ruby$(Component-Version ($N -replace '\D' -replace '\d(?=.)','$0.')) for AP-PShell Management Console!"}
        rv PYD}
    Bower = {
        function Global:cc_bower_teardown.private {
            if (!$cc_TearDown_Resources) {Write-AP "!This function can only be executed from within the Configure-Component context";return $False}
            $cc_TearDown_Resources.removeFuncs.invoke("^Polymer-[ARP].{2,5}");return $True
        }
        Write-AP "x*Added Bower Friendly functions ["
        function Global:Polymer-Add($e) {bower i --save PolymerElements/$e}
        function Global:Polymer-Remove($e) {bower uninstall --save PolymerElements/$e}
        function Global:Polymer-Paper($e) {Polymer-Add "paper-$e"}
        $Funcs = ls Function:\Polymer-* | % Name
        $Funcs[0..($funcs.Length-2)] | % {Write-AP -NoSign "x!$_";Write-AP -noSign "x+, "}
        Write-AP -NoSign "x!$($Funcs[-1])";Write-AP -noSign "+]"
    }
}
if ($List) {
    Write-AP "*Listing All Packages:"
    Write-AP ">+Languages: $(Print-List ($Components.keys) -I)"
    Write-AP ">+Custom Components:"
    ls (AP-ConvertPath "<Comp>\*.ps1") | % {$_.Name.replace(".ps1","")} | % {Write-AP ">>!$_"}
    exit
}
if ($Remove) {
    $Comp = Component-Alias $Component;$Func = item "Function:\cc_${comp}_teardown.private" -ea SilentlyContinue
    if (!$Func) {Write-AP "!No Teardown method found for [$Comp]";exit}
    $cc_TearDown_Resources = Get-CC-TearDown
    $o = iex $Func
    if (!$o) {Write-AP "!Failed to remove component [$Comp]";exit}
    $Func | Remove-Item
    Write-AP "x+Removed component [","nx!$Comp","n+]"
    exit
}
#if (!$InRecurse -and $Preference.GetType().name -eq "Hashtable") {$Primed = @{};@($Preference.Keys) | % {$Primed.(Component-Alias $_) = $Preference.$_};$Preference=$Primed}
if ($Debug) {Write-AP "!$Component Args: $(Get-Prefs $Preference $Component)"}
if ($Component.Count -gt 1) {Recurse-Me $Component}
elseif ($Component -eq "All-Langs") {Recurse-Me @($Components.keys)}
elseif ($Components.($Comp = Component-Alias $Component)) {try{$Components.$Comp.invoke((Get-Prefs $Preference $Component))}catch{Process-Invoke $comp $_};exit}
elseif (Test-Path (AP-ConvertPath "<Comp>\$Component.ps1")) {try{& (AP-ConvertPath "<Comp>\$Component.ps1") (Get-Prefs $Preference $Component)}catch{Process-Invoke $comp $_ 2};exit}
else {Write-AP "!Component [$Component] not found.";exit}
