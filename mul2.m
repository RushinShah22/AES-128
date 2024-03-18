function ans= mul2(a)
    aes='00011011'-'0';
    ans=dec2bin(a,8);
    if ans(1)=='0'
        ans=[ans(2:8) '0'];
    else
        ans=[ans(2:8) '0']-'0';
        ans=xor(aes,ans);
        ans= strrep(num2str(ans), ' ', '');
    end
        ans=bin2dec(ans);
    
end
    