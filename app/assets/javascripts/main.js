$(document).ready(function(){

  $("#fs").click(function(){
    $("#fsmodal").modal('show');
  });

  $("#rel").click(function(){
    $("#relmodal").modal('show');
  });

  $("#op").click(function(){
    $("#opmodal").modal('show');
  });

  $("#pe").click(function(){
    $("#pemodal").modal('show');
  });

  $("#comp").click(function(){
    $("#compmodal").modal('show');
  });

  $("#sec").click(function(){
    $("#secmodal").modal('show');
  });

  $("#trans").click(function(){
    $("#transmodal").modal('show');
  });

  $("#maint").click(function(){
    $("#maintmodal").modal('show');
  });

});

var arr = ["Very strongly prefers", "Strongly prefers", "Prefers", "Slightly prefers", "Equally prefers", "Slightly prefers", "Prefers", "Strongly prefers", "Very strongly prefers"];

function fr(val) {
	var chara = "";
	if (val < 5){
		chara = " Learnability";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " Learnability and Appropriate Recognizability";
	}
    document.getElementById("fr_output_id").innerHTML = arr[val - 1] + chara;
}

function fp(val) {
	var chara = "";
	if (val < 5){
		chara = " Operability";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " Operability and Appropriate Recognizability";
	}
    document.getElementById("fp_output_id").innerHTML = arr[val - 1] + chara;
}

function fo(val) {
	var chara = "";
	if (val < 5){
		chara = " User Error Protection";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " User Error Protection and Appropriate Recognizability";
	}
    document.getElementById("fo_output_id").innerHTML = arr[val - 1] + chara;
}

function fs(val) {
	var chara = "";
	if (val < 5){
		chara = " User Interface Aesthetics";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " User Interface Aesthetics and Appropriate Recognizability";
	}
    document.getElementById("fs_output_id").innerHTML = arr[val - 1] + chara;
}

function fc(val) {
	var chara = "";
	if (val < 5){
		chara = " Accessibility";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " Accessibility and Appropriate Recognizability";
	}
    document.getElementById("fc_output_id").innerHTML = arr[val - 1] + chara;
}

function fm(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Usefulness";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " Perceived Usefulness and Appropriate Recognizability";
	}
    document.getElementById("fm_output_id").innerHTML = arr[val - 1] + chara;
}

function ft(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " Appropriate Recognizability";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and Appropriate Recognizability";
	}
    document.getElementById("ft_output_id").innerHTML = arr[val - 1] + chara;
}

function rp(val) {
	var chara = "";
	if (val < 5){
		chara = " Operability";
	}
	else if (val > 5){
		chara = " Learnability";
	}
	else{ // val == 5
		chara = " Operability and Learnability";
	}
    document.getElementById("rp_output_id").innerHTML = arr[val - 1] + chara;
}

function ro(val) {
	var chara = "";
	if (val < 5){
		chara = " User Error Protection";
	}
	else if (val > 5){
		chara = " Learnability";
	}
	else{ // val == 5
		chara = " User Error Protection and Learnability";
	}
    document.getElementById("ro_output_id").innerHTML = arr[val - 1] + chara;
}

function rs(val) {
	var chara = "";
	if (val < 5){
		chara = " User Interface Aesthetics";
	}
	else if (val > 5){
		chara = " Learnability";
	}
	else{ // val == 5
		chara = " User Interface Aesthetics and Learnability";
	}
    document.getElementById("rs_output_id").innerHTML = arr[val - 1] + chara;
}

function rc(val) {
	var chara = "";
	if (val < 5){
		chara = " Accessibility";
	}
	else if (val > 5){
		chara = " Learnability";
	}
	else{ // val == 5
		chara = " Accessibility and Learnability";
	}
    document.getElementById("rc_output_id").innerHTML = arr[val - 1] + chara;
}

function rm(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Usefulness";
	}
	else if (val > 5){
		chara = " Learnability";
	}
	else{ // val == 5
		chara = " Perceived Usefulness and Learnability";
	}
    document.getElementById("rm_output_id").innerHTML = arr[val - 1] + chara;
}

function rt(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " Learnability";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and Learnability";
	}
    document.getElementById("rt_output_id").innerHTML = arr[val - 1] + chara;
}

function po(val) {
	var chara = "";
	if (val < 5){
		chara = " User Error Protection";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " User Error Protection and Operability";
	}
    document.getElementById("po_output_id").innerHTML = arr[val - 1] + chara;
}

function ps(val) {
	var chara = "";
	if (val < 5){
		chara = " User Interface Aesthetics";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " User Interface Aesthetics and Operability";
	}
    document.getElementById("ps_output_id").innerHTML = arr[val - 1] + chara;
}

function pc(val) {
	var chara = "";
	if (val < 5){
		chara = " Accessibility";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Accessibility and Operability";
	}
    document.getElementById("pc_output_id").innerHTML = arr[val - 1] + chara;
}

function pm(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Usefulness";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Perceived Usefulness and Operability";
	}
    document.getElementById("pm_output_id").innerHTML = arr[val - 1] + chara;
}

function pt(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " Operability";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and Operability";
	}
    document.getElementById("pt_output_id").innerHTML = arr[val - 1] + chara;
}

function os(val) {
	var chara = "";
	if (val < 5){
		chara = " User Interface Aesthetics";
	}
	else if (val > 5){
		chara = " User Error Protection";
	}
	else{ // val == 5
		chara = " User Interface Aesthetics and User Error Protection";
	}
    document.getElementById("os_output_id").innerHTML = arr[val - 1] + chara;
}

function oc(val) {
	var chara = "";
	if (val < 5){
		chara = " Accessibility";
	}
	else if (val > 5){
		chara = " User Error Protection";
	}
	else{ // val == 5
		chara = " Accessibility and User Error Protection";
	}
    document.getElementById("oc_output_id").innerHTML = arr[val - 1] + chara;
}

function om(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Usefulness";
	}
	else if (val > 5){
		chara = " User Error Protection";
	}
	else{ // val == 5
		chara = " Perceived Usefulness and User Error Protection";
	}
    document.getElementById("om_output_id").innerHTML = arr[val - 1] + chara;
}

function ot(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " User Error Protection";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and User Error Protection";
	}
    document.getElementById("ot_output_id").innerHTML = arr[val - 1] + chara;
}

function sc(val) {
	var chara = "";
	if (val < 5){
		chara = " Accessibility";
	}
	else if (val > 5){
		chara = " User Interface Aesthetics";
	}
	else{ // val == 5
		chara = " Accessibility and User Interface Aesthetics";
	}
    document.getElementById("sc_output_id").innerHTML = arr[val - 1] + chara;
}

function sm(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Usefulness";
	}
	else if (val > 5){
		chara = " User Interface Aesthetics";
	}
	else{ // val == 5
		chara = " Perceived Usefulness and User Interface Aesthetics";
	}
    document.getElementById("sm_output_id").innerHTML = arr[val - 1] + chara;
}

function st(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " User Interface Aesthetics";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and User Interface Aesthetics";
	}
    document.getElementById("st_output_id").innerHTML = arr[val - 1] + chara;
}

function cm(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Usefulness";
	}
	else if (val > 5){
		chara = " Accessibility";
	}
	else{ // val == 5
		chara = " Perceived Usefulness and Accessibility";
	}
    document.getElementById("cm_output_id").innerHTML = arr[val - 1] + chara;
}

function ct(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " Accessibility";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and Accessibility";
	}
    document.getElementById("ct_output_id").innerHTML = arr[val - 1] + chara;
}

function mt(val) {
	var chara = "";
	if (val < 5){
		chara = " Perceived Ease of Use";
	}
	else if (val > 5){
		chara = " Perceived Usefulness";
	}
	else{ // val == 5
		chara = " Perceived Ease of Use and Perceived Usefulness";
	}
    document.getElementById("mt_output_id").innerHTML = arr[val - 1] + chara;
}

