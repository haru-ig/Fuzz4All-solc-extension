pragma solidity ^0.8.0;
contract S5 {
        import "@openzeppelin/contracts/math/Math.sol";
        uint constant public base32NumberPrefix = 22;
        uint constant base = (2 ** 32) - 2;
        uint  baseNumerals;
        uint  baseExponent;
        uint  lastDigit;
        uint  carry;
        uint  digit;
        uint x;
        function (uint x0) public {
        x = x0;
        lastDigit = x0 % base32NumberPrefix;
        if (x1 >= base32NumberPrefix && lastDigit == 0) {
            baseExponent = base32NumberPrefix;
        } else if (x1 >= base32NumberPrefix && lastDigit > 0) {
            baseExponent = base32NumberPrefix - 1;
        } else{
            baseExponent = (x1 + base) / base32NumberPrefix;
        }
        lastDigit = (((uint) (x1 / 32)) - 2) * base + lastDigit;
        while(lastDigit + 1 < base32NumberPrefix / 32 &&!((x1 == base32NumberPrefix / 32) && lastDigit == 0)) {
            digit = 32*lastDigit + (x1 - 2*32*lastDigit);
            x1 = x1 - x1/base32NumberPrefix;
            lastDigit = lastDigit/base32NumberPrefix;
            baseNumerals = baseNumerals * base + digit;
        }
        carry = x / (32 * Math.pow(base, baseExponent-1));
        x = x / (Math.pow(base, x - x / (32 * Math.pow(base, baseExponent)))));
        if (x > 0){
            while(!((x ==
