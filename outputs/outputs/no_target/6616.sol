pragma solidity ^0.8.0;
contract Test {
    {
        var a = 0;
        {
            var c;
            {
            }
            c++;
        }
        a++;
        assert(a == 5);
    }
    function h(){
    }
}
}
