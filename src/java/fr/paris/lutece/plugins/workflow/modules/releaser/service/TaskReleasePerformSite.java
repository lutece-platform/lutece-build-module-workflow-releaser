package fr.paris.lutece.plugins.workflow.modules.releaser.service;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;


import fr.paris.lutece.plugins.releaser.business.WorkflowReleaseContext;
import fr.paris.lutece.plugins.releaser.service.IWorkflowReleaseContextService;
import fr.paris.lutece.plugins.workflowcore.business.resource.ResourceHistory;
import fr.paris.lutece.plugins.workflowcore.service.resource.IResourceHistoryService;
import fr.paris.lutece.plugins.workflowcore.service.task.SimpleTask;

/**
 * 
 * TaskGitCloneRepository
 *
 */
public class TaskReleasePerformSite extends  SimpleTask {

	@Inject
    private IResourceHistoryService _resourceHistoryService;
	@Inject
    private IWorkflowReleaseContextService _workflowReleaseContextService;
	
    /**
     * {@inheritDoc}
     */
    @Override
    public void processTask( int nIdResourceHistory, HttpServletRequest request, Locale locale )
    {
        ResourceHistory resourceHistory = _resourceHistoryService.findByPrimaryKey( nIdResourceHistory );
        WorkflowReleaseContext workflowReleaseContext=_workflowReleaseContextService.getWorkflowReleaseContext(resourceHistory.getIdResource());
        _workflowReleaseContextService.releasePerformSite( workflowReleaseContext, locale );
    }

    /**
    * {@inheritDoc}
    */
    @Override
    public String getTitle( Locale locale )
    {
        return StringUtils.EMPTY;
    }
	
	

}
