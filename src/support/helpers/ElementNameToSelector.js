/**
* transform a more readable section name to a css selector
* @param {String} a css selector or section name
*/

module.exports = (name) => {
  name = name.trim().split(" ");
  function subselector(index){
    return name.slice(index, name.length).join(" ");
  }
  switch(name[0].toLowerCase()){
    case "side":
      // for side menu
      return "" + subselector(2);
    case "header":
      return "" + subselector(1)
    case "main":
      // for main section
      return "#topot " + subselector(1);
    case "join":
      // for join section
      return "#topot + div " + subselector(2);
    case "app":
      // for app section
      return "#topot + div + div " + subselector(2);
    case "community":
      // for community section
      return "#topot + div + div + div " + subselector(2);
    case "connected":
      // for connected section
      return "#topot + div + div + div + div " + subselector(2);
    case "footer":
      // for footer
      return "#topot + div + div + div + div + div " + subselector(1);
    default:
      // if there is no special name just return the original selector
      return subselector(0);
  }
}
