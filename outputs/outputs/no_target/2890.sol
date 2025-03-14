pragma solidity ^0.8.0;

contract malicious is mutatedStorage {




    function add(uint a,uint b) public view returns(uint) {

        c[a]+=1;
        c[b]+=1;

        assert(a>0 && b>0);
        return a+b;
    }

    function add2(uint a,uint b) public view returns(uint){

        assert(a>0 && b!=0);
        return a+b;
    }
}
contract MyContract {
    function mutatedAdd(uint a,uint b) public view returns(uint) {

        mutatedStorage storage a1 = t0;
        mutatedStorage storage b1 = t1;
        mutatedStorage storage a2 = t2;
        mutatedStorage storage b2 = t3;

        c[a]+=1;
        c[b]="hi";
        assert(a>0 && b>0);
        return a+b;
    }

    function mutatedAdd2(uint a,uint b) public view returns(uint){

        mutatedStorage storage c1 = t4;
        mutatedStorage storage d1 = t5;
        mutatedStorage storage c2 = t6;

        c[a]+=2;
        c[b]+=2;
        assert(a>0 && b!=0);
        return a+b;
    }
}

pragma solidity ^0.8.0;

contract Example {

}
