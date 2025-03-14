pragma solidity ^0.8.0;
contract Mutated2 is Mutated {
    function mutated3() public {
        mutated1++;
        mutated2.1[2]++;
        mutated2.4.2++;
    }
}
contract Mutated3 is Mutated {
    uint[] private array;
    mapping (uint => uint) public array1;

    function mutatedarray() public {
        int i;
        uint j;
        uint k;
        uint[1] memory u;

        while (array.length > 900) {
            array.push(uint(uint.max));
        }
        array1[200] = 2;
        array1.push(uint(array.length));
        array1[array.length] = array.push(70);
        array1[array.length+1] = array[array.length];
        array1[array.length-5] = array.unshift(1398929282);
        for (i = 0; i < array.length; i++)
            {
                array1[i] = i;
            }
        array1[array.length * 0] = array[array.length]/10;

        for (i = 0; i < 4; i++)
            {
                for (j = 31; j >= 0; j--)
                    {
                        array[(2+i)*2**j] = random();
                        array[array.length-i] *= 500 - i;
                    }
                u = random();
                for (k = 0; k < array.length; k++)
                    {
                        uint z = array.length-k;
                        if (uint(uint.add(uint(uint.div(array[array.length-1], 2**z)), uint(18))) > uint(array[z]))
                            {
                                uint i = int(i);
                                array[i] = uint(uint.sub(uint(uint.sub(uint(uint.div(array.length, 2**int(i + int(j + k)))), uint(18))), uint(array[z])));
                                array[z] = uint(uint.sub(array[z], uint(uint.add(uint(uint.div(array.length, 2**i)), uint(18)))+uint(uint.mul(array.length - z, 2**j)))), array1.mul(random() + uint(uint.div(array.length, 2**int(i + int(j + k))))%array.length - z));
                            }
                        i--;
                    }
            }
    }

    function mutatedarray2(Mutated3 storage i) public {
        uint j;

        for (i.array1[0] = 0; i.array1[0] < 200; i.array1[0]++) {
            i.array1.length = 1;
            for (i.array1[int(i.array1[-1])] = 0; i.array1[int(i.array1[-1])] < (pow
