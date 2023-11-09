extends Control

@export var enabled = true;

var format = "%10.3f"	#display up to 10 digits, with 3 digits behind comma

func _ready():
	if (enabled):
		visible = true
	else:
		visible = false

func displayHUD(transform):
	# labels for Basis and Origin
	$BasisLabel.set_text("Basis")
	$OriginLabel.set_text("Origin")
	# data
	if (transform is Transform3D):
		# Basis data
		$BasisLabel/X_X.set_text(str(format % transform.basis.x.x))
		$BasisLabel/X_Y.set_text(str(format % transform.basis.x.y))
		$BasisLabel/X_Z.set_text(str(format % transform.basis.x.z))
		$BasisLabel/Y_X.set_text(str(format % transform.basis.y.x))
		$BasisLabel/Y_Y.set_text(str(format % transform.basis.y.y))
		$BasisLabel/Y_Z.set_text(str(format % transform.basis.y.z))
		$BasisLabel/Z_X.set_text(str(format % transform.basis.z.x))
		$BasisLabel/Z_Y.set_text(str(format % transform.basis.z.y))
		$BasisLabel/Z_Z.set_text(str(format % transform.basis.z.z))
		#Origin data
		$OriginLabel/Origin_X.set_text(str(format % transform.origin.x))
		$OriginLabel/Origin_Y.set_text(str(format % transform.origin.y))
		$OriginLabel/Origin_Z.set_text(str(format % transform.origin.z))
