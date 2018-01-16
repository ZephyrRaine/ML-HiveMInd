using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HiveAcademy : Academy {



    public float yVariation;

    public override void AcademyReset()
	{
        yVariation = (float)resetParameters["y_variation"];
	}

	public override void AcademyStep()
	{

    }
}
