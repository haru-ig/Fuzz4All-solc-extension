pragma solidity ^0.8.0;
contract BugsAbiCoderOld {
}

pragma solidity 0.8.0;
contract BugsOldAbiCoder1 {
}
contract BugsOldAbiCoder2 {
}
contract BugsNewAbiCoder {

}
contract BugsNewAbiCoder1 is BugsNewAbiCoder {

}
contract BugsNewAbiCoder2 is BugsNewAbiCoder {

}
contract BugsNewAbiCoder3 is BugsNewAbiCoder {

}
contract BugsNewAbiCoder4 is BugsNewAbiCoder oldAbiContract {

}
contract BugsNewAbiCoder5 is BugsOldAbiCoder {

}
contract BugsNewAbiCoder6 is BugsOldAbiCoder {

}
contract BugsNewAbiCoder7 is BugsOldAbiCoder {

}
contract BugsNewAbiCoder8 is BugsOldAbiCoder {

}
contract BugsNewAbiCoder9 is BugsNewAbiCoder {

}
contract BugsNewAbiCoder10 is BugsNewAbiCoder {

}
