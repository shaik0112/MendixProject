// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.core.CoreException;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;

public class Microflows
{
	// These are the microflows for the MyFirstModule module
	public static void aCO_ADE_Registration_SetTotalNumberOfRegistrations(IContext context, myfirstmodule.proxies.Registration _registration)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Registration", _registration == null ? null : _registration.getMendixObject());
		Core.microflowCall("MyFirstModule.ACO_ADE_Registration_SetTotalNumberOfRegistrations").withParams(params).execute(context);
	}
	public static void aCT_Course_ScheduleTrainingEvent(IContext context, myfirstmodule.proxies.Course _course)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Course", _course == null ? null : _course.getMendixObject());
		Core.microflowCall("MyFirstModule.ACT_Course_ScheduleTrainingEvent").withParams(params).execute(context);
	}
	public static void aCT_Registration_SetToAttended(IContext context, myfirstmodule.proxies.Registration _registration)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Registration", _registration == null ? null : _registration.getMendixObject());
		Core.microflowCall("MyFirstModule.ACT_Registration_SetToAttended").withParams(params).execute(context);
	}
	public static void aCT_Registration_SetToUnattended(IContext context, myfirstmodule.proxies.Registration _registration)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Registration", _registration == null ? null : _registration.getMendixObject());
		Core.microflowCall("MyFirstModule.ACT_Registration_SetToUnattended").withParams(params).execute(context);
	}
	public static void aCT_TrainingEvent_Save(IContext context, myfirstmodule.proxies.TrainingEvent _trainingEvent)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("TrainingEvent", _trainingEvent == null ? null : _trainingEvent.getMendixObject());
		Core.microflowCall("MyFirstModule.ACT_TrainingEvent_Save").withParams(params).execute(context);
	}
	public static void oCH_TrainingEvent_CalculateEndDate(IContext context, myfirstmodule.proxies.TrainingEvent _trainingEvent)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("TrainingEvent", _trainingEvent == null ? null : _trainingEvent.getMendixObject());
		Core.microflowCall("MyFirstModule.OCH_TrainingEvent_CalculateEndDate").withParams(params).execute(context);
	}
}