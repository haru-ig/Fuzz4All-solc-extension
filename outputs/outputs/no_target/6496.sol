pragma solidity ^0.8.0;
contract modifierA{
    function f() public view returns (uint256){
        uint256 x; uint256 y;
        while(true){
            x += 256;
        }
    }
}
contract myContractA is modifierA{
}
contract myContractB is modifierA{
}
contract myContractC is modifierA{
}
contract myContractD is modifierA{
}
contract myContractE is modifierA{
}
contract myContractF is modifierA{
}
contract myContractG is modifierA{
}
contract myContractH is modifierA{
}
contract myClass{
     function myClass(){
        myClass.MyClassA a;
        myClass.MyClassC c;
        myClass.MyClassB b;
    }
}
contract myClass {
     modifier Modifier() {
         uint x = 1;
         if (true) {
             if (true) {
                 uint y = 2;
                 return;
             }
             else
                 return;
         }
         else
             return;
     }
     modifier ModifierWithParameters() {
         uint x = 1;
         uint y;
         uint z;
         return;
     }
     modifier ModifierWithArray {
         uint x = 1;
         uint y;
         if (true)
             return;
         return;
     }
     modifier ModifierWithTuple {
         uint x = 1;
         uint y;
         (,y) = (x, 22);
         return;

     }
     modifier ModifierWithoutReturn {
         uint a;
         return;
     }

     modifier ModifierWithoutArray {
        uint a;
        if (true)
            return;
        return;
     }

    Modifier modifierB;
}
contract MyClassA is modifierA(){}
contract MyClassC {
     modifier Modifier {
         uint x;
         uint y;
         if (true) {
             if (true) {
                 uint z;
                 return;
             }
             else
                 return;
         }
         else
             return;
     }
     modifier ModifierWithParameters {
         uint x;
         uint y;
         uint z;
         return;
     }
     modifier ModifierWithArray {
         uint x = 1;
         uint y;
         if (true)
             return;
         return;
     }
     modifier ModifierWithTuple {
         (uint x, uint y) = (1, 2);
         return;
     }
     modifier Modifier
