function transferOwnership(address newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  require(newOwner != owner, "Ownable: new owner is the same as the old owner");
  _transferOwnership(newOwner);
}

function _transferOwnership(address newOwner) {
  emit OwnershipTransferred(owner, newOwner);
  owner = newOwner;
}

// Added a modifier for better code structure and security
modifier onlyOwner() {
  require(msg.sender == owner, "Ownable: caller is not the owner");
  _;
}