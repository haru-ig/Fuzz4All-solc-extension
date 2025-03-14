pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x = 3;
  }
  function _calculate_() internal view returns (uint) {
   var a = x + 1;
   return a + 1;
   }
}
```
```
$ solc 02-08-Solidity.sol
$ g++ -o 02-08-Solidity.exe 02-08-Solidity.cpp
$ 02-08-Solidity.exe
32
33
32
```
```
$ g++ -o 02-08-Solidity-2.exe 02-08-Solidity.cpp # Adding -Wno-deprecated warning
$ 02-08-Solidity-2.exe
32
33
32
```
```
$ g++ -o 02-08-Solidity-3.cpp -Wno-deprecated 02-08-Solidity.cpp # Adding -Wno-deprecated warning to our code
$ g++ -o 02-08-Solidity-4.exe 02-08-Solidity-3.cpp # Adding -Wno-deprecated warning to our code to our final executable
$ 02-08-Solidity-4.exe
33
33
```
```
$ g++ -o 02-08-Solidity-5.exe 02-08-Solidity-4.cpp # Adding -Wno-deprecated warning to our code again
$ 02-08-Solidity-5.exe
32
33
33
```
```
$ g++ -o 02-08-Solidity-6.exe 02-08-Solidity-5.cpp # Adding -Wno-deprecated warning to our code yet again
$ 02-08-Solidity-6.exe
33
32
33
```

![32-33-32]{img32-33-32.png}
