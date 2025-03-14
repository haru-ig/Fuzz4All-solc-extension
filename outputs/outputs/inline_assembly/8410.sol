pragma solidity ^0.8.0;
contract MutateAssembly
{
    function test() private pure returns(uint)
    {
        uint j;
        uint r;
        uint m;
        uint x = 0x123;
        uint z = 0x456;
        m = 0x123;
        r = 0x456;

        {
            let ptr1 := 0
            let ptr2 := 0
            let j := ptr1
            let m := ptr2
            let k := mmul(r, m)
            sub(j, r)
            sub(j, r)
            add(j, m)
            sub(j, x)
            add(x, k)
        }
        while (eq(x, z))
        {
            m = mul(x, m, 2)
            r = 0x345
            x = mmul(x, m, 2)
            r = mmul(r, m)
            x = mmul(x, m)
            x = mmul(x, m)
            x = 2 * x + 3
        }
        return mul(m, r);
    }
}
