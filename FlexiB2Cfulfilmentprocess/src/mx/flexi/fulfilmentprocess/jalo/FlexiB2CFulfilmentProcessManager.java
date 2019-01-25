/*
 * [y] hybris Platform
 *
 * Copyright (c) 2018 SAP SE or an SAP affiliate company.  All rights reserved.
 *
 * This software is the confidential and proprietary information of SAP
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with SAP.
 */
package mx.flexi.fulfilmentprocess.jalo;

import de.hybris.platform.jalo.JaloSession;
import de.hybris.platform.jalo.extension.ExtensionManager;
import mx.flexi.fulfilmentprocess.constants.FlexiB2CFulfilmentProcessConstants;

public class FlexiB2CFulfilmentProcessManager extends GeneratedFlexiB2CFulfilmentProcessManager
{
	public static final FlexiB2CFulfilmentProcessManager getInstance()
	{
		ExtensionManager em = JaloSession.getCurrentSession().getExtensionManager();
		return (FlexiB2CFulfilmentProcessManager) em.getExtension(FlexiB2CFulfilmentProcessConstants.EXTENSIONNAME);
	}
	
}
