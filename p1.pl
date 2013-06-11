
$s = "FourscoreandsevenyearsagoourfaathersbroughtforthonthiscontainentanewnationconceivedinzLibertyanddedicatedtothepropositionthatallmenarecreatedequalNowweareengagedinagreahtcivilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth";

sub isPalindrone
{
    my $str = $_[0];
    my $rev = reverse $str;
    if ($rev eq $str)
    {
	return 1;
    }
    else
    {
	return 0;
    }
    
}

my $maxL = 0;
my $maxS = "";

sub substr
{
    my($what, $where, $howmuch) = @_;
    unpack("x$where a$howmuch", $what);
}

for ($i = 0; $i < length($s); $i++)
{
    my $off = 0;
    my $str = "";
    
    while (isPalindrone $str) {
	$str = substr $s, $i-$off, 2 * $off + 1;
	$off++;
    }
    
    # Got to sub by 2
    $off -= 2;
    
    $str = substr $s, $i-$off, 2 * $off + 1;
    
    if ($off >= $maxL) {
	$maxL = $off;
	$maxS = $str;
    }
}
print $maxS."\n";
